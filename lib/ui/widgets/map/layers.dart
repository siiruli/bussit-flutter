
import 'package:bussit/model/map_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';

PolylineLayer polylineLayer(List<MapLine>? lines){
    final layer = PolylineLayer(
      polylines: lines?.map((e) => 
        Polyline(
          points: e.polyline, 
          color: e.color,
          strokeWidth: 2.0,
        ),
      ).toList() ?? [],
    );

    return layer;
}