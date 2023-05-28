import 'package:bussit/api/address_json.dart';

class Address {
  final double lat;
  final double lon;
  final String label;
  final String id;

  Address(this.lat, this.lon, this.label, this.id);

  Address.fromCoordinates(this.lat, this.lon)
      : label = lat.toString() + ", " + lon.toString(),
        id = lat.toString() + ", " + lon.toString();

  Address.fromAddressJson(AddressJson address)
      : this(address.geometry.lat.toDouble(), address.geometry.lon.toDouble(),
            address.properties.label, address.properties.gid);
}
