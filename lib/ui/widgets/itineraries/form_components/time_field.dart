import 'package:bussit/model/itinerary_form_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TimeField extends StatelessWidget {
  const TimeField({super.key});

  String timeString(BuildContext context, TimeOfDay? time) {
    return time == null ? "Now" : time.format(context);
  }

  Future<TimeOfDay?> displayTimePicker(BuildContext context, TimeOfDay? current) async {
    var time = await showTimePicker(
      context: context,
      initialTime: current ?? TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.input,
      builder: (context, childWidget) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: childWidget!,
        );
      },
    );
    return time;
  }


  @override
  Widget build(BuildContext context){
    return Consumer<ItineraryFormData>(
      builder:(context, formData, child) {
        return TextButton.icon(
          icon: const Icon(Icons.schedule),
          label: Text(timeString(context, formData.time)),
          onPressed: () {
            Future<TimeOfDay?> future = displayTimePicker(context, formData.time);
            future.then((value) {
              if(value != null){
                formData.time = value;
              }
            });
          },
        );
      },
    );
  }
}