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

  AddressEntity.fromAddress(Address address, this.timeStamp)
      : id = address.properties.gid,
        label = address.properties.label,
        lat = address.geometry.lat.toDouble(),
        lon = address.geometry.lon.toDouble();

  Address toAddress() {
    return Address(
        geometry: Geometry(coordinates: [lon, lat]),
        properties: Properties(label: label, gid: id));
  }
}

@dao
abstract class AddressDao {
  final int _maxSize = 10;
  @Query('SELECT * FROM AddressEntity ORDER BY timeStamp DESC')
  Future<List<AddressEntity>> findAllElements();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertElement(AddressEntity element);

  @Query(
      'DELETE FROM AddressEntity WHERE id NOT IN (SELECT id FROM AddressEntity ORDER BY timeStamp DESC LIMIT :n)')
  Future<void> filterElements(int n);

  Future<void> insertAndFilter(AddressEntity element) async {
    await insertElement(element);
    await filterElements(_maxSize);
  }
}
