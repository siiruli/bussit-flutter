import 'package:bussit/api/map_api.dart';
import 'package:bussit/ui/widgets/map/layers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:collection/collection.dart';


class MapWidget extends StatefulWidget {
  const MapWidget({
    this.layers, this.showBikeRental, this.bounds,
    super.key
  });
  final List<Widget>? layers;
  final bool? showBikeRental;
  final LatLngBounds? bounds;
  // final mapController = MapController();
  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {

  Widget? _locationLayer;

  @override
  void initState() {
    super.initState();
    Geolocator.isLocationServiceEnabled().then((value){
      if(value == true) {
        setState(() {
        _locationLayer = CurrentLocationLayer();
        });
      }
    });
  }

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
      _locationLayer,
    ];

    layers.addAll(widget.layers ?? []);

    final map = FlutterMap(
        options: MapOptions(
          minZoom: 5,
          maxZoom: 20,
          bounds: widget.bounds,
          boundsOptions: const FitBoundsOptions(
            padding: EdgeInsets.all(32),
          ),
          center: LatLng(60.16, 24.93),
          // better zoom and rotation:
          enableMultiFingerGestureRace: true,
          rotationWinGestures: MultiFingerGesture.all,
          rotationThreshold: 10,
        ),
        children: layers.whereNotNull().toList(),
        nonRotatedChildren: const [],
    );
    return map;
  }
}