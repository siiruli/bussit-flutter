import 'package:bussit/api/secrets.dart';

const String routingApi = 
  "https://api.digitransit.fi/routing/v1/routers/hsl/index/graphql";

const String locationApi = 
  'http://api.digitransit.fi/geocoding/v1/autocomplete';

const String mapBackground = 
  'https://cdn.digitransit.fi/map/v2/:source/:z/:x/:y:size.png';

const String mapPointsOfInterest = 
  'https://cdn.digitransit.fi/map/v2/:source/:z/:x/:y.pbf';


const apiKeyHeader = <String,String>{
  // The api key should be defined in secrets.dart
  'digitransit-subscription-key':hslApiKey,
};