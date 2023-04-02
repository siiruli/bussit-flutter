import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:bussit/database/stop_dao.dart';

part 'database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [Stop])
abstract class AppDatabase extends FloorDatabase {
  StopDao get stopDao;
}

