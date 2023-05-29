import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:bussit/model/map_elements.dart';
import 'package:bussit/ui/widgets/map/map_widget.dart';
import 'package:bussit/ui/widgets/map/layers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class ItineraryDetails extends StatelessWidget {
  const ItineraryDetails(this.itinerary, {super.key});
  final Query$Itinerary$plan$itineraries itinerary;

  @override
  Widget build(BuildContext context) {
    final lines = itinerary.legs.map((leg) => MapLine(leg)).toList();
    final stops = markersFromLegs(itinerary.legs);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route"),
      ),
      body: MapWidget(
        bounds: boundsFromLines(lines),
        layers: [polylineLayer(lines), MarkerLayer(markers: stops)],
      ),
    );
  }
}
