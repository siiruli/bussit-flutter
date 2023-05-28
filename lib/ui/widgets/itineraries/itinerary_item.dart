import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:bussit/graphql/schema.graphql.dart';
import 'package:bussit/ui/itinerary_details.dart';
import 'package:bussit/ui/widgets/components/app_icons.dart';
import 'package:bussit/ui/widgets/components/departure_time.dart';
import 'package:bussit/ui/widgets/stops/stop_item.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class ItineraryWidget extends StatefulWidget {
  const ItineraryWidget({this.itinerary, Key? key}) : super(key: key);

  final Query$Itinerary$plan$itineraries? itinerary;
  @override
  State<ItineraryWidget> createState() => _ItineraryState();
}

class _ItineraryState extends State<ItineraryWidget> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final Query$Itinerary$plan$itineraries? itinerary = widget.itinerary;
    if (itinerary == null) {
      return const ListTile(
        title: Text("null itinerary"),
      );
    }
    final legWidgets = Center(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  itinerary.legs.map((leg) => SmallLegWidget(leg)).toList(),
              // mainAxisAlignment: MainAxisAlignment.center,
            )));

    int duration = (itinerary.duration! / 60).round();
    double distance = (itinerary.walkDistance!);
    String distString = (distance < 1000)
        ? distance.round().toString() + ' m'
        : (distance / 1000).toStringAsPrecision(3) + ' km';

    String? startTime = formatTime(
        DateTime.fromMillisecondsSinceEpoch(itinerary.startTime!),
        context: context)!;
    String? endTime = formatTime(
        DateTime.fromMillisecondsSinceEpoch(itinerary.endTime!),
        context: context)!;

    return Card(
        child: ExpansionTile(
      childrenPadding: EdgeInsets.zero,
      subtitle: _expanded ? null : legWidgets,
      title: Row(
        children: [
          Text(startTime + '-' + endTime),
          Expanded(
              child: Center(
            child: Text(duration.toString() + ' min'),
          )),
          Text(distString),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ItineraryDetails(itinerary),
                ),
              );
            },
            icon: const Icon(Icons.map),
          ),
        ],
      ),
      onExpansionChanged: (expanded) {
        setState(() {
          _expanded = expanded;
        });
      },
      children: legList(itinerary.legs),
      controlAffinity: ListTileControlAffinity.leading,
    ));
  }
}

List<Widget> legList(List<Query$Itinerary$plan$itineraries$legs?>? legs) {
  if (legs == null) {
    return [];
  }
  if (legs.isEmpty) {
    return [];
  }
  List<Widget> items = [];

  items.add(LegListItem(
    PlaceItem(legs[0]?.from),
    time: fromTimeStamp(milliseconds: legs[0]?.startTime),
  ));
  for (Query$Itinerary$plan$itineraries$legs? leg in legs) {
    items.add(LegListItem(
      LegItem(leg),
      leg: leg,
      time: fromTimeStamp(milliseconds: leg?.startTime),
    ));
    items.add(LegListItem(
      PlaceItem(leg?.to),
      time: fromTimeStamp(milliseconds: leg?.endTime),
    ));
  }
  return items;
}

class LegListItem extends StatelessWidget {
  const LegListItem(
    this.child, {
    super.key,
    this.leg,
    this.time,
  });
  final Widget child;
  final Query$Itinerary$plan$itineraries$legs? leg;
  final DateTime? time;
  @override
  Widget build(BuildContext context) {
    String? timeStr = formatTime(time, context: context);
    Color? color = transitModeColor[leg?.mode];
    final modeIcon = leg?.mode == null ? null : TransitModeIcon(leg!.mode!);
    final duration = leg?.duration == null
        ? null
        : (leg!.duration! / 60).round().toString() + 'min';
    color = Color.lerp(color, Colors.grey[100], 0.6);
    return Container(
        decoration: BoxDecoration(
          border: leg == null
              ? null
              : Border.symmetric(
                  horizontal: BorderSide(
                    color: color ?? Colors.grey,
                    width: 1,
                  ),
                ),
          color: leg == null ? null : Colors.grey[100],
        ),
        child: IntrinsicHeight(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            timeStr == null
                ? null
                : Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    child: Text(timeStr),
                    alignment: Alignment.center,
                  ),
            leg == null
                ? null
                : Container(
                    width: 2,
                    color: color,
                  ),
            modeIcon == null
                ? null
                : Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Column(
                      children: [
                        modeIcon,
                        Text(duration ?? ""),
                      ],
                    ),
                  ),
            Expanded(child: child),
          ].whereNotNull().toList(),
        )));
  }
}

class PlaceItem extends StatelessWidget {
  const PlaceItem(this.place, {Key? key}) : super(key: key);
  final dynamic place;

  @override
  Widget build(BuildContext context) {
    Widget res = const Text('');
    if (place.stop != null) {
      res = StopItemWidget(place.stop);
    } else {
      res = ListTile(
        title: Text(place.name),
      );
    }
    return ListTileTheme(
      child: res,
      data: const ListTileThemeData(
        minVerticalPadding: 0,
        visualDensity: VisualDensity.compact,
      ),
    );
  }
}

class LegItem extends StatelessWidget {
  const LegItem(this.leg, {Key? key}) : super(key: key);
  final Query$Itinerary$plan$itineraries$legs? leg;

  @override
  Widget build(BuildContext context) {
    if (leg == null) {
      return const Text("null leg");
    }
    Widget desc = const Text('');
    Widget info = const Text("");

    if (leg!.transitLeg == true) {
      desc = Text((leg?.trip?.routeShortName ?? '') +
          ' ' +
          (leg?.trip?.tripHeadsign ?? 'no headsign'));
    } else {
      if (leg?.mode == Enum$Mode.WALK) {
        desc = const Text('Walk');
      }
    }

    List<Widget> list = [
      desc,
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      child: Row(children: list),
    );
  }
}

class SmallLegWidget extends StatelessWidget {
  const SmallLegWidget(this.leg, {Key? key}) : super(key: key);
  final Query$Itinerary$plan$itineraries$legs? leg;

  @override
  Widget build(BuildContext context) {
    Widget info = const Text("");
    if (leg?.duration != null) {
      int mins = (leg!.duration! / 60).round();
      info = Text(mins.toString() + 'min');
    }
    if (leg?.trip?.routeShortName != null) {
      info = Text(leg!.trip!.routeShortName!);
    }

    List<Widget> widgets = [
      TransitModeIcon(leg?.mode),
      info,
    ];
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: widgets,
      ),
      padding: const EdgeInsets.all(8),
    );
  }
}
