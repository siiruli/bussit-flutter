import 'package:bussit/api/address_json.dart';
import 'package:bussit/model/string_builder.dart';
import 'package:latlong2/latlong.dart';
import 'dart:developer' as developer;

enum AddressType { location, trip }

class Address {
  final LatLng coordinates;
  double get lat => coordinates.latitude;
  double get lon => coordinates.longitude;

  final String label;
  final String id;

  AddressType type = AddressType.location;

  DateTime? serviceDate;
  String? get tripId => type == AddressType.trip ? id : null;

  @override
  String toString() => label;

  Address(double lat, double lon, this.label, this.id)
      : coordinates = LatLng(lat, lon);

  Address.fromCoordinates(lat, lon)
      : label = lat.toString() + ", " + lon.toString(),
        id = lat.toString() + ", " + lon.toString(),
        coordinates = LatLng(lat, lon);

  /// Address constructed from a stop from the graphql API
  Address.fromStop(stop, {double? lat, double? lon})
      : this(lat ?? stop.lat, lon ?? stop.lon, stopName(stop), stop.gtfsId);

  Address.fromTrip(trip, String serviceDate)
      : type = AddressType.trip,
        id = trip.gtfsId,
        label = trip.routeShortName + " " + trip.tripHeadsign,
        coordinates = LatLng(0, 0),
        serviceDate = DateTime.parse(serviceDate);

  Address.fromAddressJson(AddressJson address)
      : this(address.geometry.lat.toDouble(), address.geometry.lon.toDouble(),
            address.properties.label, address.properties.gid);

  /// Place parameter for the query
  String? toPlaceString() {
    if (type == AddressType.trip) return null;
    final name = label;
    final res = '$name::$lat,$lon';
    developer.log(res);
    return res;
  }
}
