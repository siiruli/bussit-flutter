import 'package:bussit/api/address_json.dart';

class Address {
  final double lat;
  final double lon;
  final String label;
  final String id;

  @override
  String toString() => label;

  Address(this.lat, this.lon, this.label, this.id);

  Address.fromCoordinates(this.lat, this.lon)
      : label = lat.toString() + ", " + lon.toString(),
        id = lat.toString() + ", " + lon.toString();

  /// Address constructed from a stop from the graphql API
  Address.fromStop(stop, {double? lat, double? lon})
      : this(lat ?? stop.lat, lon ?? stop.lon, stopName(stop), stop.gtfsId);

  Address.fromAddressJson(AddressJson address)
      : this(address.geometry.lat.toDouble(), address.geometry.lon.toDouble(),
            address.properties.label, address.properties.gid);
}

/// Construct an informative name from a stop
String stopName(stop) {
  String name = stop.name;
  if (stop.platformCode != null) {
    name += " " + stop.platformCode;
  }
  if (stop.code != null) {
    name += ", " + stop.code;
  }
  return name;
}
