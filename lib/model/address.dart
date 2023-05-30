import 'package:bussit/api/address_json.dart';
import 'package:bussit/graphql/itinerary_query.graphql.dart';
import 'package:bussit/graphql/schema.graphql.dart';
import 'package:bussit/graphql/trip_query.graphql.dart';
import 'package:bussit/utils/graphql_hooks.dart';
import 'package:graphql/client.dart';
import 'package:intl/intl.dart';
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

  DateTime? serviceDate = DateTime.now()
      .copyWith(hour: 0, minute: 0, second: 0, microsecond: 0, millisecond: 0);

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

  Address.fromTrip(trip)
      : type = AddressType.trip,
        id = trip.gtfsId,
        label = trip.routeShortName + " " + trip.tripHeadsign,
        coordinates = LatLng(0, 0);

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

/// A hook to get relevant variables from start and end locations
useItineraryVariables(Variables$Query$Itinerary variables, Address from,
    Address to, DateTime? time) {
  Map<String, dynamic> data = variables.toJson();
  data["fromPlace"] = from.toPlaceString();
  data["toPlace"] = to.toPlaceString();

  final options = Options$Query$Trip(
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      variables: Variables$Query$Trip(gtfsId: from.id));

  if (from.type == AddressType.trip) {
    final result = useQueryLifecycleAware(options);

    developer.log("query result: " + result.result.toString());
    if (result.result.hasException) {
      throw result.result.exception!;
    }

    Query$Trip$trip? trip;
    developer.log("Trip data: " + result.result.data.toString());

    if (result.result.data != null) {
      trip = Query$Trip.fromJson(result.result.data!).trip;
      developer.log("Trip: " + trip.toString());
      developer.log("Stoptimes: " +
          (trip?.stoptimes
                  ?.map((e) => e?.stop?.name ?? "null")
                  .toList()
                  .join(", ") ??
              "null"));

      int idx = trip?.stoptimes?.lastIndexWhere((stoptime) {
            final time = from.serviceDate
                    ?.add(Duration(seconds: stoptime?.realtimeArrival ?? 0)) ??
                DateTime.now();
            developer
                .log((stoptime?.stop?.name ?? "null") + " " + time.toString());
            return time.isBefore(DateTime.now());
          }) ??
          0;
      if (idx < 0) {
        idx = 0;
      }
      final Query$Trip$trip$stoptimes? lastStopTime = trip?.stoptimes?[idx];
      final address = Address.fromStop(lastStopTime?.stop);

      data["startTransitTripId"] = trip?.gtfsId;
      data["from"] = Input$InputCoordinates(
              lat: address.lat, lon: address.lon, address: address.label)
          .toJson();

      time = from.serviceDate
              ?.add(Duration(seconds: lastStopTime?.realtimeArrival ?? 0)) ??
          DateTime.now();

      developer.log("Stop: " + (lastStopTime?.stop?.name ?? "null"));
    }
  }

  data["date"] = itineraryDateFormat(time);
  data["time"] = itineraryTimeFormat(time);

  return Variables$Query$Itinerary.fromJson(data);
}

String? itineraryDateFormat(DateTime? date) =>
    date == null ? null : DateFormat('y-MM-dd').format(date);

String? itineraryTimeFormat(DateTime? time) =>
    time == null ? null : DateFormat('HH:mm:ss').format(time);
