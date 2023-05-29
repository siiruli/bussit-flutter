import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:bussit/ui/widgets/components/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_polyline_algorithm/google_polyline_algorithm.dart';
import 'package:latlong2/latlong.dart';
import 'package:collection/collection.dart';
import '../ui/widgets/map/layers.dart';

class MapLine {
  final Color color;
  final List<LatLng> polyline;

  MapLine(Query$Itinerary$plan$itineraries$legs? leg)
      : color = TransitMode(leg?.mode, rentedBike: leg?.rentedBike).color,
        polyline = decodePolyline(leg?.legGeometry?.points ?? '')
            .map((e) => LatLng(e[0].toDouble(), e[1].toDouble()))
            .toList();
}

List<Marker> markersFromLegs(
    List<Query$Itinerary$plan$itineraries$legs?> legs) {
  List<Marker> intermediateStops = legs
      .expand((Query$Itinerary$plan$itineraries$legs? leg) {
        return leg?.intermediatePlaces
                ?.map((place) => placeMarker(place, size: 8)) ??
            List<Marker>.empty();
      })
      .whereNotNull()
      .toList();
  List<Marker> stops = legs
      .expand(
          (leg) => [leg?.from, leg?.to].map((e) => placeMarker(e, size: 16)))
      .whereNotNull()
      .toList();

  stops.addAll(intermediateStops);
  // Filter duplicates
  Set keys = {};
  stops.retainWhere((x) => keys.add(x.key));

  return stops;
}
