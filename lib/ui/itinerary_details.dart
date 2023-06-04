import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:bussit/model/map_elements.dart';
import 'package:bussit/ui/widgets/itineraries/itinerary_item.dart';
import 'package:bussit/ui/widgets/map/map_widget.dart';
import 'package:bussit/ui/widgets/map/layers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

class ItineraryDetails extends StatelessWidget {
  ItineraryDetails(this.itinerary, {super.key});
  final Query$Itinerary$plan$itineraries itinerary;
  final MapController mapController = MapController();
  EdgeInsets mapPadding(double sheetHeight) {
    return EdgeInsets.fromLTRB(20, 20, 20, 20 + sheetHeight);
  }

  @override
  Widget build(BuildContext context) {
    const double maxChildSize = 0.5;
    const double minChildSize = 0.1;
    const double initialChildSize = 0.25;

    final lines = itinerary.legs.map((leg) => MapLine(leg)).toList();
    final stops = markersFromLegs(itinerary.legs);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route"),
      ),
      body: SizedBox.expand(
        child: LayoutBuilder(builder: (context, constraints) {
          final map = MapWidget(
            mapController: mapController,
            buttonAlignment: Alignment.topRight,
            bounds: boundsFromLines(lines),
            fitBoundsOptions: FitBoundsOptions(
                padding: mapPadding(constraints.maxHeight * initialChildSize)),
            layers: [polylineLayer(lines), MarkerLayer(markers: stops)],
          );
          // Draggable scrollable leg list from the itinerary
          final details = DraggableScrollableSheet(
            maxChildSize: maxChildSize,
            initialChildSize: initialChildSize,
            minChildSize: minChildSize,
            builder: (context, scrollController) {
              return Container(
                color: Colors.white,
                child: ListView(
                  controller: scrollController,
                  children: legList(itinerary.legs, onItemTap: (
                      {Query$Itinerary$plan$itineraries$legs? leg, place}) {
                    LatLngBounds? bounds;
                    if (leg != null) {
                      bounds = boundsFromLines([MapLine(leg)]);
                    } else if (place != null) {
                      bounds = LatLngBounds.fromPoints(
                          [LatLng(place.lat, place.lon)]);
                    }
                    if (bounds != null) {
                      mapController.fitBounds(
                        bounds,
                        options: FitBoundsOptions(
                          padding:
                              mapPadding(constraints.maxHeight * maxChildSize),
                        ),
                      );
                    }
                  }),
                ),
              );
            },
          );
          return Stack(
            children: [
              map,
              details,
            ],
          );
        }),
      ),
    );
  }
}
