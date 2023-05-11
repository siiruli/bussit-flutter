


import 'package:bussit/model/itinerary_form_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DateField extends StatelessWidget {
  const DateField({super.key});
  
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
    return Consumer<ItineraryFormData>( 
      builder: (context, formData, child) => TextButton.icon(
        icon: const Icon(Icons.calendar_month),
        onPressed: () {
          Future<DateTime?> future = displayDatePicker(context, formData.date);
          future.then((value) => value == null ? null : formData.date = value);
        },
        label: Text(dateString(formData.date) ?? ''),
      ),
    );
  }
}