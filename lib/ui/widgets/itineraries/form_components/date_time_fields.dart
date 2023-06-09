import 'package:bussit/model/itinerary_form_data.dart';
import 'package:bussit/utils/reserve_space.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DateField extends StatelessWidget {
  const DateField({super.key});

  String? dateString(DateTime? date) {
    return DateFormat('dd.MM.').format(date ?? DateTime.now());
  }

  Future<DateTime?> displayDatePicker(
      BuildContext context, DateTime? currentDate) async {
    var date = await showDatePicker(
      context: context,
      initialDate: currentDate ?? DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 2)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    return date;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ItineraryFormData>(
      builder: (context, formData, child) => TextButton.icon(
        icon: const Icon(Icons.calendar_month),
        onPressed: () {
          Future<DateTime?> future = displayDatePicker(context, formData.date);
          future.then((value) => value == null ? null : formData.date = value);
        },
        label: Text(dateString(formData.date) ?? ''),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(4),
          visualDensity: VisualDensity.compact,
        ),
      ),
    );
  }
}

class TimeField extends StatelessWidget {
  const TimeField({super.key});

  String timeString(BuildContext context, TimeOfDay? time) {
    return time == null ? "Now" : time.format(context);
  }

  Future<TimeOfDay?> displayTimePicker(
      BuildContext context, TimeOfDay? current) async {
    var time = await showTimePicker(
      context: context,
      initialTime: current ?? TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial,
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
  Widget build(BuildContext context) {
    return Consumer<ItineraryFormData>(
      builder: (context, formData, child) {
        return TextButton.icon(
          icon: const Icon(Icons.schedule),
          label: ReserveSpace(
            child: Text(timeString(context, formData.time)),
            reserve: const Text("00:00"),
            alignment: Alignment.centerLeft,
          ),
          onPressed: () {
            Future<TimeOfDay?> future =
                displayTimePicker(context, formData.time);
            future.then((value) {
              if (value != null) {
                formData.time = value;
              }
            });
          },
          style: TextButton.styleFrom(
            visualDensity: VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.compact.vertical,
            ),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(4),
          ),
        );
      },
    );
  }
}

class TimeControls extends StatelessWidget {
  const TimeControls(this.formData, {super.key});
  final ItineraryFormData formData;

  @override
  Widget build(BuildContext context) {
    final now = IconButton(
      onPressed: () {
        formData.date = null;
        formData.time = null;
        formData.arriveBy = false;
      },
      icon: const Icon(Icons.close),
      visualDensity: VisualDensity.compact,
    );
    const Duration jumpDuration = Duration(minutes: 10);
    final earlier = IconButton(
      visualDensity: VisualDensity.compact,
      icon: const Icon(Icons.keyboard_double_arrow_left),
      onPressed: () {
        formData.datetime = formData.datetime.subtract(jumpDuration);
      },
    );
    final later = IconButton(
      visualDensity: VisualDensity.compact,
      icon: const Icon(Icons.keyboard_double_arrow_right),
      onPressed: () {
        formData.datetime = formData.datetime.add(jumpDuration);
      },
    );
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        earlier,
        now,
        later,
      ],
    );
  }
}
