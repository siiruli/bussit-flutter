
import 'package:bussit/model/map_elements.dart';
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

MarkerLayer pointLayer(List<MapPoint>? points){
  return MarkerLayer(
    markers: points?.map((e) => 
      Marker(
        point: e.point,
        width: 10,
        height: 10,
        builder: (BuildContext context) => CircleAvatar(
          backgroundColor: e.color,
        ),
      ),
    ).toList() ?? [],
  );
}