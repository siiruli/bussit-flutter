
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../graphql/stops_query.graphql.dart';
import '../../model/saved_stops.dart';
import 'package:intl/intl.dart';



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

    List<Widget>? stopTimes = stop.stoptimesWithoutPatterns?.map(
      (e) => StopTimeWidget(e)
    ).toList();

    return Card(
      child: ExpansionTile(
        title: Text(stop.name),
        subtitle: stop.code == null ? null : Text(stop.code!),
        trailing: iconButton,
        children: stopTimes ?? <Widget>[const Text("No departures")],
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
    Widget? depTime = getDepartureTime(
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

Widget getDepartureTime(int? serviceDay, int? depTime){
  if(serviceDay == null || depTime == null){
    return const Text("--:--");
  }
  DateTime time = DateTime.fromMillisecondsSinceEpoch((serviceDay+depTime)*1000);
  
  String timeStr = DateFormat('kk:mm:ss').format(time);
  return Text(timeStr);
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
