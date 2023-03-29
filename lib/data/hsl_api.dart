import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:bussit/model/stop_model.dart';

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

stopQueryOptions({ids, name, maxResults}) {
  const String query = """
query StopData(\$ids: [String], \$name: String, \$maxResults: Int){
  stops(ids: \$ids, name: \$name, maxResults: \$maxResults) {
    name
    gtfsId
    code
  }
}
""";

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

Stop convertToStop(stop){
  return Stop(stop['code'], stop['name']);
}

List<Stop>? convertStopQueryResult(QueryResult result){

  List? stops = result.data?['stops'];

  if (stops == null) {
    return null;
  }

  List<Stop> stopList = stops.map(convertToStop).toList();

  return stopList;
}