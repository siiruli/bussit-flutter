class Input$InputBanned {
  factory Input$InputBanned({
    String? routes,
    String? agencies,
    String? trips,
    String? stops,
    String? stopsHard,
  }) =>
      Input$InputBanned._({
        if (routes != null) r'routes': routes,
        if (agencies != null) r'agencies': agencies,
        if (trips != null) r'trips': trips,
        if (stops != null) r'stops': stops,
        if (stopsHard != null) r'stopsHard': stopsHard,
      });

  Input$InputBanned._(this._$data);

  factory Input$InputBanned.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('routes')) {
      final l$routes = data['routes'];
      result$data['routes'] = (l$routes as String?);
    }
    if (data.containsKey('agencies')) {
      final l$agencies = data['agencies'];
      result$data['agencies'] = (l$agencies as String?);
    }
    if (data.containsKey('trips')) {
      final l$trips = data['trips'];
      result$data['trips'] = (l$trips as String?);
    }
    if (data.containsKey('stops')) {
      final l$stops = data['stops'];
      result$data['stops'] = (l$stops as String?);
    }
    if (data.containsKey('stopsHard')) {
      final l$stopsHard = data['stopsHard'];
      result$data['stopsHard'] = (l$stopsHard as String?);
    }
    return Input$InputBanned._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get routes => (_$data['routes'] as String?);
  String? get agencies => (_$data['agencies'] as String?);
  String? get trips => (_$data['trips'] as String?);
  String? get stops => (_$data['stops'] as String?);
  String? get stopsHard => (_$data['stopsHard'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('routes')) {
      final l$routes = routes;
      result$data['routes'] = l$routes;
    }
    if (_$data.containsKey('agencies')) {
      final l$agencies = agencies;
      result$data['agencies'] = l$agencies;
    }
    if (_$data.containsKey('trips')) {
      final l$trips = trips;
      result$data['trips'] = l$trips;
    }
    if (_$data.containsKey('stops')) {
      final l$stops = stops;
      result$data['stops'] = l$stops;
    }
    if (_$data.containsKey('stopsHard')) {
      final l$stopsHard = stopsHard;
      result$data['stopsHard'] = l$stopsHard;
    }
    return result$data;
  }

  CopyWith$Input$InputBanned<Input$InputBanned> get copyWith =>
      CopyWith$Input$InputBanned(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InputBanned) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$routes = routes;
    final lOther$routes = other.routes;
    if (_$data.containsKey('routes') != other._$data.containsKey('routes')) {
      return false;
    }
    if (l$routes != lOther$routes) {
      return false;
    }
    final l$agencies = agencies;
    final lOther$agencies = other.agencies;
    if (_$data.containsKey('agencies') !=
        other._$data.containsKey('agencies')) {
      return false;
    }
    if (l$agencies != lOther$agencies) {
      return false;
    }
    final l$trips = trips;
    final lOther$trips = other.trips;
    if (_$data.containsKey('trips') != other._$data.containsKey('trips')) {
      return false;
    }
    if (l$trips != lOther$trips) {
      return false;
    }
    final l$stops = stops;
    final lOther$stops = other.stops;
    if (_$data.containsKey('stops') != other._$data.containsKey('stops')) {
      return false;
    }
    if (l$stops != lOther$stops) {
      return false;
    }
    final l$stopsHard = stopsHard;
    final lOther$stopsHard = other.stopsHard;
    if (_$data.containsKey('stopsHard') !=
        other._$data.containsKey('stopsHard')) {
      return false;
    }
    if (l$stopsHard != lOther$stopsHard) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$routes = routes;
    final l$agencies = agencies;
    final l$trips = trips;
    final l$stops = stops;
    final l$stopsHard = stopsHard;
    return Object.hashAll([
      _$data.containsKey('routes') ? l$routes : const {},
      _$data.containsKey('agencies') ? l$agencies : const {},
      _$data.containsKey('trips') ? l$trips : const {},
      _$data.containsKey('stops') ? l$stops : const {},
      _$data.containsKey('stopsHard') ? l$stopsHard : const {},
    ]);
  }
}

abstract class CopyWith$Input$InputBanned<TRes> {
  factory CopyWith$Input$InputBanned(
    Input$InputBanned instance,
    TRes Function(Input$InputBanned) then,
  ) = _CopyWithImpl$Input$InputBanned;

  factory CopyWith$Input$InputBanned.stub(TRes res) =
      _CopyWithStubImpl$Input$InputBanned;

  TRes call({
    String? routes,
    String? agencies,
    String? trips,
    String? stops,
    String? stopsHard,
  });
}

class _CopyWithImpl$Input$InputBanned<TRes>
    implements CopyWith$Input$InputBanned<TRes> {
  _CopyWithImpl$Input$InputBanned(
    this._instance,
    this._then,
  );

  final Input$InputBanned _instance;

  final TRes Function(Input$InputBanned) _then;

  static const _undefined = {};

  TRes call({
    Object? routes = _undefined,
    Object? agencies = _undefined,
    Object? trips = _undefined,
    Object? stops = _undefined,
    Object? stopsHard = _undefined,
  }) =>
      _then(Input$InputBanned._({
        ..._instance._$data,
        if (routes != _undefined) 'routes': (routes as String?),
        if (agencies != _undefined) 'agencies': (agencies as String?),
        if (trips != _undefined) 'trips': (trips as String?),
        if (stops != _undefined) 'stops': (stops as String?),
        if (stopsHard != _undefined) 'stopsHard': (stopsHard as String?),
      }));
}

class _CopyWithStubImpl$Input$InputBanned<TRes>
    implements CopyWith$Input$InputBanned<TRes> {
  _CopyWithStubImpl$Input$InputBanned(this._res);

  TRes _res;

  call({
    String? routes,
    String? agencies,
    String? trips,
    String? stops,
    String? stopsHard,
  }) =>
      _res;
}

class Input$InputCoordinates {
  factory Input$InputCoordinates({
    required double lat,
    required double lon,
    String? address,
    int? locationSlack,
  }) =>
      Input$InputCoordinates._({
        r'lat': lat,
        r'lon': lon,
        if (address != null) r'address': address,
        if (locationSlack != null) r'locationSlack': locationSlack,
      });

  Input$InputCoordinates._(this._$data);

  factory Input$InputCoordinates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lat = data['lat'];
    result$data['lat'] = (l$lat as num).toDouble();
    final l$lon = data['lon'];
    result$data['lon'] = (l$lon as num).toDouble();
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = (l$address as String?);
    }
    if (data.containsKey('locationSlack')) {
      final l$locationSlack = data['locationSlack'];
      result$data['locationSlack'] = (l$locationSlack as int?);
    }
    return Input$InputCoordinates._(result$data);
  }

  Map<String, dynamic> _$data;

  double get lat => (_$data['lat'] as double);
  double get lon => (_$data['lon'] as double);
  String? get address => (_$data['address'] as String?);
  int? get locationSlack => (_$data['locationSlack'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lat = lat;
    result$data['lat'] = l$lat;
    final l$lon = lon;
    result$data['lon'] = l$lon;
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address;
    }
    if (_$data.containsKey('locationSlack')) {
      final l$locationSlack = locationSlack;
      result$data['locationSlack'] = l$locationSlack;
    }
    return result$data;
  }

  CopyWith$Input$InputCoordinates<Input$InputCoordinates> get copyWith =>
      CopyWith$Input$InputCoordinates(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InputCoordinates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lon = lon;
    final lOther$lon = other.lon;
    if (l$lon != lOther$lon) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$locationSlack = locationSlack;
    final lOther$locationSlack = other.locationSlack;
    if (_$data.containsKey('locationSlack') !=
        other._$data.containsKey('locationSlack')) {
      return false;
    }
    if (l$locationSlack != lOther$locationSlack) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lon = lon;
    final l$address = address;
    final l$locationSlack = locationSlack;
    return Object.hashAll([
      l$lat,
      l$lon,
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('locationSlack') ? l$locationSlack : const {},
    ]);
  }
}

abstract class CopyWith$Input$InputCoordinates<TRes> {
  factory CopyWith$Input$InputCoordinates(
    Input$InputCoordinates instance,
    TRes Function(Input$InputCoordinates) then,
  ) = _CopyWithImpl$Input$InputCoordinates;

  factory CopyWith$Input$InputCoordinates.stub(TRes res) =
      _CopyWithStubImpl$Input$InputCoordinates;

  TRes call({
    double? lat,
    double? lon,
    String? address,
    int? locationSlack,
  });
}

