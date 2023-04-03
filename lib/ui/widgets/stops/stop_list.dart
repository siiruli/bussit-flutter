import 'package:bussit/graphql/stops_query.graphql.dart';
import 'package:bussit/ui/widgets/stops/stop_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/data/hsl_api.dart';
import 'dart:developer' as developer;

// Widget showin a list of stops
class StopListWidget extends HookWidget {
  const StopListWidget({this.ids, this.searchName, this.maxResults, Key? key}) : super(key: key);
  final List<String>? ids;
  final String? searchName;
  final int? maxResults;
  @override 
  Widget build(BuildContext context) {

    final result = useQuery$StopData(
      Options$Query$StopData(
        // fetchResults: true,
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        variables: Variables$Query$StopData(
          ids: ids?.toList(),
          name: searchName,
          maxResults: (searchName == '') ? 0 : maxResults,
        ),
        pollInterval: const Duration(seconds: 5),
      )
    );
    return stopListBuilder(result.result);
  }
}
// Build a stop list from a query result
Widget stopListBuilder(QueryResult? result, { VoidCallback? refetch, FetchMore? fetchMore }){
  if(result == null){
    return const Text("No result...");
  }
  if (result.hasException) {
    return Text(result.exception.toString());
  }

  if (result.isLoading) {
    return const Text('Loading...');
  }
  List<dynamic>? stops = convertStopQueryResult(result);
  if(stops == null || stops.isEmpty){
    developer.log('zero stops: ' + stops.toString(), name: 'my.app.category');
    
    return const Text('No stops');
  }

  
  return ListView.builder(
    shrinkWrap: true,
    itemCount: stops.length,
    itemBuilder: (context, index) {
      return StopItemWidget(stops[index]);
    },
  );
  
}

