
import 'package:bussit/model/map_elements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:bussit/graphql/bike_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:collection/collection.dart';
import 'dart:developer' as developer;


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

class BikeRentalLayer extends HookWidget {
  const BikeRentalLayer({super.key});

  @override
  Widget build(BuildContext context){
    final result = useQuery$CityBikes(
      Options$Query$CityBikes(
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        pollInterval: const Duration(seconds: 15),
      ),
    );
  
    Query$CityBikes? data = result.result.data == null ? 
      null : Query$CityBikes.fromJson(result.result.data!);

    developer.log('bike rental stations: ' + data.toString(), name: 'bussit.map');
    // if(data?.bikeRentalStations != null){
    //   developer.log('bike rental stations: ' + data!.bikeRentalStations!.map((e) => e?.name ?? 'null',).toList().toString(), name: 'bussit.map');
    // }

    return MarkerLayer(
      markers: data?.bikeRentalStations?.map((e) =>
        e?.lat != null && e?.lon != null ? 
        Marker(
          point: LatLng(e!.lat!, e.lon!),
          builder: (context) => CircleAvatar(
            backgroundColor: e.realtime == true ? Colors.amber : Colors.grey[300],
            child: Text((e.bikesAvailable ==null ? '?' : e.bikesAvailable!.toString())),
          ),
          rotate: true,
        ) : null,
      ).whereNotNull().toList() ?? [],
    );
  }

}