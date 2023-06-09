import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:bussit/graphql/schema.graphql.dart';
import 'package:bussit/model/address.dart';
import 'package:bussit/ui/widgets/itineraries/itinerary_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/utils/graphql_hooks.dart';
import 'dart:developer' as developer;
import 'package:intl/intl.dart';
import '../../../graphql/trip_query.graphql.dart';

class ItineraryVariables extends HookWidget {
  ItineraryVariables({
    required this.from,
    required this.to,
    this.nResults,
    this.time,
    this.arriveBy,
    this.transportModes,
    this.allowBikeRental,
  }) : super(key: UniqueKey());
  final Address from;
  final Address to;
  final int? nResults;
  final DateTime? time;
  final bool? arriveBy;
  final List<Input$TransportMode>? transportModes;
  final bool? allowBikeRental;

  @override
  Widget build(BuildContext context) {
    if (time != null) {
      developer.log(DateFormat('y-MM-dd').format(time!));
      developer.log(DateFormat('HH:mm:ss').format(time!));
    }
    // Walking itineraries appear only if all other modes are disabled
    // Add ferry if something else is allowed as well
    if (transportModes?.isEmpty != true) {
      // add ferry
      transportModes?.add(
        Input$TransportMode(mode: Enum$Mode.FERRY),
      );
    }
    // For some reason, walking has to be off to get bicycle routes,
    // so add walking only if bicycling is not allowed
    bool usebike = transportModes
            ?.contains(Input$TransportMode(mode: Enum$Mode.BICYCLE)) ==
        true;
    if (!usebike) {
      transportModes?.add(Input$TransportMode(mode: Enum$Mode.WALK));
    }
    // Set easy variables
    Variables$Query$Itinerary variables = Variables$Query$Itinerary(
      nResults: nResults,
      arriveBy: arriveBy,
      allowBikeRental: allowBikeRental,
      modes: transportModes,
      maxWalkDistance:
          (usebike == true || allowBikeRental == true) ? 15000 : 2000,
    );
    // Set from, to, and time (hook needed in case from is a trip)
    variables = useItineraryVariables(variables, from, to, time);
    return ItineraryResults(variables: variables);
  }
}

/// Widget showing a list of stops
class ItineraryResults extends HookWidget {
  const ItineraryResults({required this.variables, super.key});
  final Variables$Query$Itinerary variables;
  @override
  Widget build(BuildContext context) {
    final result = useQueryLifecycleAware(Options$Query$Itinerary(
      fetchPolicy: FetchPolicy.networkOnly,
      variables: variables,
    ));

    return itineraryListBuilder(result.result);
  }
}

// Build a stop list from a query result
Widget itineraryListBuilder(QueryResult? result,
    {VoidCallback? refetch, FetchMore? fetchMore}) {
  if (result == null) {
    return const Text("No result...");
  }
  if (result.hasException) {
    return Text(result.exception.toString());
  }

  if (result.isLoading) {
    return const Text('Loading...');
  }
  List<Query$Itinerary$plan$itineraries?>? list;

  if (result.data != null) {
    list = Query$Itinerary.fromJson(result.data!).plan?.itineraries;
  } else {
    return const Text("List is null :(");
  }
  list ??= [];

  return Column(
    children: list.map((e) => ItineraryWidget(itinerary: e)).toList(),
  );
}

/// A hook to get relevant variables from start and end locations
useItineraryVariables(Variables$Query$Itinerary variables, Address from,
    Address to, DateTime? time) {
  Map<String, dynamic> data = variables.toJson();
  data["fromPlace"] = from.toPlaceString();
  data["toPlace"] = to.toPlaceString();

  final options = Options$Query$Trip(
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      variables: Variables$Query$Trip(gtfsId: from.id));

  final result = useQueryLifecycleAware(options,
      fetchResults: from.type == AddressType.trip);

  if (from.type == AddressType.trip) {
    developer.log("Querying trip id: " + from.id);

    developer.log("query result: " + result.result.toString());
    if (result.result.hasException) {
      throw result.result.exception!;
    }

    Query$Trip$trip? trip;

    if (result.result.data != null) {
      trip = Query$Trip.fromJson(result.result.data!).trip;
      developer.log("Trip: " + trip.toString());

      // given departure time
      time = time ?? DateTime.now();
      developer.log("Current time: " + time.toString());
      // find last stop before departure time
      final Query$Trip$trip$stoptimes? firstStopTime =
          trip?.stoptimes?.firstWhere((stoptime) {
                final arrivalTime = from.serviceDate?.add(
                        Duration(seconds: stoptime?.realtimeArrival ?? 0)) ??
                    DateTime.fromMillisecondsSinceEpoch(0);
                developer.log((stoptime?.stop?.name ?? "null") +
                    " " +
                    arrivalTime.toString());
                return arrivalTime.isAfter(time!);
              }) ??
              (trip?.stoptimes?.isEmpty == true ? null : trip?.stoptimes?.last);

      final address = Address.fromStop(firstStopTime?.stop);

      data["startTransitTripId"] = trip?.gtfsId;
      data["from"] = Input$InputCoordinates(
              lat: address.lat, lon: address.lon, address: address.label)
          .toJson();
      // new departure time matching the stop
      time = from.serviceDate
              ?.add(Duration(seconds: firstStopTime?.realtimeArrival ?? 0)) ??
          DateTime.now();
      developer.log("Stop: " + (firstStopTime?.stop?.name ?? "null"));
    }
  }

  data["date"] = itineraryDateFormat(time);
  data["time"] = itineraryTimeFormat(time);

  return Variables$Query$Itinerary.fromJson(data);
}

String? itineraryDateFormat(DateTime? date) =>
    date == null ? null : DateFormat('y-MM-dd').format(date);

String? itineraryTimeFormat(DateTime? time) =>
    time == null ? null : DateFormat('HH:mm:ss').format(time);
