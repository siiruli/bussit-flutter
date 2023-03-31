import 'package:bussit/graphql/stops_query.graphql.dart';
import 'package:bussit/model/saved_stops.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/data/hsl_api.dart';
import 'package:provider/provider.dart';
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


Widget stopItemBuilder(Query$StopData$stops? stop){

  if(stop == null){
    return const Text("Stop is null");
  }
  const saveIcon = Icon(Icons.save_alt);
  const deleteIcon = Icon(Icons.delete_forever);


  final iconButton = Consumer<SavedStopIds>(
    builder: (context, savedIds, child) {
      if(savedIds.isSaved(stop.gtfsId)){
        return IconButton(
          onPressed: () => savedIds.remove(stop.gtfsId), 
          icon: deleteIcon,
        );
      }
      else{
        return IconButton(
          onPressed: () => savedIds.add(stop.gtfsId), 
          icon: saveIcon,
        );
      }
    }
  );

  return Card(
    child: ListTile(
      title: Text(stop.name),
      subtitle: stop.code == null ? null : Text(stop.code!),
      trailing: iconButton,
    )
  );
}
// Build a stop list from a query result
Widget stopListBuilder(QueryResult result, { VoidCallback? refetch, FetchMore? fetchMore }){
  developer.log('Query result: ' + result.toString(), name: 'my.app.category');
  final tmp = result.data?['stops'];
  developer.log('Query data: ' + tmp.toString(), name: 'my.app.category');
  
  
  
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
      return stopItemBuilder(stops[index]);
    },
  );
  
}

