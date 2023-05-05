import 'package:bussit/api/map_api.dart';
import 'package:bussit/model/map_elements.dart';
import 'package:bussit/ui/widgets/map/layers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; 
import 'package:latlong2/latlong.dart';
import 'package:google_polyline_algorithm/google_polyline_algorithm.dart';


class MapView extends StatefulWidget {
  const MapView({this.lines, this.points, super.key});
  final List<MapLine>? lines;
  final List<MapPoint>? points;
  // final mapController = MapController();
  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {



  @override
  Widget build(BuildContext context){
    final background = TileLayer(
      urlTemplate: getBackgroundUrl(),
      userAgentPackageName: 'com.example.bussit',
      maxNativeZoom: 16,
    );

    List<Widget> layers = [
      background, 
      polylineLayer(widget.lines),
      pointLayer(widget.points),
    ];

    final map = FlutterMap(
        mapController: null,
        options: MapOptions(
          center: LatLng(60.16, 24.93),
        ),
        children: layers,
        nonRotatedChildren: const [],
    );
    return map;
  }
}