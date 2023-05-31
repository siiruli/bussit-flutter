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

/// Name of trip (shortname and headsign)
String tripName(trip) {
  return (trip?.routeShortName ?? '') +
      ' ' +
      (trip?.tripHeadsign ?? 'no headsign');
}
