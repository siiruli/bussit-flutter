import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/graphql/stops_query.graphql.dart';
import 'dart:developer' as developer;

// Get the api client for GraphQlProvider
getHslApiClient(){
  const endPoint = "https://api.digitransit.fi/routing/v1/routers/hsl/index/graphql";
  final httpLink = HttpLink(endPoint);
  
  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
        cache: GraphQLCache(),
        link: httpLink
    )
  );
  return client;
}

// Get an options object for a stop query
stopQueryOptions({List<String>? ids, name, maxResults}) {
  const String query = """
query StopData(\$ids: [String], \$name: String, \$maxResults: Int){
  stops(ids: \$ids, name: \$name, maxResults: \$maxResults) {
    name
    gtfsId
    code
  }
}
""";
  developer.log('ID list: ' + ids.toString(), name: 'my.app.category');
  final opts = QueryOptions(
    document: gql(query),
    variables: {
      'name': name,
      'maxResults': maxResults,
      'ids': ids,
    },
  );
  return opts;
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