import 'package:flutter/material.dart';

class TimeField extends StatelessWidget {
  const TimeField({this.onSaved, super.key});
  final Function(TimeOfDay?)? onSaved;

  String timeString(BuildContext context, TimeOfDay? time) {
    return time == null ? "Now" : time.format(context);
  }

  Future<TimeOfDay?> displayTimePicker(BuildContext context, TimeOfDay? current) async {
    var time = await showTimePicker(
      context: context,
      initialTime: current ?? TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.input,
    );
    return time;
  }


  @override
  Widget build(BuildContext context){
    return FormField<TimeOfDay>( 
      onSaved: onSaved,
      builder: (field) => TextButton.icon(
        icon: const Icon(Icons.schedule),
        label: Text(timeString(context, field.value)),
        onPressed: () {
          Future<TimeOfDay?> future = displayTimePicker(context, field.value);
          future.then((value) => value == null ? null : field.didChange(value));
        },
      ),
    );
  }
}