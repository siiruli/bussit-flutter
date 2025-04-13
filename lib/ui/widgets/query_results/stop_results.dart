import 'package:bussit/graphql/stops_query.graphql.dart';
import 'package:bussit/ui/widgets/components/graphql_query_result.dart';
import 'package:bussit/ui/widgets/list_items/stop_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/utils/graphql_hooks.dart';
import 'package:collection/collection.dart';
import 'dart:developer' as developer;

/// Widget showing a list of stops
class StopQueryResults extends HookWidget {
  /// Query stops and show the results
  const StopQueryResults({this.ids, this.searchName, Key? key})
      : super(key: key);
  final List<String>? ids;
  final String? searchName;
  @override
  Widget build(BuildContext context) {
    final result = useQueryLifecycleAware(Options$Query$StopData(
      // fetchResults: true,
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      variables: Variables$Query$StopData(
        ids: ids?.toList(),
        name: searchName,
      ),
      pollInterval: const Duration(seconds: 5),
    ));
    return GraphQLQueryResult(
      resultBuilder: stopListBuilder,
      result: result.result,
    );
  }
}

// Build a stop list from a query result
Widget stopListBuilder(Map<String, dynamic> result) {
  final data = Query$StopData.fromJson(result);
  List<dynamic> stops = (List<dynamic>.empty() +
          (data.stations ?? List<dynamic>.empty()) +
          (data.stops ?? List<dynamic>.empty()))
      .whereNotNull()
      .toList();

  if (stops.isEmpty) {
    developer.log('zero stops: ' + stops.toString(), name: 'my.app.category');

    return const Text('No stops');
  }

  return ListView.builder(
    shrinkWrap: true,
    itemCount: stops.length,
    itemBuilder: (context, index) {
      return ExpansionStopItem(stops[index]);
    },
  );
}
