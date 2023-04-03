
import 'package:bussit/ui/widgets/components/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bussit/graphql/stops_query.graphql.dart';
import 'package:bussit/model/saved_stops.dart';
import 'package:bussit/ui/widgets/components/departure_time.dart';



class StopItemWidget extends StatelessWidget {
  const StopItemWidget(this.stopMaybe, {Key? key}) : super(key: key);
  final dynamic stopMaybe;

  @override
  Widget build(BuildContext context){
    if(stopMaybe == null){
      return const Text("Stop is null");
    }
    if((stopMaybe !is Query$StopData$stations?) && 
        (stopMaybe !is Query$StopData$stops?)
    ){
      return const Text("Wrong type");
    }
    final stop = stopMaybe!;

    final iconButton = getSaveIconButton(stop);

    List? stopTimeData = stop.stoptimesWithoutPatterns;
    List<Widget> stopTimes = stopTimeData?.map(
      (e) => StopTimeWidget(e)
    ).toList() ?? <Widget>[];
    
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
    List<String?> subtitleTexts = [
      (stop is Query$StopData$stations)? "Station" : stop.code,
      stop.desc,
    ];
    subtitleTexts = subtitleTexts.where((element) => element != null).toList();
    List<Widget> subtitle = subtitleTexts.map((e) => Text(e! + ' ')).toList(); 
    
    return Card(
      
      child: ExpansionTile(
        title: Text.rich(
          TextSpan(text: stop.name, 
          children: titleText
        )),
        subtitle: Row(children: subtitle),
        trailing: Row(
          children: <Widget>[
            TransitModeIcon(stop.vehicleMode), 
            ZoneIdIcon(stop.zoneId),
            iconButton,
          ],
          mainAxisSize: MainAxisSize.min,
        ),
        children: stopTimes,
        controlAffinity: ListTileControlAffinity.leading,
      )
    );
  }
}

class StopTimeWidget extends StatelessWidget {
  const StopTimeWidget(this.stoptime, {Key? key}) : super(key: key);
  final dynamic stoptime;

  @override
  Widget build(BuildContext context){
    if(stoptime == null) {
      return const Text("null");
    }
    String busName = stoptime?.trip?.route.shortName ?? "unnamed";
    busName += ' ' + (stoptime?.headsign ?? "-");
    Widget? depTime = DepartureTimeWidget(
      stoptime?.serviceDay,
      stoptime?.realtimeDeparture, 
      isRealTime: stoptime?.realtime,
    );
    final platFormCode = stoptime?.stop?.platformCode;
    final code = (platFormCode == null) ? null : Text(platFormCode);
    return Card(
      child: ListTile(
        title: Text(busName),
        leading: depTime,
        trailing: code,
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
