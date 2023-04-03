import 'package:bussit/auth/secrets.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/graphql/stops_query.graphql.dart';
import 'dart:developer' as developer;

// Get the api client for GraphQlProvider
getHslApiClient(){
  const endPoint = "https://api.digitransit.fi/routing/v1/routers/hsl/index/graphql";
  final httpLink = HttpLink(
    endPoint,
    defaultHeaders: <String,String>{
      // The api key should be defined in auth/secrets.dart
      'digitransit-subscription-key':hslApiKey,
    }
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
List<Query$StopData$stops?>? convertStopQueryResult(QueryResult result){
  if(result.data == null){
    return null;
  }
  
  final data =  Query$StopData.fromJson(result.data!).stops;
  developer.log('Data: ' + result.data.toString(), name: 'my.app.category');

  return data;
}