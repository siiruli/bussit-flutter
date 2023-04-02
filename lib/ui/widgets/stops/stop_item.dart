
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bussit/graphql/stops_query.graphql.dart';
import 'package:bussit/model/saved_stops.dart';
import 'package:bussit/ui/widgets/components/departure_time.dart';



class StopItemWidget extends StatelessWidget {
  const StopItemWidget(this.stopMaybe, {Key? key}) : super(key: key);
  final Query$StopData$stops? stopMaybe;

  @override
  Widget build(BuildContext context){
    if(stopMaybe == null){
      return const Text("Stop is null");
    }
    final stop = stopMaybe!;
    final iconButton = getSaveIconButton(stop);

    List<Widget> stopTimes = stop.stoptimesWithoutPatterns?.map(
      (e) => StopTimeWidget(e)
    ).toList() ?? [];
    if(stopTimes.isEmpty){
      stopTimes = <Widget>[
        const Card(child: ListTile(
          title: Text("No departures"),
        ))
      ];
    }
    List<InlineSpan> titleText = [];
    if(stop.platformCode != null) {
      titleText.add(TextSpan(
        text: ' ' + stop.platformCode!,
      ));
    }
    List<InlineSpan> subtitle = [];
    if(stop.code != null){
      subtitle.add(TextSpan(text: stop.code));
    }
    if(stop.desc != null){
      subtitle.add(TextSpan(text: ', ' + stop.desc!));
    }

    if(stop.vehicleMode != null){
      subtitle.add(TextSpan(text: ', ' + stop.vehicleMode!.name));
    }
    if(stop.zoneId != null){
      subtitle.add(TextSpan(text: ', zone: ' + stop.zoneId!));
    }
    return Card(
      
      child: ExpansionTile(
        title: Text.rich(
          TextSpan(text: stop.name, 
          children: titleText
        )),
        subtitle: Text.rich(TextSpan(text: '', children: subtitle)),
        trailing: iconButton,
        children: stopTimes,
        controlAffinity: ListTileControlAffinity.leading,
      )
    );
  }
}

class StopTimeWidget extends StatelessWidget {
  const StopTimeWidget(this.stoptime, {Key? key}) : super(key: key);
  final Query$StopData$stops$stoptimesWithoutPatterns? stoptime;

  @override
  Widget build(BuildContext context){
    if(stoptime == null) {
      return const Text("null");
    }
    String busName = stoptime?.trip?.route.shortName ?? "unnamed";
    busName += ' ' + (stoptime?.headsign ?? "-");
    Widget? depTime = DepartureTimeWidget(
      stoptime?.serviceDay,
      stoptime?.realtimeDeparture
    );
    return Card(
      child: ListTile(
        title: Text(busName),
        leading: depTime,
      ),
    );
  }
}


Widget getSaveIconButton(stop){
const saveIcon = Icon(Icons.save_alt);
  const deleteIcon = Icon(Icons.delete_forever);
  final iconButton = Consumer<SavedStopIds>(
    builder: (context, savedIds, child) {
      if(savedIds.isSaved(stop.gtfsId)){
        return IconButton(
          onPressed: () => savedIds.remove(stop.gtfsId), 
          icon: deleteIcon,
        );
      }
      else{
        return IconButton(
          onPressed: () => savedIds.add(stop.gtfsId), 
          icon: saveIcon,
        );
      }
    }
  );
  return iconButton;
}
