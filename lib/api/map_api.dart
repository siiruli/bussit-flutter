import 'dart:convert';
import 'package:bussit/api/endpoints.dart' as endpoints;
import 'package:flutter/services.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';

String getBackgroundUrl(){
  return endpoints.mapBackground + endpoints.toParameterString(endpoints.apiKeyHeader);  
}

String getStopsUrl(){
  return endpoints.mapPointsOfInterest + endpoints.toParameterString(endpoints.apiKeyHeader);  

}


