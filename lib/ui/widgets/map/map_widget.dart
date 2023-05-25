import 'package:bussit/api/map_api.dart';
import 'package:bussit/ui/widgets/components/geo_location.dart';
import 'package:bussit/ui/widgets/map/layers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:collection/collection.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({this.layers, this.showBikeRental, this.bounds, super.key});
  final List<Widget>? layers;
  final bool? showBikeRental;
  final LatLngBounds? bounds;
  // final mapController = MapController();
  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  Widget? _locationLayer;
  final mapController = MapController();
  bool _showBikeRental = false;
  @override
  void initState() {
    super.initState();
    _showBikeRental = widget.showBikeRental ?? false;
    Geolocator.isLocationServiceEnabled().then((value) {
      if (value == true) {
        setState(() {
          _locationLayer = CurrentLocationLayer();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final background = TileLayer(
      urlTemplate: getBackgroundUrl(),
      userAgentPackageName: 'fi.siirikuoppala.bussit',
      maxNativeZoom: 16,
    );

    const double? buttonSize = 32;
    final locationButton = IconButton(
      icon: const Icon(Icons.location_searching),
      onPressed: () {
        determinePosition().then((Position pos) {
          mapController.move(
              LatLng(pos.latitude, pos.longitude), mapController.zoom);
        });
      },
      iconSize: buttonSize,
    );
    final compassButton = IconButton(
      icon: const Icon(Icons.explore),
      onPressed: () {
        mapController.rotate(0);
      },
      iconSize: buttonSize,
    );

    final bikeButton = IconButton(
      icon: const Icon(Icons.pedal_bike),
      onPressed: () {
        setState(() {
          _showBikeRental = !_showBikeRental;
        });
      },
      iconSize: buttonSize,
    );

    List<Widget?> layers = [
      background,
      (_showBikeRental == true ? const BikeRentalLayer() : null),
      _locationLayer,
    ];

    layers.addAll(widget.layers ?? []);

    final map = FlutterMap(
      mapController: mapController,
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
      nonRotatedChildren: [
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16, right: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                locationButton,
                SizedBox.fromSize(
                  size: const Size(0, 8),
                ),
                compassButton,
                SizedBox.fromSize(
                  size: const Size(0, 8),
                ),
                bikeButton,
              ],
            ),
          ),
        ),
      ],
    );
    return map;
  }
}
