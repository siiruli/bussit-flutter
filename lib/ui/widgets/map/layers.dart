import 'package:bussit/model/map_elements.dart';
import 'package:bussit/ui/widgets/components/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:bussit/graphql/bike_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:collection/collection.dart';
import 'package:bussit/utils/graphql_hooks.dart';
import 'dart:developer' as developer;

PolylineLayer polylineLayer(List<MapLine>? lines) {
  final layer = PolylineLayer(
    polylines: lines
            ?.map(
              (e) => Polyline(
                points: e.polyline,
                color: e.color,
                strokeWidth: 2.0,
              ),
            )
            .toList() ??
        [],
  );

  return layer;
}

LatLngBounds? boundsFromLines(List<MapLine>? lines) {
  List<LatLng>? points =
      lines?.expand((MapLine element) => element.polyline).toList();
  return points == null ? null : LatLngBounds.fromPoints(points);
}

class BikeRentalLayer extends HookWidget {
  const BikeRentalLayer({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQueryLifecycleAware(
      Options$Query$CityBikes(
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        pollInterval: const Duration(seconds: 15),
      ),
    );

    Query$CityBikes? data = result.result.data == null
        ? null
        : Query$CityBikes.fromJson(result.result.data!);

    developer.log('bike rental stations: ' + data.toString(),
        name: 'bussit.map');

    return MarkerLayer(
      markers: data?.bikeRentalStations
              ?.whereNotNull()
              .map(
                (e) => e.lat != null && e.lon != null
                    ? bikeRentalMarker(
                        e, LatLng(e.lat!.toDouble(), e.lon!.toDouble()))
                    : null,
              )
              .whereNotNull()
              .toList() ??
          [],
    );
  }
}

Marker bikeRentalMarker(bikeRentalStation, LatLng point, {double? size}) {
  return Marker(
    key: ValueKey(bikeRentalStation.stationId),
    point: point,
    builder: (context) => CircleAvatar(
      backgroundColor: (bikeRentalStation.bikesAvailable ?? 0) > 0
          ? Colors.amber
          : Colors.grey[300],
      child: Text((bikeRentalStation.bikesAvailable == null
          ? '?'
          : bikeRentalStation.bikesAvailable!.toString())),
    ),
    rotate: true,
  );
}

Marker stopMarker(stop, LatLng point, {double? size}) {
  return Marker(
    key: ValueKey(stop.gtfsId),
    point: point,
    width: size ?? 10,
    height: size ?? 10,
    builder: (context) => CircleAvatar(
      backgroundColor: TransitMode(stop.vehicleMode).color,
    ),
    rotate: true,
  );
}

Marker? placeMarker(place, {double? size}) {
  if (place == null) {
    return null;
  }
  final LatLng point = LatLng(place.lat, place.lon);

  if (place.stop != null) {
    return stopMarker(place.stop, point, size: size);
  }
  if (place.bikeRentalStation != null) {
    return bikeRentalMarker(place.bikeRentalStation, point, size: size);
  }
  return null;
}
