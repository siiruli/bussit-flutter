import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/data/hsl_api.dart';
import 'package:bussit/model/stop_model.dart';

class StopListWidget extends StatelessWidget {
  const StopListWidget({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    final opts = stopQueryOptions(name: "");
    return Query(options: opts, builder: stopListBuilder); 
  }
}

Widget stopItemBuilder(Stop stop){
  return Card(
    child: ListTile(
      title: Text(stop.name),
      subtitle: Text(stop.id),
    )
  );
}

Widget stopListBuilder(QueryResult result, { VoidCallback? refetch, FetchMore? fetchMore }){
  if (result.hasException) {
    return Text(result.exception.toString());
  }

  if (result.isLoading) {
    return const Text('Loading');
  }

  List<Stop>? stops = convertStopQueryResult(result);
  if(stops == null){
    return const Text('No stops');
  }

  return ListView.builder(
    itemCount: stops.length,
    itemBuilder: (context, index) {
      return stopItemBuilder(stops[index]);
    },
  );
  
}

