
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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

Widget formatDuration(Duration duration){
  int minutes = duration.inMinutes;
  int seconds = duration.inSeconds.remainder(60);
  String text;

  if(minutes.abs() == 0){
    text = '${seconds.toString()}s';
  }
  else{
    text = '${minutes.toString()}min';
    if(minutes.abs() < 5) {
      text += ' ${seconds.abs().toString()}s';
    }
  }
  final color = duration.isNegative ? Colors.red : Colors.green;
  return Text(
    text,
    style: TextStyle(color: color),
  );
}

class DepartureTimeWidget extends StatelessWidget {
  const DepartureTimeWidget(this.serviceDay, this.depTime, {Key? key}) : super(key: key);
  final int? serviceDay;
  final int? depTime;

  @override
  Widget build(BuildContext context){
    if(serviceDay == null || depTime == null){
      return const Text("--:--");
    }
    
    DateTime time = DateTime.fromMillisecondsSinceEpoch(
      (serviceDay!+depTime!)*1000
    );
    DateTime now = DateTime.now().add(const Duration(seconds: 5));  

    final timeStr = Text(DateFormat('kk:mm').format(time));
    final timeLeft = formatDuration(time.difference(now));
    return Column(
      children: [timeStr, timeLeft],
      mainAxisAlignment: MainAxisAlignment.center,
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
