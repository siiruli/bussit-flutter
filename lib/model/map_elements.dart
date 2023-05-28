import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:bussit/ui/widgets/components/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_polyline_algorithm/google_polyline_algorithm.dart';
import 'package:latlong2/latlong.dart';

class MapLine {
  final Color color;
  final List<LatLng> polyline;

  MapLine(Query$Itinerary$plan$itineraries$legs? leg)
      : color = TransitMode(leg?.mode).color,
        polyline = decodePolyline(leg?.legGeometry?.points ?? '')
            .map((e) => LatLng(e[0].toDouble(), e[1].toDouble()))
            .toList();
}

class MapPoint {
  final Color color;
  final LatLng point;

  MapPoint(this.color, lat, lon)
      : point = LatLng(lat.toDouble(), lon.toDouble());
}

MapPoint? mapPointFromStop(
    Query$Itinerary$plan$itineraries$legs$intermediateStops? stop) {
  if (stop?.lat != null && stop?.lon != null) {
    return MapPoint(TransitMode(stop!.vehicleMode).color, stop.lat, stop.lon);
  } else {
    return null;
  }
}
