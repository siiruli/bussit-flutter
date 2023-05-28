import 'package:bussit/model/address.dart';
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

@entity
class AddressEntity {
  @primaryKey
  final String id;
  final int timeStamp;

  final String label;
  final double lat;
  final double lon;

  AddressEntity(this.id, this.label, this.lat, this.lon, this.timeStamp);

  AddressEntity.fromAddress(Address address)
      : id = address.id,
        label = address.label,
        lat = address.lat,
        lon = address.lon,
        timeStamp = DateTime.now().microsecondsSinceEpoch;

  Address toAddress() {
    return Address(lat, lon, label, id);
  }
}

@dao
abstract class AddressDao {
  final int _maxSize = 10;
  @Query('SELECT * FROM AddressEntity ORDER BY timeStamp DESC')
  Future<List<AddressEntity>> findAllEntities();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertEntity(AddressEntity element);

  @Query(
      'DELETE FROM AddressEntity WHERE id NOT IN (SELECT id FROM AddressEntity ORDER BY timeStamp DESC LIMIT :n)')
  Future<void> filterElements(int n);

  Future<void> insertAndFilter(Address element) async {
    await insertEntity(AddressEntity.fromAddress(element));
    await filterElements(_maxSize);
  }

  Future<List<Address>> findAllElements() {
    return findAllEntities()
        .then((value) => value.map((e) => e.toAddress()).toList());
  }
}
