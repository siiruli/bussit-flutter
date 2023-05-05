
import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:flutter/material.dart';
import 'package:google_polyline_algorithm/google_polyline_algorithm.dart';
import 'package:latlong2/latlong.dart';

class MapLine {
  late Color color;
  late List<LatLng> polyline;
  
  MapLine(Query$Itinerary$plan$itineraries$legs? leg)
  {
    polyline = decodePolyline(leg?.legGeometry?.points ?? '').map(
      (e) => LatLng(e[0].toDouble(), e[1].toDouble())
    ).toList();
    color = Colors.black;
  }
}