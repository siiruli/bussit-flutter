import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/graphql/stops_query.graphql.dart';
import 'endpoints.dart' as endpoints;
// Get the api client for GraphQlProvider
getHslApiClient(){
  const endPoint = endpoints.routingApi;
  final httpLink = HttpLink(
    endPoint,
    defaultHeaders: endpoints.apiKeyHeader,
  );
  
  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
        cache: GraphQLCache(),
        link: httpLink

    )
  );
  return client;
}


// Convert a stop query result into a list of Stops
List<dynamic>? convertStopQueryResult(QueryResult result){
  if(result.data == null){
    return null;
  }
  
  final data =  Query$StopData.fromJson(result.data!);

  // developer.log('Data: ' + result.data.toString(), name: 'my.app.category');
  List res = [];
  if(data.stations != null) {
    res += data.stations!;
  }
  if(data.stops != null) {
    res += data.stops!;
  }
  return res.where((element) => element != null).toList();
}