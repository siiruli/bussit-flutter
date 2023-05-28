import 'package:bussit/api/endpoints.dart' as endpoints;

String getBackgroundUrl() {
  return endpoints.mapBackground +
      endpoints.toParameterString(endpoints.apiKeyHeader);
}

String getStopsUrl() {
  return endpoints.mapPointsOfInterest +
      endpoints.toParameterString(endpoints.apiKeyHeader);
}
