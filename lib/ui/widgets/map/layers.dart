
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:google_polyline_algorithm/google_polyline_algorithm.dart';
import 'package:latlong2/latlong.dart';

PolylineLayer polylineLayer(List<String>? lines){
    List<List<LatLng>>? linePoints = lines?.map((String e){
      final points = decodePolyline(e);
      return points.map((e) => LatLng(e[0].toDouble(), e[1].toDouble())).toList();
    }).toList();

    final layer = PolylineLayer(
      polylines: linePoints?.map((e) => 
        Polyline(
          points: e, 
          color: Colors.blue,
          strokeWidth: 2.0,
        ),
      ).toList() ?? [],
    );

    return layer;
}