


import 'dart:collection';
import 'package:flutter/material.dart';

class SavedStopIds extends ChangeNotifier {

  final List<String> _list = [];

  UnmodifiableListView<String> get ids => UnmodifiableListView(_list);

  void add(String id){
    _list.add(id);
    notifyListeners();
  }

  void remove(String id){
    _list.remove(id);
    notifyListeners();
  }

  bool isSaved(String id){
    return _list.contains(id);
  }
  void toggleSave(String id){
    if(isSaved(id)){
      remove(id);
    }else{
      add(id);
    }
  }
}