class _CopyWithImpl$Input$InputCoordinates<TRes>
    implements CopyWith$Input$InputCoordinates<TRes> {
  _CopyWithImpl$Input$InputCoordinates(
    this._instance,
    this._then,
  );

  final Input$InputCoordinates _instance;

  final TRes Function(Input$InputCoordinates) _then;

  static const _undefined = {};

  TRes call({
    Object? lat = _undefined,
    Object? lon = _undefined,
    Object? address = _undefined,
    Object? locationSlack = _undefined,
  }) =>
      _then(Input$InputCoordinates._({
        ..._instance._$data,
        if (lat != _undefined && lat != null) 'lat': (lat as double),
        if (lon != _undefined && lon != null) 'lon': (lon as double),
        if (address != _undefined) 'address': (address as String?),
        if (locationSlack != _undefined)
          'locationSlack': (locationSlack as int?),
      }));
}

class _CopyWithStubImpl$Input$InputCoordinates<TRes>
    implements CopyWith$Input$InputCoordinates<TRes> {
  _CopyWithStubImpl$Input$InputCoordinates(this._res);

  TRes _res;

  call({
    double? lat,
    double? lon,
    String? address,
    int? locationSlack,
  }) =>
      _res;
}

class Input$InputFilters {
  factory Input$InputFilters({
    List<String?>? stops,
    List<String?>? routes,
    List<String?>? bikeRentalStations,
    List<String?>? bikeParks,
    List<String?>? carParks,
  }) =>
      Input$InputFilters._({
        if (stops != null) r'stops': stops,
        if (routes != null) r'routes': routes,
        if (bikeRentalStations != null)
          r'bikeRentalStations': bikeRentalStations,
        if (bikeParks != null) r'bikeParks': bikeParks,
        if (carParks != null) r'carParks': carParks,
      });

  Input$InputFilters._(this._$data);

