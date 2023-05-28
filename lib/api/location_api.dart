import 'dart:convert';
import 'package:bussit/model/address.dart';
import 'package:http/http.dart' as http;
import 'endpoints.dart' as endpoints;

Future<http.Response> getRequest(Map<String, String> params) async {
  List<String> plist = [];
  params.forEach((key, value) {
    plist.add("$key=$value");
  });

  return http.get(
    Uri.parse(endpoints.locationApi + '?' + plist.join('&')),
    headers: endpoints.apiKeyHeader,
  );
}

Future<Iterable<Address>> fetchAutocomplete(String text) async {
  List<String> lat = ['59.9', '60.45'];
  List<String> lon = ['24.3', '25.5'];
  final response = await getRequest({
    'text': text,
    'boundary.rect.min_lat': lat[0],
    'boundary.rect.max_lat': lat[1],
    'boundary.rect.min_lon': lon[0],
    'boundary.rect.max_lon': lon[1],
  });
  if (response.statusCode == 200) {
    final AutoComplete data = AutoComplete.fromJson(jsonDecode(response.body));
    return data.features;
  }
  return List<Address>.empty();
}
