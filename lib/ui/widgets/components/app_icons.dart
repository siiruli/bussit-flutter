import 'package:bussit/graphql/schema.graphql.dart';
import 'package:flutter/material.dart';

class ZoneIdIcon extends StatelessWidget {
  const ZoneIdIcon(this.zone, {Key? key}) : super(key: key);
  final String? zone;
  @override
  Widget build(BuildContext context) {
    final radius = (IconTheme.of(context).size ?? 20) / 2;
    return CircleAvatar(
      radius: radius,
      child: Center(child: Text(zone ?? '?')),
    );
  }
}

class TransitModeIcon extends StatelessWidget {
  const TransitModeIcon(this.modeEnum, {super.key, this.rentedBike})
      : mode = null;
  const TransitModeIcon.fromTransitMode(this.mode, {super.key})
      : modeEnum = null,
        rentedBike = null;

  final Enum$Mode? modeEnum;
  final bool? rentedBike;
  final TransitMode? mode;
  @override
  Widget build(BuildContext context) {
    final modeData = mode ?? TransitMode(modeEnum, rentedBike: rentedBike);
    return Icon(
      modeData.icon,
      color: modeData.color,
    );
  }
}

class TransitMode {
  late Color color;
  late IconData icon;

  TransitMode(Enum$Mode? mode, {bool? rentedBike}) {
    color = transitModeColor[mode] ?? Colors.black;
    icon = transitModeIcon[mode] ?? Icons.question_mark;
    if (rentedBike == true) {
      color = Colors.yellow[800] ?? Colors.grey;
      icon = Icons.pedal_bike;
    }
  }
}

const transitModeColor = {
  Enum$Mode.BUS: Colors.blue,
  Enum$Mode.RAIL: Colors.purple,
  Enum$Mode.SUBWAY: Colors.orange,
  Enum$Mode.WALK: Colors.black,
  Enum$Mode.FERRY: Colors.cyan,
  Enum$Mode.TRAM: Colors.green,
  Enum$Mode.BICYCLE: Colors.blueGrey,
};
const transitModeIcon = {
  Enum$Mode.BUS: Icons.directions_bus_filled,
  Enum$Mode.RAIL: Icons.directions_railway_filled,
  Enum$Mode.SUBWAY: Icons.directions_subway_filled,
  Enum$Mode.WALK: Icons.directions_walk,
  Enum$Mode.FERRY: Icons.directions_ferry,
  Enum$Mode.TRAM: Icons.tram,
  Enum$Mode.BICYCLE: Icons.directions_bike,
};
