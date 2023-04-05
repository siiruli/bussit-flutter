import 'dart:js_util';

import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:bussit/model/address.dart';
import 'package:bussit/ui/widgets/routes/itinerary_item.dart';
import 'package:bussit/ui/widgets/stops/stop_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/api/hsl_api.dart';
import 'dart:developer' as developer;

String toPlaceString(Address address){
  final name = address.properties.label;
  final coor = address.geometry;
  final res = '$name::${coor.lat},${coor.lon}';
  developer.log(res);
  return res;
}

// Widget showin a list of stops
class ItineraryListWidget extends HookWidget {
  const ItineraryListWidget({required this.from, required this.to, this.nResults, Key? key}) : super(key: key);
  final Address from;
  final Address to;
  final int? nResults;
  @override 
  Widget build(BuildContext context) {
    final result = useQuery$Itinerary(
      Options$Query$Itinerary(
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        variables: Variables$Query$Itinerary(
          fromPlace: toPlaceString(from),
          toPlace: toPlaceString(to),
          nResults: nResults,
        ),
      ),
    );

    return itineraryListBuilder(result.result);
  }
}
// Build a stop list from a query result
Widget itineraryListBuilder(QueryResult? result, { VoidCallback? refetch, FetchMore? fetchMore }){
  if(result == null){
    return const Text("No result...");
  }
  if (result.hasException) {
    return Text(result.exception.toString());
  }

  if (result.isLoading) {
    return const Text('Loading...');
  }
  List<Query$Itinerary$plan$itineraries?>? list;

  if(result.data != null){
    list = Query$Itinerary.fromJson(result.data!).plan?.itineraries;
  }
  else{
    return const Text("List is null :(");
  }
  list ??= [];
  
  return Column(
    children: list.map((e) => ItineraryWidget(itinerary: e)).toList(),
  );
  
}
