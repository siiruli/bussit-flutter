import 'package:bussit/api/map_api.dart';
import 'package:bussit/model/map_elements.dart';
import 'package:bussit/ui/widgets/map/layers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; 
import 'package:latlong2/latlong.dart';
import 'package:google_polyline_algorithm/google_polyline_algorithm.dart';
import 'package:collection/collection.dart';


class MapView extends StatefulWidget {
  const MapView({this.layers, this.showBikeRental, super.key});
  final List<Widget>? layers;
  final bool? showBikeRental;
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

    List<Widget?> layers = [
      background, 
      (widget.showBikeRental == true ? const BikeRentalLayer() : null),
    ];
    layers.addAll(widget.layers ?? []);

    final map = FlutterMap(
        options: MapOptions(
          minZoom: 5,
          maxZoom: 20,
          center: LatLng(60.16, 24.93),
        ),
        children: layers.whereNotNull().toList(),
        nonRotatedChildren: const [],

    );
    return map;
  }
}