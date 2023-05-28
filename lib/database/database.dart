import 'dart:async';
import 'package:floor/floor.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:bussit/database/dao.dart';
import 'dart:developer' as developer;

part 'database.g.dart'; // the generated code will be there

@Database(version: 2, entities: [Stop, AddressEntity])
abstract class AppDatabase extends FloorDatabase {
  StopDao get stopDao;
  AddressDao get addressDao;
}

// create migration
final migration1to2 = Migration(1, 2, (database) async {
  int version;
  version = await database.getVersion();
  developer
      .log("Database version: " + version.toString() + ", migrating database");

  await database.execute(
      'CREATE TABLE IF NOT EXISTS `AddressEntity` (`id` TEXT NOT NULL, `timeStamp` INTEGER NOT NULL, `label` TEXT NOT NULL, `lat` REAL NOT NULL, `lon` REAL NOT NULL, PRIMARY KEY (`id`))');
});

Future<AppDatabase?> buildDatabase() async {
  AppDatabase? database;
  if (!kIsWeb) {
    developer.log('Building database', name: 'bussit.database');
    database = await $FloorAppDatabase
        .databaseBuilder('bussit_database.db')
        .addMigrations([migration1to2]).build();
    developer.log('Database built', name: 'bussit.database');
    int version = await database.database.getVersion();
    developer.log("Database version: " + version.toString());
  }
  return database;
}
