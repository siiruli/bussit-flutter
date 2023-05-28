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

// Place parameter for the query
String toPlaceString(Address address) {
  final name = address.label;
  final res = '$name::${address.lat},${address.lon}';
  developer.log(res);
  return res;
}

// Widget showin a list of stops
class ItineraryListWidget extends HookWidget {
  const ItineraryListWidget({
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

    final result = useQueryLifecycleAware(
      Options$Query$Itinerary(
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        variables: Variables$Query$Itinerary(
          fromPlace: toPlaceString(from),
          toPlace: toPlaceString(to),
          nResults: nResults,
          date: time == null ? null : DateFormat('y-MM-dd').format(time!),
          time: time == null ? null : DateFormat('HH:mm:ss').format(time!),
          arriveBy: arriveBy,
          allowBikeRental: allowBikeRental,
          modes: modes,
          maxWalkDistance:
              (usebike == true || allowBikeRental == true) ? 15000 : 2000,
        ),
      ),
    );

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
