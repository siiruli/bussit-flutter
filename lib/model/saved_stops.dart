import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:bussit/database/dao.dart';

class SavedStopIds extends ChangeNotifier {
  final List<String> _list = [];
  final StopDao? _stopDao;

  UnmodifiableListView<String> get ids => UnmodifiableListView(_list);

  SavedStopIds(StopDao? dao) : _stopDao = dao {
    loadStops();
  }

  Future<void> loadStops() async {
    if (_stopDao == null) {
      return;
    }
    List list = await _stopDao!.findAllStops();
    _list.clear();
    _list.addAll(list.map((e) => e.id));
    notifyListeners();
  }

  void add(String id) {
    _list.add(id);
    _stopDao?.insertStop(Stop(id, 0));
    notifyListeners();
  }

  void remove(String id) {
    _list.remove(id);
    _stopDao?.deleteStop(Stop(id, 0));
    notifyListeners();
  }

  bool isSaved(String id) {
    return _list.contains(id);
  }
}
