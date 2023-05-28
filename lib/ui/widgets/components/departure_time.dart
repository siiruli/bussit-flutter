import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DepartureTimeWidget extends StatelessWidget {
  const DepartureTimeWidget(
      {this.milliseconds, this.seconds, this.isRealTime, Key? key})
      : super(key: key);

  final int? milliseconds;
  final int? seconds;
  final bool? isRealTime;

  @override
  Widget build(BuildContext context) {
    if (milliseconds == null && seconds == null) {
      return const Text("--:--");
    }
    DateTime time = DateTime.fromMillisecondsSinceEpoch(
        seconds == null ? milliseconds! : seconds! * 1000);
    DateTime now = DateTime.now().add(const Duration(seconds: 5));

    final timeStr = Text(formatTime(time, context: context)!);
    final timeLeft =
        formatDuration(time.difference(now), isRealTime: isRealTime);
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [timeStr, timeLeft],
          mainAxisAlignment: MainAxisAlignment.center,
        ));
  }
}

DateTime? fromTimeStamp({int? seconds, int? milliseconds}) {
  if (seconds != null) {
    return DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
  }
  if (milliseconds != null) {
    return DateTime.fromMillisecondsSinceEpoch(milliseconds);
  }
  return null;
}

String? formatTime(DateTime? time, {required BuildContext context}) {
  if (time == null) {
    return null;
  }

  Locale locale = Localizations.localeOf(context);
  return DateFormat.Hm(locale.toLanguageTag()).format(time);
}

Widget formatDuration(Duration duration,
    {bool? isRealTime, int secondsCutOff = 5}) {
  int minutes = duration.inMinutes;
  int seconds = duration.inSeconds.remainder(60);
  String text;

  if (minutes.abs() == 0) {
    text = '${seconds.toString()}s';
  } else {
    text = '${minutes.toString()}m';
    if (minutes.abs() < secondsCutOff) {
      text += ' ${seconds.abs().toString()}s';
    }
  }
  Color? color;
  if (isRealTime != null && isRealTime == true) {
    color = duration.isNegative ? Colors.red : Colors.green;
  }
  return Text(
    text,
    style: TextStyle(color: color),
  );
}
