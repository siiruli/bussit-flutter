import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'endpoints.dart' as endpoints;

// Get the api client for GraphQlProvider
getHslApiClient() {
  const endPoint = endpoints.routingApi;
  final httpLink = HttpLink(
    endPoint,
    defaultHeaders: endpoints.apiKeyHeader,
  );

  ValueNotifier<GraphQLClient> client =
      ValueNotifier(GraphQLClient(cache: GraphQLCache(), link: httpLink));
  return client;
}
