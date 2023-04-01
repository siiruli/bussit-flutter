import 'package:floor/floor.dart';


@entity
class Stop {
  @primaryKey
  final String id;
  final int position;

  Stop(this.id, this.position);
}

@dao
abstract class StopDao {
  @Query('SELECT * FROM Stop')
  Future<List<Stop>> findAllStops();

  @Query('SELECT * FROM Person WHERE id = :id')
  Stream<Stop?> findStopById(int id);

  @insert
  Future<void> insertStop(Stop stop);

  @delete 
  Future<void> deleteStop(Stop stop);
}