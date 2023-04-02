

import 'package:bussit/graphql/schema.graphql.dart';
import 'package:flutter/material.dart';

class ZoneIdIcon extends StatelessWidget {
  const ZoneIdIcon(this.zone, {Key? key}) : super(key: key);
  final String? zone;
  @override
  Widget build(BuildContext context){
    final radius = (IconTheme.of(context).size ?? 20) / 2;
    return CircleAvatar(
      radius: radius,
      child: Center(child:Text(zone ?? '?')),
    );
  }
}

class TransitModeIcon extends StatelessWidget {
  const TransitModeIcon(this.mode, {Key? key}) : super(key: key);
  final Enum$Mode? mode;
  @override
  Widget build(BuildContext context){
    final modeData = TransitModeData.transitModeIcon(mode);
    return Icon(
      modeData.icon,
      color: modeData.color,
    );
  }
}


class TransitMode {
  final Color color;
  final IconData icon;
  TransitMode(this.color, this.icon);
}

class TransitModeData {
  static final _transitModeData = {
    Enum$Mode.BUS:TransitMode(Colors.blue, Icons.directions_bus_filled),
    Enum$Mode.RAIL:TransitMode(Colors.purple, Icons.directions_railway_filled),
    Enum$Mode.SUBWAY:TransitMode(Colors.orange, Icons.directions_subway_filled),
    Enum$Mode.WALK:TransitMode(Colors.black, Icons.directions_walk),
    Enum$Mode.FERRY:TransitMode(Colors.cyan, Icons.directions_ferry),
    Enum$Mode.TRAM:TransitMode(Colors.green, Icons.tram),
    Enum$Mode.BICYCLE:TransitMode(Colors.blueGrey, Icons.directions_bike),
  };

  static TransitMode transitModeIcon(Enum$Mode? mode){
    return _transitModeData[mode] ?? 
        TransitMode(Colors.black54, Icons.square);
  }
}