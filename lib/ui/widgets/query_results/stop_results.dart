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
  const StopQueryResults(
      {this.ids, this.searchName, this.pollInterval, Key? key})
      : super(key: key);
  final List<String>? ids;
  final String? searchName;
  final Duration? pollInterval;
  @override
  Widget build(BuildContext context) {
    final fetchResults =
        (searchName ?? "").length > 2 || (ids ?? []).isNotEmpty;

    final result = useQueryLifecycleAware(
      Options$Query$StopData(
        // fetchResults: true,
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        variables: Variables$Query$StopData(
          ids: ids?.toList(),
          name: searchName,
        ),
        pollInterval: pollInterval,
      ),
      fetchResults: fetchResults,
    );

    final maxItems = ids?.length ?? 10;
    return GraphQLQueryResult(
      resultBuilder: (result) => stopListBuilder(result, maxItems),
      result: result.result,
    );
  }
}

// Build a stop list from a query result
Widget stopListBuilder(Map<String, dynamic> result, int maxItems) {
  final data = Query$StopData.fromJson(result);
  List<dynamic> stops = (List<dynamic>.empty() +
          (data.stations?.take(maxItems).toList() ?? List<dynamic>.empty()) +
          (data.stops?.take(maxItems).toList() ?? List<dynamic>.empty()))
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
