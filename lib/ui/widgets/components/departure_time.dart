import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DepartureTimeWidget extends StatelessWidget {
  const DepartureTimeWidget(this.serviceDay, this.depTime, 
    {
      this.isRealTime, Key? key
    }) : super(key: key);
  final int? serviceDay;
  final int? depTime;
  final bool? isRealTime;

  @override
  Widget build(BuildContext context){
    if(serviceDay == null || depTime == null){
      return const Text("--:--");
    }
    
    DateTime time = DateTime.fromMillisecondsSinceEpoch(
      (serviceDay!+depTime!)*1000
    );
    DateTime now = DateTime.now().add(const Duration(seconds: 5));

    Locale locale = Localizations.localeOf(context);
    final timeStr = Text(DateFormat.Hm(locale.toLanguageTag()).format(time));
    final timeLeft = formatDuration(time.difference(now), isRealTime);
    return Column(
      children: [timeStr, timeLeft],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

}

Widget formatDuration(Duration duration, bool? isRealTime){
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
  Color? color;
  if(isRealTime != null && isRealTime == true) {
    color = duration.isNegative ? Colors.red : Colors.green;
  }
  return Text(
    text,
    style: TextStyle(color: color),
  );
}
