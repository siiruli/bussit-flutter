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

/// DateTime from string (YYYYMMDD)
DateTime? serviceDate(String? serviceDate) {
  return serviceDate == null ? null : DateTime.parse(serviceDate);
}

/// DateTime from Unix time stamp in seconds
DateTime? serviceDay(int? serviceDay) {
  return serviceDay == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(serviceDay * 1000);
}
