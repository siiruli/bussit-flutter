import 'package:flutter/material.dart';

import 'address.dart';

class ItineraryFormData extends ChangeNotifier {
  Address? _locationFrom, _locationTo;
  bool _arriveBy = false;
  DateTime? _date;
  TimeOfDay? _time;

  Address? get locationFrom => _locationFrom;
  Address? get locationTo => _locationTo;
  bool get arriveBy => _arriveBy;

  DateTime? get date => _date;
  TimeOfDay? get time => _time;
  DateTime get datetime {
    DateTime now = DateTime.now();
    DateTime datetime = DateTime(
      (date ?? now).year,
      (date ?? now).month,
      (date ?? now).day,
      time?.hour ?? now.hour,
      time?.minute ?? now.minute,
    );
    return datetime;
  }

  set locationFrom(val) {
    _locationFrom = val;
    notifyListeners();
  }

  set locationTo(val) {
    _locationTo = val;
    notifyListeners();
  }

  set arriveBy(val) {
    _arriveBy = val;
    notifyListeners();
  }

  set date(val) {
    _date = val;
    notifyListeners();
  }

  set time(val) {
    _time = val;
    notifyListeners();
  }

  set datetime(DateTime val) {
    _date = val;
    _time = TimeOfDay.fromDateTime(val);
    notifyListeners();
  }
}
