import 'dart:collection';
import 'package:bussit/database/database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bussit/database/stop_dao.dart';
import 'dart:developer' as developer;

class SavedStopIds extends ChangeNotifier {

  final List<String> _list = [];
  AppDatabase? _database = null;
  

  UnmodifiableListView<String> get ids => UnmodifiableListView(_list);
  
  SavedStopIds(){
    _loadDatabase();
  }
  Future<void> _loadDatabase() async {
    if(kIsWeb){
      return;
    }
    developer.log('Building database', name: 'my.app.database');
    _database = await $FloorAppDatabase
        .databaseBuilder("bussit_database.db").build();
    developer.log('Database built', name: 'my.app.database');
    loadStops();
  }

  Future<void> loadStops() async {
    if(_database == null) {
      return;
    }
    List list = await _database!.stopDao.findAllStops();
    _list.clear();
    _list.addAll(list.map((e) => e.id));
    notifyListeners();
  }

  void add(String id){
    _list.add(id);
    _database?.stopDao.insertStop(Stop(id, 0));
    notifyListeners();
  }

  void remove(String id){
    _list.remove(id);
    _database?.stopDao.deleteStop(Stop(id, 0));
    notifyListeners();
  }

  bool isSaved(String id){
    return _list.contains(id);
  }
}