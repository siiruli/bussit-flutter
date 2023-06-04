import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:bussit/graphql/schema.graphql.dart';
import 'package:bussit/ui/itinerary_details.dart';
import 'package:bussit/ui/widgets/components/app_icons.dart';
import 'package:bussit/ui/widgets/components/departure_time.dart';
import 'package:bussit/ui/widgets/components/gesture_menu.dart';
import 'package:bussit/ui/widgets/stops/stop_item.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import '../../../model/graphql_data_helpers.dart';

/// Shows one itinerary
///
/// Contains an expandable list that gives the legs in the itinerary
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

/// List of legs and the places between them
List<Widget> legList(List<Query$Itinerary$plan$itineraries$legs?>? legs,
    {Function? onItemTap}) {
  if (legs == null) {
    return [];
  }
  if (legs.isEmpty) {
    return [];
  }
  List<Widget> items = [];

  items.add(
    PlaceItem(
      legs[0]?.from,
      timeWidget: ItineraryTimeStamp(legs[0]?.startTime),
      onTap: onItemTap,
    ),
  );
  for (Query$Itinerary$plan$itineraries$legs? leg in legs) {
    items.add(
      LegItem(
        leg,
        timeWidget: ItineraryTimeStamp(leg?.startTime),
        onTap: onItemTap,
      ),
    );
    items.add(PlaceItem(
      leg?.to,
      timeWidget: ItineraryTimeStamp(leg?.endTime),
      onTap: onItemTap,
    ));
  }
  return items;
}

/// A time stamp for the beginning of a leg or arrival time to a place
class ItineraryTimeStamp extends StatelessWidget {
  const ItineraryTimeStamp(this.timeStampMilliseconds, {super.key});
  final int? timeStampMilliseconds;
  @override
  Widget build(BuildContext context) {
    DateTime? time = fromTimeStamp(milliseconds: timeStampMilliseconds);
    String? timeStr = formatTime(time, context: context);
    final Widget timeWidget = Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: Text(timeStr ?? "--:--"),
      alignment: Alignment.center,
    );
    return timeWidget;
  }
}

/// A place in an itinerary
class PlaceItem extends StatelessWidget {
  const PlaceItem(this.place, {this.timeWidget, this.onTap, Key? key})
      : super(key: key);
  final dynamic place;
  final Widget? timeWidget;
  final Function? onTap;
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
    final placeWidget = ListTileTheme(
      child: res,
      data: const ListTileThemeData(
        minVerticalPadding: 0,
        visualDensity: VisualDensity.compact,
      ),
    );
    return GestureDetector(
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            timeWidget,
            Expanded(child: placeWidget),
          ].whereNotNull().toList(),
        ),
      ),
      onTap: () {
        onTap?.call(place: place);
      },
    );
  }
}

/// A leg in an itinerary
class LegItem extends StatelessWidget {
  const LegItem(this.leg, {this.timeWidget, this.onTap, Key? key})
      : super(key: key);
  final Query$Itinerary$plan$itineraries$legs? leg;
  final Function? onTap;
  final Widget? timeWidget;
  @override
  Widget build(BuildContext context) {
    if (leg == null) {
      return const Text("null leg");
    }
    Widget nameWidget = const Text('');

    if (leg!.transitLeg == true) {
      nameWidget = Text(tripName(leg?.trip));
    } else {
      if (leg?.mode == Enum$Mode.WALK) {
        nameWidget = const Text('Walk');
      }
    }

    TransitMode? mode = leg?.mode == null
        ? null
        : TransitMode(leg?.mode, rentedBike: leg?.rentedBike);
    Color? color = mode?.color;
    final modeIcon =
        mode == null ? null : TransitModeIcon.fromTransitMode(mode);
    final duration = leg?.duration == null
        ? null
        : ((leg!.duration! / 60).round().toString() + 'min');
    color = Color.lerp(color, Colors.grey[100], 0.6);

    // Colored decoration for the widget
    final verticalLine = Container(
      width: 2,
      color: color,
    );
    final border = BoxDecoration(
      border: leg == null
          ? null
          : Border.symmetric(
              horizontal: BorderSide(
                color: color ?? Colors.grey,
                width: 1,
              ),
            ),
      color: leg == null ? null : Colors.grey[100],
    );
    final legItem = Container(
      decoration: border,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            timeWidget,
            verticalLine,
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
            Expanded(
                child: Row(
              children: [nameWidget],
            )),
          ].whereNotNull().toList(),
        ),
      ),
    );

    return GestureDetector(
      child: GestureMenu(
        child: legItem,
        menu: leg?.transitLeg == true
            ? tripMenu(context, leg?.trip, serviceDate(leg?.serviceDate))
            : null,
      ),
      onTap: () => onTap?.call(leg: leg),
    );
  }
}

/// Small leg widget to show in the summary of an itinerary
///
/// Shows an icon and a very short description string
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
      TransitModeIcon(leg?.mode, rentedBike: leg?.rentedBike),
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
