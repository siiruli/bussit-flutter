import 'package:bussit/api/secrets.dart';

const String routingApi = 
  "https://api.digitransit.fi/routing/v1/routers/hsl/index/graphql";

const String locationApi = 
  'http://api.digitransit.fi/geocoding/v1/autocomplete';

const String mapBackground = 
  'https://cdn.digitransit.fi/map/v2/hsl-map/{z}/{x}/{y}.png';
  // 'https://cdn.digitransit.fi/map/v2/hsl-map/16/37313/18958.png';
  // 'https://cdn.digitransit.fi/map/v2/:hsl-map/:{z}/:{x}/:{y}.png';

const String mapPointsOfInterest = 
  'https://cdn.digitransit.fi/map/v2/hsl-stop-map/{z}/{x}/{y}.pbf';

const String mapStyles = 'https://raw.githubusercontent.com/HSLdevcom/hsl-map-style/master/style.json';

  // 'https://cdn.digitransit.fi/map/v2/:source/:z/:x/:y.pbf';


const apiKeyHeader = <String,String>{
  // The api key should be defined in secrets.dart
  'digitransit-subscription-key':hslApiKey,
};

String toParameterString(Map<String, String> params){
  List<String> plist = [];
  params.forEach((key, value) {plist.add("$key=$value");});
  return '?' + plist.join('&');
}