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
  const TransitModeIcon(this.mode, {Key? key}) : super(key: key);
  final Enum$Mode? mode;
  @override
  Widget build(BuildContext context) {
    final modeData = TransitMode(mode);
    return Icon(
      modeData.icon,
      color: modeData.color,
    );
  }
}

class TransitMode {
  late Color color;
  late IconData icon;

  TransitMode(Enum$Mode? mode) {
    color = transitModeColor[mode] ?? Colors.black;
    icon = transitModeIcon[mode] ?? Icons.question_mark;
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