  factory Input$InputFilters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('stops')) {
      final l$stops = data['stops'];
      result$data['stops'] =
          (l$stops as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('routes')) {
      final l$routes = data['routes'];
      result$data['routes'] =
          (l$routes as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('bikeRentalStations')) {
      final l$bikeRentalStations = data['bikeRentalStations'];
      result$data['bikeRentalStations'] =
          (l$bikeRentalStations as List<dynamic>?)
              ?.map((e) => (e as String?))
              .toList();
    }
    if (data.containsKey('bikeParks')) {
      final l$bikeParks = data['bikeParks'];
      result$data['bikeParks'] =
          (l$bikeParks as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('carParks')) {
      final l$carParks = data['carParks'];
      result$data['carParks'] =
          (l$carParks as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    return Input$InputFilters._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String?>? get stops => (_$data['stops'] as List<String?>?);
  List<String?>? get routes => (_$data['routes'] as List<String?>?);
  List<String?>? get bikeRentalStations =>
      (_$data['bikeRentalStations'] as List<String?>?);
  List<String?>? get bikeParks => (_$data['bikeParks'] as List<String?>?);
  List<String?>? get carParks => (_$data['carParks'] as List<String?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('stops')) {
      final l$stops = stops;
      result$data['stops'] = l$stops?.map((e) => e).toList();
    }
    if (_$data.containsKey('routes')) {
      final l$routes = routes;
      result$data['routes'] = l$routes?.map((e) => e).toList();
    }
    if (_$data.containsKey('bikeRentalStations')) {
      final l$bikeRentalStations = bikeRentalStations;
      result$data['bikeRentalStations'] =
          l$bikeRentalStations?.map((e) => e).toList();
    }
    if (_$data.containsKey('bikeParks')) {
      final l$bikeParks = bikeParks;
      result$data['bikeParks'] = l$bikeParks?.map((e) => e).toList();
    }
    if (_$data.containsKey('carParks')) {
      final l$carParks = carParks;
      result$data['carParks'] = l$carParks?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$InputFilters<Input$InputFilters> get copyWith =>
      CopyWith$Input$InputFilters(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InputFilters) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$stops = stops;
    final lOther$stops = other.stops;
    if (_$data.containsKey('stops') != other._$data.containsKey('stops')) {
      return false;
    }
    if (l$stops != null && lOther$stops != null) {
      if (l$stops.length != lOther$stops.length) {
        return false;
      }
      for (int i = 0; i < l$stops.length; i++) {
        final l$stops$entry = l$stops[i];
        final lOther$stops$entry = lOther$stops[i];
        if (l$stops$entry != lOther$stops$entry) {
          return false;
        }
      }
    } else if (l$stops != lOther$stops) {
      return false;
    }
    final l$routes = routes;
    final lOther$routes = other.routes;
    if (_$data.containsKey('routes') != other._$data.containsKey('routes')) {
      return false;
    }
    if (l$routes != null && lOther$routes != null) {
      if (l$routes.length != lOther$routes.length) {
        return false;
      }
      for (int i = 0; i < l$routes.length; i++) {
        final l$routes$entry = l$routes[i];
        final lOther$routes$entry = lOther$routes[i];
        if (l$routes$entry != lOther$routes$entry) {
          return false;
        }
      }
    } else if (l$routes != lOther$routes) {
      return false;
    }
    final l$bikeRentalStations = bikeRentalStations;
    final lOther$bikeRentalStations = other.bikeRentalStations;
    if (_$data.containsKey('bikeRentalStations') !=
        other._$data.containsKey('bikeRentalStations')) {
      return false;
    }
    if (l$bikeRentalStations != null && lOther$bikeRentalStations != null) {
      if (l$bikeRentalStations.length != lOther$bikeRentalStations.length) {
        return false;
      }
      for (int i = 0; i < l$bikeRentalStations.length; i++) {
        final l$bikeRentalStations$entry = l$bikeRentalStations[i];
        final lOther$bikeRentalStations$entry = lOther$bikeRentalStations[i];
        if (l$bikeRentalStations$entry != lOther$bikeRentalStations$entry) {
          return false;
        }
      }
    } else if (l$bikeRentalStations != lOther$bikeRentalStations) {
      return false;
    }
    final l$bikeParks = bikeParks;
    final lOther$bikeParks = other.bikeParks;
    if (_$data.containsKey('bikeParks') !=
        other._$data.containsKey('bikeParks')) {
      return false;
    }
    if (l$bikeParks != null && lOther$bikeParks != null) {
      if (l$bikeParks.length != lOther$bikeParks.length) {
        return false;
      }
      for (int i = 0; i < l$bikeParks.length; i++) {
        final l$bikeParks$entry = l$bikeParks[i];
        final lOther$bikeParks$entry = lOther$bikeParks[i];
        if (l$bikeParks$entry != lOther$bikeParks$entry) {
          return false;
        }
      }
    } else if (l$bikeParks != lOther$bikeParks) {
      return false;
    }
    final l$carParks = carParks;
    final lOther$carParks = other.carParks;
    if (_$data.containsKey('carParks') !=
        other._$data.containsKey('carParks')) {
      return false;
    }
    if (l$carParks != null && lOther$carParks != null) {
      if (l$carParks.length != lOther$carParks.length) {
        return false;
      }
      for (int i = 0; i < l$carParks.length; i++) {
        final l$carParks$entry = l$carParks[i];
        final lOther$carParks$entry = lOther$carParks[i];
        if (l$carParks$entry != lOther$carParks$entry) {
          return false;
        }
      }
    } else if (l$carParks != lOther$carParks) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$stops = stops;
    final l$routes = routes;
    final l$bikeRentalStations = bikeRentalStations;
    final l$bikeParks = bikeParks;
    final l$carParks = carParks;
    return Object.hashAll([
      _$data.containsKey('stops')
          ? l$stops == null
              ? null
              : Object.hashAll(l$stops.map((v) => v))
          : const {},
      _$data.containsKey('routes')
          ? l$routes == null
              ? null
              : Object.hashAll(l$routes.map((v) => v))
          : const {},
      _$data.containsKey('bikeRentalStations')
          ? l$bikeRentalStations == null
              ? null
              : Object.hashAll(l$bikeRentalStations.map((v) => v))
          : const {},
      _$data.containsKey('bikeParks')
          ? l$bikeParks == null
              ? null
              : Object.hashAll(l$bikeParks.map((v) => v))
          : const {},
      _$data.containsKey('carParks')
          ? l$carParks == null
              ? null
              : Object.hashAll(l$carParks.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$InputFilters<TRes> {
  factory CopyWith$Input$InputFilters(
    Input$InputFilters instance,
    TRes Function(Input$InputFilters) then,
  ) = _CopyWithImpl$Input$InputFilters;

  factory CopyWith$Input$InputFilters.stub(TRes res) =
      _CopyWithStubImpl$Input$InputFilters;

  TRes call({
    List<String?>? stops,
    List<String?>? routes,
    List<String?>? bikeRentalStations,
    List<String?>? bikeParks,
    List<String?>? carParks,
  });
}

class _CopyWithImpl$Input$InputFilters<TRes>
    implements CopyWith$Input$InputFilters<TRes> {
  _CopyWithImpl$Input$InputFilters(
    this._instance,
    this._then,
  );

  final Input$InputFilters _instance;

  final TRes Function(Input$InputFilters) _then;

  static const _undefined = {};

  TRes call({
    Object? stops = _undefined,
    Object? routes = _undefined,
    Object? bikeRentalStations = _undefined,
    Object? bikeParks = _undefined,
    Object? carParks = _undefined,
  }) =>
      _then(Input$InputFilters._({
        ..._instance._$data,
        if (stops != _undefined) 'stops': (stops as List<String?>?),
        if (routes != _undefined) 'routes': (routes as List<String?>?),
        if (bikeRentalStations != _undefined)
          'bikeRentalStations': (bikeRentalStations as List<String?>?),
        if (bikeParks != _undefined) 'bikeParks': (bikeParks as List<String?>?),
        if (carParks != _undefined) 'carParks': (carParks as List<String?>?),
      }));
}

class _CopyWithStubImpl$Input$InputFilters<TRes>
    implements CopyWith$Input$InputFilters<TRes> {
  _CopyWithStubImpl$Input$InputFilters(this._res);

  TRes _res;

  call({
    List<String?>? stops,
    List<String?>? routes,
    List<String?>? bikeRentalStations,
    List<String?>? bikeParks,
    List<String?>? carParks,
  }) =>
      _res;
}

class Input$InputModeWeight {
  factory Input$InputModeWeight({
    double? TRAM,
    double? SUBWAY,
    double? RAIL,
    double? BUS,
    double? FERRY,
    double? CABLE_CAR,
    double? GONDOLA,
    double? FUNICULAR,
    double? AIRPLANE,
  }) =>
      Input$InputModeWeight._({
        if (TRAM != null) r'TRAM': TRAM,
        if (SUBWAY != null) r'SUBWAY': SUBWAY,
        if (RAIL != null) r'RAIL': RAIL,
        if (BUS != null) r'BUS': BUS,
        if (FERRY != null) r'FERRY': FERRY,
        if (CABLE_CAR != null) r'CABLE_CAR': CABLE_CAR,
        if (GONDOLA != null) r'GONDOLA': GONDOLA,
        if (FUNICULAR != null) r'FUNICULAR': FUNICULAR,
        if (AIRPLANE != null) r'AIRPLANE': AIRPLANE,
      });

  Input$InputModeWeight._(this._$data);

  factory Input$InputModeWeight.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('TRAM')) {
      final l$TRAM = data['TRAM'];
      result$data['TRAM'] = (l$TRAM as num?)?.toDouble();
    }
    if (data.containsKey('SUBWAY')) {
      final l$SUBWAY = data['SUBWAY'];
      result$data['SUBWAY'] = (l$SUBWAY as num?)?.toDouble();
    }
    if (data.containsKey('RAIL')) {
      final l$RAIL = data['RAIL'];
      result$data['RAIL'] = (l$RAIL as num?)?.toDouble();
    }
    if (data.containsKey('BUS')) {
      final l$BUS = data['BUS'];
      result$data['BUS'] = (l$BUS as num?)?.toDouble();
    }
    if (data.containsKey('FERRY')) {
      final l$FERRY = data['FERRY'];
      result$data['FERRY'] = (l$FERRY as num?)?.toDouble();
    }
    if (data.containsKey('CABLE_CAR')) {
      final l$CABLE_CAR = data['CABLE_CAR'];
      result$data['CABLE_CAR'] = (l$CABLE_CAR as num?)?.toDouble();
    }
    if (data.containsKey('GONDOLA')) {
      final l$GONDOLA = data['GONDOLA'];
      result$data['GONDOLA'] = (l$GONDOLA as num?)?.toDouble();
    }
    if (data.containsKey('FUNICULAR')) {
      final l$FUNICULAR = data['FUNICULAR'];
      result$data['FUNICULAR'] = (l$FUNICULAR as num?)?.toDouble();
    }
    if (data.containsKey('AIRPLANE')) {
      final l$AIRPLANE = data['AIRPLANE'];
      result$data['AIRPLANE'] = (l$AIRPLANE as num?)?.toDouble();
    }
    return Input$InputModeWeight._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get TRAM => (_$data['TRAM'] as double?);
  double? get SUBWAY => (_$data['SUBWAY'] as double?);
  double? get RAIL => (_$data['RAIL'] as double?);
  double? get BUS => (_$data['BUS'] as double?);
  double? get FERRY => (_$data['FERRY'] as double?);
  double? get CABLE_CAR => (_$data['CABLE_CAR'] as double?);
  double? get GONDOLA => (_$data['GONDOLA'] as double?);
  double? get FUNICULAR => (_$data['FUNICULAR'] as double?);
  double? get AIRPLANE => (_$data['AIRPLANE'] as double?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('TRAM')) {
      final l$TRAM = TRAM;
      result$data['TRAM'] = l$TRAM;
    }
    if (_$data.containsKey('SUBWAY')) {
      final l$SUBWAY = SUBWAY;
      result$data['SUBWAY'] = l$SUBWAY;
    }
    if (_$data.containsKey('RAIL')) {
      final l$RAIL = RAIL;
      result$data['RAIL'] = l$RAIL;
    }
    if (_$data.containsKey('BUS')) {
      final l$BUS = BUS;
      result$data['BUS'] = l$BUS;
    }
    if (_$data.containsKey('FERRY')) {
      final l$FERRY = FERRY;
      result$data['FERRY'] = l$FERRY;
    }
    if (_$data.containsKey('CABLE_CAR')) {
      final l$CABLE_CAR = CABLE_CAR;
      result$data['CABLE_CAR'] = l$CABLE_CAR;
    }
    if (_$data.containsKey('GONDOLA')) {
      final l$GONDOLA = GONDOLA;
      result$data['GONDOLA'] = l$GONDOLA;
    }
    if (_$data.containsKey('FUNICULAR')) {
      final l$FUNICULAR = FUNICULAR;
      result$data['FUNICULAR'] = l$FUNICULAR;
    }
    if (_$data.containsKey('AIRPLANE')) {
      final l$AIRPLANE = AIRPLANE;
      result$data['AIRPLANE'] = l$AIRPLANE;
    }
    return result$data;
  }

  CopyWith$Input$InputModeWeight<Input$InputModeWeight> get copyWith =>
      CopyWith$Input$InputModeWeight(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InputModeWeight) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$TRAM = TRAM;
    final lOther$TRAM = other.TRAM;
    if (_$data.containsKey('TRAM') != other._$data.containsKey('TRAM')) {
      return false;
    }
    if (l$TRAM != lOther$TRAM) {
      return false;
    }
    final l$SUBWAY = SUBWAY;
    final lOther$SUBWAY = other.SUBWAY;
    if (_$data.containsKey('SUBWAY') != other._$data.containsKey('SUBWAY')) {
      return false;
    }
    if (l$SUBWAY != lOther$SUBWAY) {
      return false;
    }
    final l$RAIL = RAIL;
    final lOther$RAIL = other.RAIL;
    if (_$data.containsKey('RAIL') != other._$data.containsKey('RAIL')) {
      return false;
    }
    if (l$RAIL != lOther$RAIL) {
      return false;
    }
    final l$BUS = BUS;
    final lOther$BUS = other.BUS;
    if (_$data.containsKey('BUS') != other._$data.containsKey('BUS')) {
      return false;
    }
    if (l$BUS != lOther$BUS) {
      return false;
    }
    final l$FERRY = FERRY;
    final lOther$FERRY = other.FERRY;
    if (_$data.containsKey('FERRY') != other._$data.containsKey('FERRY')) {
      return false;
    }
    if (l$FERRY != lOther$FERRY) {
      return false;
    }
    final l$CABLE_CAR = CABLE_CAR;
    final lOther$CABLE_CAR = other.CABLE_CAR;
    if (_$data.containsKey('CABLE_CAR') !=
        other._$data.containsKey('CABLE_CAR')) {
      return false;
    }
    if (l$CABLE_CAR != lOther$CABLE_CAR) {
      return false;
    }
    final l$GONDOLA = GONDOLA;
    final lOther$GONDOLA = other.GONDOLA;
    if (_$data.containsKey('GONDOLA') != other._$data.containsKey('GONDOLA')) {
      return false;
    }
    if (l$GONDOLA != lOther$GONDOLA) {
      return false;
    }
    final l$FUNICULAR = FUNICULAR;
    final lOther$FUNICULAR = other.FUNICULAR;
    if (_$data.containsKey('FUNICULAR') !=
        other._$data.containsKey('FUNICULAR')) {
      return false;
    }
    if (l$FUNICULAR != lOther$FUNICULAR) {
      return false;
    }
    final l$AIRPLANE = AIRPLANE;
    final lOther$AIRPLANE = other.AIRPLANE;
    if (_$data.containsKey('AIRPLANE') !=
        other._$data.containsKey('AIRPLANE')) {
      return false;
    }
    if (l$AIRPLANE != lOther$AIRPLANE) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$TRAM = TRAM;
    final l$SUBWAY = SUBWAY;
    final l$RAIL = RAIL;
    final l$BUS = BUS;
    final l$FERRY = FERRY;
    final l$CABLE_CAR = CABLE_CAR;
    final l$GONDOLA = GONDOLA;
    final l$FUNICULAR = FUNICULAR;
    final l$AIRPLANE = AIRPLANE;
    return Object.hashAll([
      _$data.containsKey('TRAM') ? l$TRAM : const {},
      _$data.containsKey('SUBWAY') ? l$SUBWAY : const {},
      _$data.containsKey('RAIL') ? l$RAIL : const {},
      _$data.containsKey('BUS') ? l$BUS : const {},
      _$data.containsKey('FERRY') ? l$FERRY : const {},
      _$data.containsKey('CABLE_CAR') ? l$CABLE_CAR : const {},
      _$data.containsKey('GONDOLA') ? l$GONDOLA : const {},
      _$data.containsKey('FUNICULAR') ? l$FUNICULAR : const {},
      _$data.containsKey('AIRPLANE') ? l$AIRPLANE : const {},
    ]);
  }
}

abstract class CopyWith$Input$InputModeWeight<TRes> {
  factory CopyWith$Input$InputModeWeight(
    Input$InputModeWeight instance,
    TRes Function(Input$InputModeWeight) then,
  ) = _CopyWithImpl$Input$InputModeWeight;

  factory CopyWith$Input$InputModeWeight.stub(TRes res) =
      _CopyWithStubImpl$Input$InputModeWeight;

  TRes call({
    double? TRAM,
    double? SUBWAY,
    double? RAIL,
    double? BUS,
    double? FERRY,
    double? CABLE_CAR,
    double? GONDOLA,
    double? FUNICULAR,
    double? AIRPLANE,
  });
}

class _CopyWithImpl$Input$InputModeWeight<TRes>
    implements CopyWith$Input$InputModeWeight<TRes> {
  _CopyWithImpl$Input$InputModeWeight(
    this._instance,
    this._then,
  );

  final Input$InputModeWeight _instance;

  final TRes Function(Input$InputModeWeight) _then;

  static const _undefined = {};

  TRes call({
    Object? TRAM = _undefined,
    Object? SUBWAY = _undefined,
    Object? RAIL = _undefined,
    Object? BUS = _undefined,
    Object? FERRY = _undefined,
    Object? CABLE_CAR = _undefined,
    Object? GONDOLA = _undefined,
    Object? FUNICULAR = _undefined,
    Object? AIRPLANE = _undefined,
  }) =>
      _then(Input$InputModeWeight._({
        ..._instance._$data,
        if (TRAM != _undefined) 'TRAM': (TRAM as double?),
        if (SUBWAY != _undefined) 'SUBWAY': (SUBWAY as double?),
        if (RAIL != _undefined) 'RAIL': (RAIL as double?),
        if (BUS != _undefined) 'BUS': (BUS as double?),
        if (FERRY != _undefined) 'FERRY': (FERRY as double?),
        if (CABLE_CAR != _undefined) 'CABLE_CAR': (CABLE_CAR as double?),
        if (GONDOLA != _undefined) 'GONDOLA': (GONDOLA as double?),
        if (FUNICULAR != _undefined) 'FUNICULAR': (FUNICULAR as double?),
        if (AIRPLANE != _undefined) 'AIRPLANE': (AIRPLANE as double?),
      }));
}

class _CopyWithStubImpl$Input$InputModeWeight<TRes>
    implements CopyWith$Input$InputModeWeight<TRes> {
  _CopyWithStubImpl$Input$InputModeWeight(this._res);

  TRes _res;

  call({
    double? TRAM,
    double? SUBWAY,
    double? RAIL,
    double? BUS,
    double? FERRY,
    double? CABLE_CAR,
    double? GONDOLA,
    double? FUNICULAR,
    double? AIRPLANE,
  }) =>
      _res;
}

class Input$InputPreferred {
  factory Input$InputPreferred({
    String? routes,
    String? agencies,
    int? otherThanPreferredRoutesPenalty,
  }) =>
      Input$InputPreferred._({
        if (routes != null) r'routes': routes,
        if (agencies != null) r'agencies': agencies,
        if (otherThanPreferredRoutesPenalty != null)
          r'otherThanPreferredRoutesPenalty': otherThanPreferredRoutesPenalty,
      });

  Input$InputPreferred._(this._$data);

  factory Input$InputPreferred.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('routes')) {
      final l$routes = data['routes'];
      result$data['routes'] = (l$routes as String?);
    }
    if (data.containsKey('agencies')) {
      final l$agencies = data['agencies'];
      result$data['agencies'] = (l$agencies as String?);
    }
    if (data.containsKey('otherThanPreferredRoutesPenalty')) {
      final l$otherThanPreferredRoutesPenalty =
          data['otherThanPreferredRoutesPenalty'];
      result$data['otherThanPreferredRoutesPenalty'] =
          (l$otherThanPreferredRoutesPenalty as int?);
    }
    return Input$InputPreferred._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get routes => (_$data['routes'] as String?);
  String? get agencies => (_$data['agencies'] as String?);
  int? get otherThanPreferredRoutesPenalty =>
      (_$data['otherThanPreferredRoutesPenalty'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('routes')) {
      final l$routes = routes;
      result$data['routes'] = l$routes;
    }
    if (_$data.containsKey('agencies')) {
      final l$agencies = agencies;
      result$data['agencies'] = l$agencies;
    }
    if (_$data.containsKey('otherThanPreferredRoutesPenalty')) {
      final l$otherThanPreferredRoutesPenalty = otherThanPreferredRoutesPenalty;
      result$data['otherThanPreferredRoutesPenalty'] =
          l$otherThanPreferredRoutesPenalty;
    }
    return result$data;
  }

  CopyWith$Input$InputPreferred<Input$InputPreferred> get copyWith =>
      CopyWith$Input$InputPreferred(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InputPreferred) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$routes = routes;
    final lOther$routes = other.routes;
    if (_$data.containsKey('routes') != other._$data.containsKey('routes')) {
      return false;
    }
    if (l$routes != lOther$routes) {
      return false;
    }
    final l$agencies = agencies;
    final lOther$agencies = other.agencies;
    if (_$data.containsKey('agencies') !=
        other._$data.containsKey('agencies')) {
      return false;
    }
    if (l$agencies != lOther$agencies) {
      return false;
    }
    final l$otherThanPreferredRoutesPenalty = otherThanPreferredRoutesPenalty;
    final lOther$otherThanPreferredRoutesPenalty =
        other.otherThanPreferredRoutesPenalty;
    if (_$data.containsKey('otherThanPreferredRoutesPenalty') !=
        other._$data.containsKey('otherThanPreferredRoutesPenalty')) {
      return false;
    }
    if (l$otherThanPreferredRoutesPenalty !=
        lOther$otherThanPreferredRoutesPenalty) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$routes = routes;
    final l$agencies = agencies;
    final l$otherThanPreferredRoutesPenalty = otherThanPreferredRoutesPenalty;
    return Object.hashAll([
      _$data.containsKey('routes') ? l$routes : const {},
      _$data.containsKey('agencies') ? l$agencies : const {},
      _$data.containsKey('otherThanPreferredRoutesPenalty')
          ? l$otherThanPreferredRoutesPenalty
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$InputPreferred<TRes> {
  factory CopyWith$Input$InputPreferred(
    Input$InputPreferred instance,
    TRes Function(Input$InputPreferred) then,
  ) = _CopyWithImpl$Input$InputPreferred;

  factory CopyWith$Input$InputPreferred.stub(TRes res) =
      _CopyWithStubImpl$Input$InputPreferred;

  TRes call({
    String? routes,
    String? agencies,
    int? otherThanPreferredRoutesPenalty,
  });
}

class _CopyWithImpl$Input$InputPreferred<TRes>
    implements CopyWith$Input$InputPreferred<TRes> {
  _CopyWithImpl$Input$InputPreferred(
    this._instance,
    this._then,
  );

  final Input$InputPreferred _instance;

  final TRes Function(Input$InputPreferred) _then;

  static const _undefined = {};

  TRes call({
    Object? routes = _undefined,
    Object? agencies = _undefined,
    Object? otherThanPreferredRoutesPenalty = _undefined,
  }) =>
      _then(Input$InputPreferred._({
        ..._instance._$data,
        if (routes != _undefined) 'routes': (routes as String?),
        if (agencies != _undefined) 'agencies': (agencies as String?),
        if (otherThanPreferredRoutesPenalty != _undefined)
          'otherThanPreferredRoutesPenalty':
              (otherThanPreferredRoutesPenalty as int?),
      }));
}

class _CopyWithStubImpl$Input$InputPreferred<TRes>
    implements CopyWith$Input$InputPreferred<TRes> {
  _CopyWithStubImpl$Input$InputPreferred(this._res);

  TRes _res;

  call({
    String? routes,
    String? agencies,
    int? otherThanPreferredRoutesPenalty,
  }) =>
      _res;
}

class Input$InputTriangle {
  factory Input$InputTriangle({
    double? safetyFactor,
    double? slopeFactor,
    double? timeFactor,
  }) =>
      Input$InputTriangle._({
        if (safetyFactor != null) r'safetyFactor': safetyFactor,
        if (slopeFactor != null) r'slopeFactor': slopeFactor,
        if (timeFactor != null) r'timeFactor': timeFactor,
      });

  Input$InputTriangle._(this._$data);

  factory Input$InputTriangle.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('safetyFactor')) {
      final l$safetyFactor = data['safetyFactor'];
      result$data['safetyFactor'] = (l$safetyFactor as num?)?.toDouble();
    }
    if (data.containsKey('slopeFactor')) {
      final l$slopeFactor = data['slopeFactor'];
      result$data['slopeFactor'] = (l$slopeFactor as num?)?.toDouble();
    }
    if (data.containsKey('timeFactor')) {
      final l$timeFactor = data['timeFactor'];
      result$data['timeFactor'] = (l$timeFactor as num?)?.toDouble();
    }
    return Input$InputTriangle._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get safetyFactor => (_$data['safetyFactor'] as double?);
  double? get slopeFactor => (_$data['slopeFactor'] as double?);
  double? get timeFactor => (_$data['timeFactor'] as double?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('safetyFactor')) {
      final l$safetyFactor = safetyFactor;
      result$data['safetyFactor'] = l$safetyFactor;
    }
    if (_$data.containsKey('slopeFactor')) {
      final l$slopeFactor = slopeFactor;
      result$data['slopeFactor'] = l$slopeFactor;
    }
    if (_$data.containsKey('timeFactor')) {
      final l$timeFactor = timeFactor;
      result$data['timeFactor'] = l$timeFactor;
    }
    return result$data;
  }

  CopyWith$Input$InputTriangle<Input$InputTriangle> get copyWith =>
      CopyWith$Input$InputTriangle(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InputTriangle) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$safetyFactor = safetyFactor;
    final lOther$safetyFactor = other.safetyFactor;
    if (_$data.containsKey('safetyFactor') !=
        other._$data.containsKey('safetyFactor')) {
      return false;
    }
    if (l$safetyFactor != lOther$safetyFactor) {
      return false;
    }
    final l$slopeFactor = slopeFactor;
    final lOther$slopeFactor = other.slopeFactor;
    if (_$data.containsKey('slopeFactor') !=
        other._$data.containsKey('slopeFactor')) {
      return false;
    }
    if (l$slopeFactor != lOther$slopeFactor) {
      return false;
    }
    final l$timeFactor = timeFactor;
    final lOther$timeFactor = other.timeFactor;
    if (_$data.containsKey('timeFactor') !=
        other._$data.containsKey('timeFactor')) {
      return false;
    }
    if (l$timeFactor != lOther$timeFactor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$safetyFactor = safetyFactor;
    final l$slopeFactor = slopeFactor;
    final l$timeFactor = timeFactor;
    return Object.hashAll([
      _$data.containsKey('safetyFactor') ? l$safetyFactor : const {},
      _$data.containsKey('slopeFactor') ? l$slopeFactor : const {},
      _$data.containsKey('timeFactor') ? l$timeFactor : const {},
    ]);
  }
}

abstract class CopyWith$Input$InputTriangle<TRes> {
  factory CopyWith$Input$InputTriangle(
    Input$InputTriangle instance,
    TRes Function(Input$InputTriangle) then,
  ) = _CopyWithImpl$Input$InputTriangle;

  factory CopyWith$Input$InputTriangle.stub(TRes res) =
      _CopyWithStubImpl$Input$InputTriangle;

  TRes call({
    double? safetyFactor,
    double? slopeFactor,
    double? timeFactor,
  });
}

class _CopyWithImpl$Input$InputTriangle<TRes>
    implements CopyWith$Input$InputTriangle<TRes> {
  _CopyWithImpl$Input$InputTriangle(
    this._instance,
    this._then,
  );

  final Input$InputTriangle _instance;

  final TRes Function(Input$InputTriangle) _then;

  static const _undefined = {};

  TRes call({
    Object? safetyFactor = _undefined,
    Object? slopeFactor = _undefined,
    Object? timeFactor = _undefined,
  }) =>
      _then(Input$InputTriangle._({
        ..._instance._$data,
        if (safetyFactor != _undefined)
          'safetyFactor': (safetyFactor as double?),
        if (slopeFactor != _undefined) 'slopeFactor': (slopeFactor as double?),
        if (timeFactor != _undefined) 'timeFactor': (timeFactor as double?),
      }));
}

class _CopyWithStubImpl$Input$InputTriangle<TRes>
    implements CopyWith$Input$InputTriangle<TRes> {
  _CopyWithStubImpl$Input$InputTriangle(this._res);

  TRes _res;

  call({
    double? safetyFactor,
    double? slopeFactor,
    double? timeFactor,
  }) =>
      _res;
}

class Input$InputUnpreferred {
  factory Input$InputUnpreferred({
    String? routes,
    String? agencies,
    int? useUnpreferredRoutesPenalty,
  }) =>
      Input$InputUnpreferred._({
        if (routes != null) r'routes': routes,
        if (agencies != null) r'agencies': agencies,
        if (useUnpreferredRoutesPenalty != null)
          r'useUnpreferredRoutesPenalty': useUnpreferredRoutesPenalty,
      });

  Input$InputUnpreferred._(this._$data);

  factory Input$InputUnpreferred.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('routes')) {
      final l$routes = data['routes'];
      result$data['routes'] = (l$routes as String?);
    }
    if (data.containsKey('agencies')) {
      final l$agencies = data['agencies'];
      result$data['agencies'] = (l$agencies as String?);
    }
    if (data.containsKey('useUnpreferredRoutesPenalty')) {
      final l$useUnpreferredRoutesPenalty = data['useUnpreferredRoutesPenalty'];
      result$data['useUnpreferredRoutesPenalty'] =
          (l$useUnpreferredRoutesPenalty as int?);
    }
    return Input$InputUnpreferred._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get routes => (_$data['routes'] as String?);
  String? get agencies => (_$data['agencies'] as String?);
  int? get useUnpreferredRoutesPenalty =>
      (_$data['useUnpreferredRoutesPenalty'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('routes')) {
      final l$routes = routes;
      result$data['routes'] = l$routes;
    }
    if (_$data.containsKey('agencies')) {
      final l$agencies = agencies;
      result$data['agencies'] = l$agencies;
    }
    if (_$data.containsKey('useUnpreferredRoutesPenalty')) {
      final l$useUnpreferredRoutesPenalty = useUnpreferredRoutesPenalty;
      result$data['useUnpreferredRoutesPenalty'] =
          l$useUnpreferredRoutesPenalty;
    }
    return result$data;
  }

  CopyWith$Input$InputUnpreferred<Input$InputUnpreferred> get copyWith =>
      CopyWith$Input$InputUnpreferred(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InputUnpreferred) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$routes = routes;
    final lOther$routes = other.routes;
    if (_$data.containsKey('routes') != other._$data.containsKey('routes')) {
      return false;
    }
    if (l$routes != lOther$routes) {
      return false;
    }
    final l$agencies = agencies;
    final lOther$agencies = other.agencies;
    if (_$data.containsKey('agencies') !=
        other._$data.containsKey('agencies')) {
      return false;
    }
    if (l$agencies != lOther$agencies) {
      return false;
    }
    final l$useUnpreferredRoutesPenalty = useUnpreferredRoutesPenalty;
    final lOther$useUnpreferredRoutesPenalty =
        other.useUnpreferredRoutesPenalty;
    if (_$data.containsKey('useUnpreferredRoutesPenalty') !=
        other._$data.containsKey('useUnpreferredRoutesPenalty')) {
      return false;
    }
    if (l$useUnpreferredRoutesPenalty != lOther$useUnpreferredRoutesPenalty) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$routes = routes;
    final l$agencies = agencies;
    final l$useUnpreferredRoutesPenalty = useUnpreferredRoutesPenalty;
    return Object.hashAll([
      _$data.containsKey('routes') ? l$routes : const {},
      _$data.containsKey('agencies') ? l$agencies : const {},
      _$data.containsKey('useUnpreferredRoutesPenalty')
          ? l$useUnpreferredRoutesPenalty
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$InputUnpreferred<TRes> {
  factory CopyWith$Input$InputUnpreferred(
    Input$InputUnpreferred instance,
    TRes Function(Input$InputUnpreferred) then,
  ) = _CopyWithImpl$Input$InputUnpreferred;

  factory CopyWith$Input$InputUnpreferred.stub(TRes res) =
      _CopyWithStubImpl$Input$InputUnpreferred;

  TRes call({
    String? routes,
    String? agencies,
    int? useUnpreferredRoutesPenalty,
  });
}

class _CopyWithImpl$Input$InputUnpreferred<TRes>
    implements CopyWith$Input$InputUnpreferred<TRes> {
  _CopyWithImpl$Input$InputUnpreferred(
    this._instance,
    this._then,
  );

  final Input$InputUnpreferred _instance;

  final TRes Function(Input$InputUnpreferred) _then;

  static const _undefined = {};

  TRes call({
    Object? routes = _undefined,
    Object? agencies = _undefined,
    Object? useUnpreferredRoutesPenalty = _undefined,
  }) =>
      _then(Input$InputUnpreferred._({
        ..._instance._$data,
        if (routes != _undefined) 'routes': (routes as String?),
        if (agencies != _undefined) 'agencies': (agencies as String?),
        if (useUnpreferredRoutesPenalty != _undefined)
          'useUnpreferredRoutesPenalty': (useUnpreferredRoutesPenalty as int?),
      }));
}

class _CopyWithStubImpl$Input$InputUnpreferred<TRes>
    implements CopyWith$Input$InputUnpreferred<TRes> {
  _CopyWithStubImpl$Input$InputUnpreferred(this._res);

  TRes _res;

  call({
    String? routes,
    String? agencies,
    int? useUnpreferredRoutesPenalty,
  }) =>
      _res;
}

class Input$TransportMode {
  factory Input$TransportMode({
    required Enum$Mode mode,
    Enum$Qualifier? qualifier,
  }) =>
      Input$TransportMode._({
        r'mode': mode,
        if (qualifier != null) r'qualifier': qualifier,
      });

  Input$TransportMode._(this._$data);

  factory Input$TransportMode.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mode = data['mode'];
    result$data['mode'] = fromJson$Enum$Mode((l$mode as String));
    if (data.containsKey('qualifier')) {
      final l$qualifier = data['qualifier'];
      result$data['qualifier'] = l$qualifier == null
          ? null
          : fromJson$Enum$Qualifier((l$qualifier as String));
    }
    return Input$TransportMode._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Mode get mode => (_$data['mode'] as Enum$Mode);
  Enum$Qualifier? get qualifier => (_$data['qualifier'] as Enum$Qualifier?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mode = mode;
    result$data['mode'] = toJson$Enum$Mode(l$mode);
    if (_$data.containsKey('qualifier')) {
      final l$qualifier = qualifier;
      result$data['qualifier'] =
          l$qualifier == null ? null : toJson$Enum$Qualifier(l$qualifier);
    }
    return result$data;
  }

  CopyWith$Input$TransportMode<Input$TransportMode> get copyWith =>
      CopyWith$Input$TransportMode(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransportMode) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mode = mode;
    final lOther$mode = other.mode;
    if (l$mode != lOther$mode) {
      return false;
    }
    final l$qualifier = qualifier;
    final lOther$qualifier = other.qualifier;
    if (_$data.containsKey('qualifier') !=
        other._$data.containsKey('qualifier')) {
      return false;
    }
    if (l$qualifier != lOther$qualifier) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mode = mode;
    final l$qualifier = qualifier;
    return Object.hashAll([
      l$mode,
      _$data.containsKey('qualifier') ? l$qualifier : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransportMode<TRes> {
  factory CopyWith$Input$TransportMode(
    Input$TransportMode instance,
    TRes Function(Input$TransportMode) then,
  ) = _CopyWithImpl$Input$TransportMode;

  factory CopyWith$Input$TransportMode.stub(TRes res) =
      _CopyWithStubImpl$Input$TransportMode;

  TRes call({
    Enum$Mode? mode,
    Enum$Qualifier? qualifier,
  });
}

class _CopyWithImpl$Input$TransportMode<TRes>
    implements CopyWith$Input$TransportMode<TRes> {
  _CopyWithImpl$Input$TransportMode(
    this._instance,
    this._then,
  );

  final Input$TransportMode _instance;

  final TRes Function(Input$TransportMode) _then;

  static const _undefined = {};

  TRes call({
    Object? mode = _undefined,
    Object? qualifier = _undefined,
  }) =>
      _then(Input$TransportMode._({
        ..._instance._$data,
        if (mode != _undefined && mode != null) 'mode': (mode as Enum$Mode),
        if (qualifier != _undefined)
          'qualifier': (qualifier as Enum$Qualifier?),
      }));
}

class _CopyWithStubImpl$Input$TransportMode<TRes>
    implements CopyWith$Input$TransportMode<TRes> {
  _CopyWithStubImpl$Input$TransportMode(this._res);

  TRes _res;

  call({
    Enum$Mode? mode,
    Enum$Qualifier? qualifier,
  }) =>
      _res;
}

enum Enum$AlertCauseType {
  UNKNOWN_CAUSE,
  OTHER_CAUSE,
  TECHNICAL_PROBLEM,
  STRIKE,
  DEMONSTRATION,
  ACCIDENT,
  HOLIDAY,
  WEATHER,
  MAINTENANCE,
  CONSTRUCTION,
  POLICE_ACTIVITY,
  MEDICAL_EMERGENCY,
  $unknown
}

String toJson$Enum$AlertCauseType(Enum$AlertCauseType e) {
  switch (e) {
    case Enum$AlertCauseType.UNKNOWN_CAUSE:
      return r'UNKNOWN_CAUSE';
    case Enum$AlertCauseType.OTHER_CAUSE:
      return r'OTHER_CAUSE';
    case Enum$AlertCauseType.TECHNICAL_PROBLEM:
      return r'TECHNICAL_PROBLEM';
    case Enum$AlertCauseType.STRIKE:
      return r'STRIKE';
    case Enum$AlertCauseType.DEMONSTRATION:
      return r'DEMONSTRATION';
    case Enum$AlertCauseType.ACCIDENT:
      return r'ACCIDENT';
    case Enum$AlertCauseType.HOLIDAY:
      return r'HOLIDAY';
    case Enum$AlertCauseType.WEATHER:
      return r'WEATHER';
    case Enum$AlertCauseType.MAINTENANCE:
      return r'MAINTENANCE';
    case Enum$AlertCauseType.CONSTRUCTION:
      return r'CONSTRUCTION';
    case Enum$AlertCauseType.POLICE_ACTIVITY:
      return r'POLICE_ACTIVITY';
    case Enum$AlertCauseType.MEDICAL_EMERGENCY:
      return r'MEDICAL_EMERGENCY';
    case Enum$AlertCauseType.$unknown:
      return r'$unknown';
  }
}

Enum$AlertCauseType fromJson$Enum$AlertCauseType(String value) {
  switch (value) {
    case r'UNKNOWN_CAUSE':
      return Enum$AlertCauseType.UNKNOWN_CAUSE;
    case r'OTHER_CAUSE':
      return Enum$AlertCauseType.OTHER_CAUSE;
    case r'TECHNICAL_PROBLEM':
      return Enum$AlertCauseType.TECHNICAL_PROBLEM;
    case r'STRIKE':
      return Enum$AlertCauseType.STRIKE;
    case r'DEMONSTRATION':
      return Enum$AlertCauseType.DEMONSTRATION;
    case r'ACCIDENT':
      return Enum$AlertCauseType.ACCIDENT;
    case r'HOLIDAY':
      return Enum$AlertCauseType.HOLIDAY;
    case r'WEATHER':
      return Enum$AlertCauseType.WEATHER;
    case r'MAINTENANCE':
      return Enum$AlertCauseType.MAINTENANCE;
    case r'CONSTRUCTION':
      return Enum$AlertCauseType.CONSTRUCTION;
    case r'POLICE_ACTIVITY':
      return Enum$AlertCauseType.POLICE_ACTIVITY;
    case r'MEDICAL_EMERGENCY':
      return Enum$AlertCauseType.MEDICAL_EMERGENCY;
    default:
      return Enum$AlertCauseType.$unknown;
  }
}

enum Enum$AlertEffectType {
  NO_SERVICE,
  REDUCED_SERVICE,
  SIGNIFICANT_DELAYS,
  DETOUR,
  ADDITIONAL_SERVICE,
  MODIFIED_SERVICE,
  OTHER_EFFECT,
  UNKNOWN_EFFECT,
  STOP_MOVED,
  NO_EFFECT,
  $unknown
}

String toJson$Enum$AlertEffectType(Enum$AlertEffectType e) {
  switch (e) {
    case Enum$AlertEffectType.NO_SERVICE:
      return r'NO_SERVICE';
    case Enum$AlertEffectType.REDUCED_SERVICE:
      return r'REDUCED_SERVICE';
    case Enum$AlertEffectType.SIGNIFICANT_DELAYS:
      return r'SIGNIFICANT_DELAYS';
    case Enum$AlertEffectType.DETOUR:
      return r'DETOUR';
    case Enum$AlertEffectType.ADDITIONAL_SERVICE:
      return r'ADDITIONAL_SERVICE';
    case Enum$AlertEffectType.MODIFIED_SERVICE:
      return r'MODIFIED_SERVICE';
    case Enum$AlertEffectType.OTHER_EFFECT:
      return r'OTHER_EFFECT';
    case Enum$AlertEffectType.UNKNOWN_EFFECT:
      return r'UNKNOWN_EFFECT';
    case Enum$AlertEffectType.STOP_MOVED:
      return r'STOP_MOVED';
    case Enum$AlertEffectType.NO_EFFECT:
      return r'NO_EFFECT';
    case Enum$AlertEffectType.$unknown:
      return r'$unknown';
  }
}

Enum$AlertEffectType fromJson$Enum$AlertEffectType(String value) {
  switch (value) {
    case r'NO_SERVICE':
      return Enum$AlertEffectType.NO_SERVICE;
    case r'REDUCED_SERVICE':
      return Enum$AlertEffectType.REDUCED_SERVICE;
    case r'SIGNIFICANT_DELAYS':
      return Enum$AlertEffectType.SIGNIFICANT_DELAYS;
    case r'DETOUR':
      return Enum$AlertEffectType.DETOUR;
    case r'ADDITIONAL_SERVICE':
      return Enum$AlertEffectType.ADDITIONAL_SERVICE;
    case r'MODIFIED_SERVICE':
      return Enum$AlertEffectType.MODIFIED_SERVICE;
    case r'OTHER_EFFECT':
      return Enum$AlertEffectType.OTHER_EFFECT;
    case r'UNKNOWN_EFFECT':
      return Enum$AlertEffectType.UNKNOWN_EFFECT;
    case r'STOP_MOVED':
      return Enum$AlertEffectType.STOP_MOVED;
    case r'NO_EFFECT':
      return Enum$AlertEffectType.NO_EFFECT;
    default:
      return Enum$AlertEffectType.$unknown;
  }
}

enum Enum$AlertSeverityLevelType {
  UNKNOWN_SEVERITY,
  INFO,
  WARNING,
  SEVERE,
  $unknown
}

String toJson$Enum$AlertSeverityLevelType(Enum$AlertSeverityLevelType e) {
  switch (e) {
    case Enum$AlertSeverityLevelType.UNKNOWN_SEVERITY:
      return r'UNKNOWN_SEVERITY';
    case Enum$AlertSeverityLevelType.INFO:
      return r'INFO';
    case Enum$AlertSeverityLevelType.WARNING:
      return r'WARNING';
    case Enum$AlertSeverityLevelType.SEVERE:
      return r'SEVERE';
    case Enum$AlertSeverityLevelType.$unknown:
      return r'$unknown';
  }
}

Enum$AlertSeverityLevelType fromJson$Enum$AlertSeverityLevelType(String value) {
  switch (value) {
    case r'UNKNOWN_SEVERITY':
      return Enum$AlertSeverityLevelType.UNKNOWN_SEVERITY;
    case r'INFO':
      return Enum$AlertSeverityLevelType.INFO;
    case r'WARNING':
      return Enum$AlertSeverityLevelType.WARNING;
    case r'SEVERE':
      return Enum$AlertSeverityLevelType.SEVERE;
    default:
      return Enum$AlertSeverityLevelType.$unknown;
  }
}

enum Enum$BikesAllowed { NO_INFORMATION, ALLOWED, NOT_ALLOWED, $unknown }

String toJson$Enum$BikesAllowed(Enum$BikesAllowed e) {
  switch (e) {
    case Enum$BikesAllowed.NO_INFORMATION:
      return r'NO_INFORMATION';
    case Enum$BikesAllowed.ALLOWED:
      return r'ALLOWED';
    case Enum$BikesAllowed.NOT_ALLOWED:
      return r'NOT_ALLOWED';
    case Enum$BikesAllowed.$unknown:
      return r'$unknown';
  }
}

Enum$BikesAllowed fromJson$Enum$BikesAllowed(String value) {
  switch (value) {
    case r'NO_INFORMATION':
      return Enum$BikesAllowed.NO_INFORMATION;
    case r'ALLOWED':
      return Enum$BikesAllowed.ALLOWED;
    case r'NOT_ALLOWED':
      return Enum$BikesAllowed.NOT_ALLOWED;
    default:
      return Enum$BikesAllowed.$unknown;
  }
}

enum Enum$FilterPlaceType {
  STOP,
  DEPARTURE_ROW,
  BICYCLE_RENT,
  BIKE_PARK,
  CAR_PARK,
  $unknown
}

String toJson$Enum$FilterPlaceType(Enum$FilterPlaceType e) {
  switch (e) {
    case Enum$FilterPlaceType.STOP:
      return r'STOP';
    case Enum$FilterPlaceType.DEPARTURE_ROW:
      return r'DEPARTURE_ROW';
    case Enum$FilterPlaceType.BICYCLE_RENT:
      return r'BICYCLE_RENT';
    case Enum$FilterPlaceType.BIKE_PARK:
      return r'BIKE_PARK';
    case Enum$FilterPlaceType.CAR_PARK:
      return r'CAR_PARK';
    case Enum$FilterPlaceType.$unknown:
      return r'$unknown';
  }
}

Enum$FilterPlaceType fromJson$Enum$FilterPlaceType(String value) {
  switch (value) {
    case r'STOP':
      return Enum$FilterPlaceType.STOP;
    case r'DEPARTURE_ROW':
      return Enum$FilterPlaceType.DEPARTURE_ROW;
    case r'BICYCLE_RENT':
      return Enum$FilterPlaceType.BICYCLE_RENT;
    case r'BIKE_PARK':
      return Enum$FilterPlaceType.BIKE_PARK;
    case r'CAR_PARK':
      return Enum$FilterPlaceType.CAR_PARK;
    default:
      return Enum$FilterPlaceType.$unknown;
  }
}

enum Enum$LocationType { STOP, STATION, ENTRANCE, $unknown }

String toJson$Enum$LocationType(Enum$LocationType e) {
  switch (e) {
    case Enum$LocationType.STOP:
      return r'STOP';
    case Enum$LocationType.STATION:
      return r'STATION';
    case Enum$LocationType.ENTRANCE:
      return r'ENTRANCE';
    case Enum$LocationType.$unknown:
      return r'$unknown';
  }
}

Enum$LocationType fromJson$Enum$LocationType(String value) {
  switch (value) {
    case r'STOP':
      return Enum$LocationType.STOP;
    case r'STATION':
      return Enum$LocationType.STATION;
    case r'ENTRANCE':
      return Enum$LocationType.ENTRANCE;
    default:
      return Enum$LocationType.$unknown;
  }
}

enum Enum$Mode {
  AIRPLANE,
  BICYCLE,
  BUS,
  CABLE_CAR,
  CAR,
  FERRY,
  FUNICULAR,
  GONDOLA,
  LEG_SWITCH,
  RAIL,
  SUBWAY,
  TRAM,
  TRANSIT,
  WALK,
  $unknown
}

String toJson$Enum$Mode(Enum$Mode e) {
  switch (e) {
    case Enum$Mode.AIRPLANE:
      return r'AIRPLANE';
    case Enum$Mode.BICYCLE:
      return r'BICYCLE';
    case Enum$Mode.BUS:
      return r'BUS';
    case Enum$Mode.CABLE_CAR:
      return r'CABLE_CAR';
    case Enum$Mode.CAR:
      return r'CAR';
    case Enum$Mode.FERRY:
      return r'FERRY';
    case Enum$Mode.FUNICULAR:
      return r'FUNICULAR';
    case Enum$Mode.GONDOLA:
      return r'GONDOLA';
    case Enum$Mode.LEG_SWITCH:
      return r'LEG_SWITCH';
    case Enum$Mode.RAIL:
      return r'RAIL';
    case Enum$Mode.SUBWAY:
      return r'SUBWAY';
    case Enum$Mode.TRAM:
      return r'TRAM';
    case Enum$Mode.TRANSIT:
      return r'TRANSIT';
    case Enum$Mode.WALK:
      return r'WALK';
    case Enum$Mode.$unknown:
      return r'$unknown';
  }
}

Enum$Mode fromJson$Enum$Mode(String value) {
  switch (value) {
    case r'AIRPLANE':
      return Enum$Mode.AIRPLANE;
    case r'BICYCLE':
      return Enum$Mode.BICYCLE;
    case r'BUS':
      return Enum$Mode.BUS;
    case r'CABLE_CAR':
      return Enum$Mode.CABLE_CAR;
    case r'CAR':
      return Enum$Mode.CAR;
    case r'FERRY':
      return Enum$Mode.FERRY;
    case r'FUNICULAR':
      return Enum$Mode.FUNICULAR;
    case r'GONDOLA':
      return Enum$Mode.GONDOLA;
    case r'LEG_SWITCH':
      return Enum$Mode.LEG_SWITCH;
    case r'RAIL':
      return Enum$Mode.RAIL;
    case r'SUBWAY':
      return Enum$Mode.SUBWAY;
    case r'TRAM':
      return Enum$Mode.TRAM;
    case r'TRANSIT':
      return Enum$Mode.TRANSIT;
    case r'WALK':
      return Enum$Mode.WALK;
    default:
      return Enum$Mode.$unknown;
  }
}

enum Enum$OptimizeType {
  QUICK,
  SAFE,
  FLAT,
  GREENWAYS,
  TRIANGLE,
  TRANSFERS,
  $unknown
}

String toJson$Enum$OptimizeType(Enum$OptimizeType e) {
  switch (e) {
    case Enum$OptimizeType.QUICK:
      return r'QUICK';
    case Enum$OptimizeType.SAFE:
      return r'SAFE';
    case Enum$OptimizeType.FLAT:
      return r'FLAT';
    case Enum$OptimizeType.GREENWAYS:
      return r'GREENWAYS';
    case Enum$OptimizeType.TRIANGLE:
      return r'TRIANGLE';
    case Enum$OptimizeType.TRANSFERS:
      return r'TRANSFERS';
    case Enum$OptimizeType.$unknown:
      return r'$unknown';
  }
}

Enum$OptimizeType fromJson$Enum$OptimizeType(String value) {
  switch (value) {
    case r'QUICK':
      return Enum$OptimizeType.QUICK;
    case r'SAFE':
      return Enum$OptimizeType.SAFE;
    case r'FLAT':
      return Enum$OptimizeType.FLAT;
    case r'GREENWAYS':
      return Enum$OptimizeType.GREENWAYS;
    case r'TRIANGLE':
      return Enum$OptimizeType.TRIANGLE;
    case r'TRANSFERS':
      return Enum$OptimizeType.TRANSFERS;
    default:
      return Enum$OptimizeType.$unknown;
  }
}

enum Enum$PickupDropoffType {
  SCHEDULED,
  NONE,
  CALL_AGENCY,
  COORDINATE_WITH_DRIVER,
  $unknown
}

String toJson$Enum$PickupDropoffType(Enum$PickupDropoffType e) {
  switch (e) {
    case Enum$PickupDropoffType.SCHEDULED:
      return r'SCHEDULED';
    case Enum$PickupDropoffType.NONE:
      return r'NONE';
    case Enum$PickupDropoffType.CALL_AGENCY:
      return r'CALL_AGENCY';
    case Enum$PickupDropoffType.COORDINATE_WITH_DRIVER:
      return r'COORDINATE_WITH_DRIVER';
    case Enum$PickupDropoffType.$unknown:
      return r'$unknown';
  }
}

Enum$PickupDropoffType fromJson$Enum$PickupDropoffType(String value) {
  switch (value) {
    case r'SCHEDULED':
      return Enum$PickupDropoffType.SCHEDULED;
    case r'NONE':
      return Enum$PickupDropoffType.NONE;
    case r'CALL_AGENCY':
      return Enum$PickupDropoffType.CALL_AGENCY;
    case r'COORDINATE_WITH_DRIVER':
      return Enum$PickupDropoffType.COORDINATE_WITH_DRIVER;
    default:
      return Enum$PickupDropoffType.$unknown;
  }
}

enum Enum$Qualifier { RENT, HAVE, PARK, KEEP, PICKUP, $unknown }

String toJson$Enum$Qualifier(Enum$Qualifier e) {
  switch (e) {
    case Enum$Qualifier.RENT:
      return r'RENT';
    case Enum$Qualifier.HAVE:
      return r'HAVE';
    case Enum$Qualifier.PARK:
      return r'PARK';
    case Enum$Qualifier.KEEP:
      return r'KEEP';
    case Enum$Qualifier.PICKUP:
      return r'PICKUP';
    case Enum$Qualifier.$unknown:
      return r'$unknown';
  }
}

Enum$Qualifier fromJson$Enum$Qualifier(String value) {
  switch (value) {
    case r'RENT':
      return Enum$Qualifier.RENT;
    case r'HAVE':
      return Enum$Qualifier.HAVE;
    case r'PARK':
      return Enum$Qualifier.PARK;
    case r'KEEP':
      return Enum$Qualifier.KEEP;
    case r'PICKUP':
      return Enum$Qualifier.PICKUP;
    default:
      return Enum$Qualifier.$unknown;
  }
}

enum Enum$RealtimeState {
  SCHEDULED,
  UPDATED,
  CANCELED,
  ADDED,
  MODIFIED,
  $unknown
}

String toJson$Enum$RealtimeState(Enum$RealtimeState e) {
  switch (e) {
    case Enum$RealtimeState.SCHEDULED:
      return r'SCHEDULED';
    case Enum$RealtimeState.UPDATED:
      return r'UPDATED';
    case Enum$RealtimeState.CANCELED:
      return r'CANCELED';
    case Enum$RealtimeState.ADDED:
      return r'ADDED';
    case Enum$RealtimeState.MODIFIED:
      return r'MODIFIED';
    case Enum$RealtimeState.$unknown:
      return r'$unknown';
  }
}

Enum$RealtimeState fromJson$Enum$RealtimeState(String value) {
  switch (value) {
    case r'SCHEDULED':
      return Enum$RealtimeState.SCHEDULED;
    case r'UPDATED':
      return Enum$RealtimeState.UPDATED;
    case r'CANCELED':
      return Enum$RealtimeState.CANCELED;
    case r'ADDED':
      return Enum$RealtimeState.ADDED;
    case r'MODIFIED':
      return Enum$RealtimeState.MODIFIED;
    default:
      return Enum$RealtimeState.$unknown;
  }
}

enum Enum$VertexType {
  NORMAL,
  TRANSIT,
  BIKEPARK,
  BIKESHARE,
  PARKANDRIDE,
  $unknown
}

String toJson$Enum$VertexType(Enum$VertexType e) {
  switch (e) {
    case Enum$VertexType.NORMAL:
      return r'NORMAL';
    case Enum$VertexType.TRANSIT:
      return r'TRANSIT';
    case Enum$VertexType.BIKEPARK:
      return r'BIKEPARK';
    case Enum$VertexType.BIKESHARE:
      return r'BIKESHARE';
    case Enum$VertexType.PARKANDRIDE:
      return r'PARKANDRIDE';
    case Enum$VertexType.$unknown:
      return r'$unknown';
  }
}

Enum$VertexType fromJson$Enum$VertexType(String value) {
  switch (value) {
    case r'NORMAL':
      return Enum$VertexType.NORMAL;
    case r'TRANSIT':
      return Enum$VertexType.TRANSIT;
    case r'BIKEPARK':
      return Enum$VertexType.BIKEPARK;
    case r'BIKESHARE':
      return Enum$VertexType.BIKESHARE;
    case r'PARKANDRIDE':
      return Enum$VertexType.PARKANDRIDE;
    default:
      return Enum$VertexType.$unknown;
  }
}

enum Enum$WheelchairBoarding {
  NO_INFORMATION,
  POSSIBLE,
  NOT_POSSIBLE,
  $unknown
}

String toJson$Enum$WheelchairBoarding(Enum$WheelchairBoarding e) {
  switch (e) {
    case Enum$WheelchairBoarding.NO_INFORMATION:
      return r'NO_INFORMATION';
    case Enum$WheelchairBoarding.POSSIBLE:
      return r'POSSIBLE';
    case Enum$WheelchairBoarding.NOT_POSSIBLE:
      return r'NOT_POSSIBLE';
    case Enum$WheelchairBoarding.$unknown:
      return r'$unknown';
  }
}

Enum$WheelchairBoarding fromJson$Enum$WheelchairBoarding(String value) {
  switch (value) {
    case r'NO_INFORMATION':
      return Enum$WheelchairBoarding.NO_INFORMATION;
    case r'POSSIBLE':
      return Enum$WheelchairBoarding.POSSIBLE;
    case r'NOT_POSSIBLE':
      return Enum$WheelchairBoarding.NOT_POSSIBLE;
    default:
      return Enum$WheelchairBoarding.$unknown;
  }
}

const possibleTypesMap = {
  'Node': {
    'Agency',
    'Alert',
    'BikePark',
    'BikeRentalStation',
    'CarPark',
    'Cluster',
    'DepartureRow',
    'Pattern',
    'placeAtDistance',
    'Route',
    'Stop',
    'stopAtDistance',
    'TicketType',
    'Trip',
  },
  'PlaceInterface': {
    'BikePark',
    'BikeRentalStation',
    'CarPark',
    'DepartureRow',
    'Stop',
  },
};
