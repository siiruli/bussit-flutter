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
  const ItineraryVariables({
    required this.from,
    required this.to,
    this.nResults,
    this.time,
    this.arriveBy,
    super.key,
    this.transportModes,
    this.allowBikeRental,
  });
  final Address from;
  final Address to;
  final int? nResults;
  final DateTime? time;
  final bool? arriveBy;
  final List<dynamic>? transportModes;
  final bool? allowBikeRental;

  @override
  Widget build(BuildContext context) {
    if (time != null) {
      developer.log(DateFormat('y-MM-dd').format(time!));
      developer.log(DateFormat('HH:mm:ss').format(time!));
    }
    List<Input$TransportMode>? modes = transportModes?.map((e) {
      if (e is List<dynamic>) {
        return Input$TransportMode(mode: e[0], qualifier: e[1]);
      } else {
        return Input$TransportMode(mode: e);
      }
    }).toList();

    // add ferry
    modes?.add(
      Input$TransportMode(mode: Enum$Mode.FERRY),
    );
    bool usebike = transportModes?.contains(Enum$Mode.BICYCLE) == true;
    // For some reason, walking has to be off to get bicycle routes
    if (!usebike) {
      modes?.add(Input$TransportMode(mode: Enum$Mode.WALK));
    }

    Variables$Query$Itinerary variables = Variables$Query$Itinerary(
      nResults: nResults,
      arriveBy: arriveBy,
      allowBikeRental: allowBikeRental,
      modes: modes,
      maxWalkDistance:
          (usebike == true || allowBikeRental == true) ? 15000 : 2000,
    );
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
      fetchPolicy: FetchPolicy.cacheAndNetwork,
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

  if (from.type == AddressType.trip) {
    final result = useQueryLifecycleAware(options);

    developer.log("query result: " + result.result.toString());
    if (result.result.hasException) {
      throw result.result.exception!;
    }

    Query$Trip$trip? trip;
    developer.log("Trip data: " + result.result.data.toString());

    if (result.result.data != null) {
      trip = Query$Trip.fromJson(result.result.data!).trip;
      developer.log("Trip: " + trip.toString());
      developer.log("Stoptimes: " +
          (trip?.stoptimes
                  ?.map((e) => e?.stop?.name ?? "null")
                  .toList()
                  .join(", ") ??
              "null"));

      int idx = trip?.stoptimes?.lastIndexWhere((stoptime) {
            final time = from.serviceDate
                    ?.add(Duration(seconds: stoptime?.realtimeArrival ?? 0)) ??
                DateTime.now();
            developer
                .log((stoptime?.stop?.name ?? "null") + " " + time.toString());
            return time.isBefore(DateTime.now());
          }) ??
          0;
      if (idx < 0) {
        idx = 0;
      }
      final Query$Trip$trip$stoptimes? lastStopTime = trip?.stoptimes?[idx];
      final address = Address.fromStop(lastStopTime?.stop);

      data["startTransitTripId"] = trip?.gtfsId;
      data["from"] = Input$InputCoordinates(
              lat: address.lat, lon: address.lon, address: address.label)
          .toJson();

      time = from.serviceDate
              ?.add(Duration(seconds: lastStopTime?.realtimeArrival ?? 0)) ??
          DateTime.now();

      developer.log("Stop: " + (lastStopTime?.stop?.name ?? "null"));
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
