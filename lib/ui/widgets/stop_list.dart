import 'dart:js';

import 'package:bussit/model/saved_stops.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/data/hsl_api.dart';
import 'package:bussit/model/stop_model.dart';
import 'package:provider/provider.dart';

// Widget showin a list of stops
class StopListWidget extends StatelessWidget {
  const StopListWidget({this.ids, this.searchName, Key? key}) : super(key: key);
  final List<String>? ids;
  final String? searchName;

  @override 
  Widget build(BuildContext context) {
    final opts = stopQueryOptions(ids: ids, name: searchName);
    return Query(options: opts, builder: stopListBuilder); 
  }
}
// Build one item of a stop list
Widget stopItemBuilder(Stop stop){
  const saveIcon = Icon(Icons.save_alt);
  const deleteIcon = Icon(Icons.delete_forever);


  final iconButton = Consumer<SavedStopIds>(
    builder: (context, savedIds, child) {
      if(savedIds.isSaved(stop.id)){
        return IconButton(
          onPressed: () => savedIds.remove(stop.id), 
          icon: deleteIcon,
        );
      }
      else{
        return IconButton(
          onPressed: () => savedIds.add(stop.id), 
          icon: saveIcon,
        );
      }
    }
  );

  return Card(
    child: ListTile(
      title: Text(stop.name),
      subtitle: Text(stop.code),
      trailing: iconButton,
    )
  );
}
// Build a stop list from a query result
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
    shrinkWrap: true,
    itemCount: stops.length,
    itemBuilder: (context, index) {
      return stopItemBuilder(stops[index]);
    },
  );
  
}

