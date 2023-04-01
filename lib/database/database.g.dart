// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  StopDao? _stopDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Stop` (`id` TEXT NOT NULL, `position` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  StopDao get stopDao {
    return _stopDaoInstance ??= _$StopDao(database, changeListener);
  }
}

class _$StopDao extends StopDao {
  _$StopDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _stopInsertionAdapter = InsertionAdapter(
            database,
            'Stop',
            (Stop item) =>
                <String, Object?>{'id': item.id, 'position': item.position},
            changeListener),
        _stopDeletionAdapter = DeletionAdapter(
            database,
            'Stop',
            ['id'],
            (Stop item) =>
                <String, Object?>{'id': item.id, 'position': item.position},
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Stop> _stopInsertionAdapter;

  final DeletionAdapter<Stop> _stopDeletionAdapter;

  @override
  Future<List<Stop>> findAllStops() async {
    return _queryAdapter.queryList('SELECT * FROM Stop',
        mapper: (Map<String, Object?> row) =>
            Stop(row['id'] as String, row['position'] as int));
  }

  @override
  Stream<Stop?> findStopById(int id) {
    return _queryAdapter.queryStream('SELECT * FROM Person WHERE id = ?1',
        mapper: (Map<String, Object?> row) =>
            Stop(row['id'] as String, row['position'] as int),
        arguments: [id],
        queryableName: 'Person',
        isView: false);
  }

  @override
  Future<void> insertStop(Stop stop) async {
    await _stopInsertionAdapter.insert(stop, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteStop(Stop stop) async {
    await _stopDeletionAdapter.delete(stop);
  }
}
