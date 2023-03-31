import 'package:bussit/graphql/stops_query.graphql.dart';
import 'package:bussit/ui/widgets/stop_item.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/data/hsl_api.dart';
import 'dart:developer' as developer;

// Widget showin a list of stops
class StopListWidget extends StatelessWidget {
  const StopListWidget({this.ids, this.searchName, Key? key}) : super(key: key);
  final List<String>? ids;
  final String? searchName;

  @override 
  Widget build(BuildContext context) {
    return Query$StopData$Widget(
      options: Options$Query$StopData(
        variables: Variables$Query$StopData(
          ids: ids?.toList(),
          name: searchName,
        )
      ),
      builder: stopListBuilder,
    );
  }
}
// Build a stop list from a query result
Widget stopListBuilder(QueryResult result, { VoidCallback? refetch, FetchMore? fetchMore }){
    
  if (result.hasException) {
    return Text(result.exception.toString());
  }

  if (result.isLoading) {
    return const Text('Loading...');
  }
  List<Query$StopData$stops?>? stops = convertStopQueryResult(result);
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

