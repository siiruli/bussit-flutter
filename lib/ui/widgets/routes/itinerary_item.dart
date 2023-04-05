import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:bussit/ui/widgets/components/app_icons.dart';
import 'package:flutter/material.dart';

class ItineraryWidget extends StatelessWidget{
  const ItineraryWidget({this.itinerary, Key? key}) : super(key: key);

  final Query$Itinerary$plan$itineraries? itinerary;

  @override
  Widget build(BuildContext context){

    return Card(child: Row(
      children: itinerary?.legs.map(
        (leg) => TransitModeIcon(leg?.mode)
      ).toList() ?? const [Text("empty")],
      mainAxisAlignment: MainAxisAlignment.center,
    ));
  }
}

