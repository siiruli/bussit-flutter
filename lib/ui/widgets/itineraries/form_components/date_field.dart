


import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateField extends StatelessWidget {
  const DateField({this.onSaved, super.key});
  final Function(DateTime?)? onSaved;
  
  String? dateString(DateTime? date) {
    return DateFormat('dd.MM.').format(date ?? DateTime.now());
  }

  Future<DateTime?> displayDatePicker(BuildContext context, DateTime? currentDate) async {
    var date = await showDatePicker(
      context: context,
      initialDate: currentDate ?? DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days:2)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    return date;
  }

  @override
  Widget build(BuildContext context){
    return FormField<DateTime>( 
      onSaved: onSaved,
      builder:(field) => TextButton.icon(
        icon: const Icon(Icons.calendar_month),
        onPressed: () {
          Future<DateTime?> future = displayDatePicker(context, field.value);
          future.then((value) => value == null ? null : field.didChange(value));
        },
        label: Text(dateString(field.value) ?? ''),
      )
    );
  }
}