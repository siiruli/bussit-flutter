import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$CityBikes {
  Query$CityBikes({
    this.bikeRentalStations,
    required this.$__typename,
  });

  factory Query$CityBikes.fromJson(Map<String, dynamic> json) {
    final l$bikeRentalStations = json['bikeRentalStations'];
    final l$$__typename = json['__typename'];
    return Query$CityBikes(
      bikeRentalStations: (l$bikeRentalStations as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$CityBikes$bikeRentalStations.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$CityBikes$bikeRentalStations?>? bikeRentalStations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bikeRentalStations = bikeRentalStations;
    _resultData['bikeRentalStations'] =
        l$bikeRentalStations?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bikeRentalStations = bikeRentalStations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bikeRentalStations == null
          ? null
          : Object.hashAll(l$bikeRentalStations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CityBikes) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bikeRentalStations = bikeRentalStations;
    final lOther$bikeRentalStations = other.bikeRentalStations;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CityBikes on Query$CityBikes {
  CopyWith$Query$CityBikes<Query$CityBikes> get copyWith =>
      CopyWith$Query$CityBikes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CityBikes<TRes> {
  factory CopyWith$Query$CityBikes(
    Query$CityBikes instance,
    TRes Function(Query$CityBikes) then,
  ) = _CopyWithImpl$Query$CityBikes;

  factory CopyWith$Query$CityBikes.stub(TRes res) =
      _CopyWithStubImpl$Query$CityBikes;

  TRes call({
    List<Query$CityBikes$bikeRentalStations?>? bikeRentalStations,
    String? $__typename,
  });
  TRes bikeRentalStations(
      Iterable<Query$CityBikes$bikeRentalStations?>? Function(
              Iterable<
                  CopyWith$Query$CityBikes$bikeRentalStations<
                      Query$CityBikes$bikeRentalStations>?>?)
          _fn);
}

class _CopyWithImpl$Query$CityBikes<TRes>
    implements CopyWith$Query$CityBikes<TRes> {
  _CopyWithImpl$Query$CityBikes(
    this._instance,
    this._then,
  );

  final Query$CityBikes _instance;

  final TRes Function(Query$CityBikes) _then;

  static const _undefined = {};

  TRes call({
    Object? bikeRentalStations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CityBikes(
        bikeRentalStations: bikeRentalStations == _undefined
            ? _instance.bikeRentalStations
            : (bikeRentalStations
                as List<Query$CityBikes$bikeRentalStations?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bikeRentalStations(
          Iterable<Query$CityBikes$bikeRentalStations?>? Function(
                  Iterable<
                      CopyWith$Query$CityBikes$bikeRentalStations<
                          Query$CityBikes$bikeRentalStations>?>?)
              _fn) =>
      call(
          bikeRentalStations:
              _fn(_instance.bikeRentalStations?.map((e) => e == null
                  ? null
                  : CopyWith$Query$CityBikes$bikeRentalStations(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$CityBikes<TRes>
    implements CopyWith$Query$CityBikes<TRes> {
  _CopyWithStubImpl$Query$CityBikes(this._res);

  TRes _res;

  call({
    List<Query$CityBikes$bikeRentalStations?>? bikeRentalStations,
    String? $__typename,
  }) =>
      _res;
  bikeRentalStations(_fn) => _res;
}

const documentNodeQueryCityBikes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CityBikes'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bikeRentalStations'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bikesAvailable'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'capacity'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'realtime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lon'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$CityBikes _parserFn$Query$CityBikes(Map<String, dynamic> data) =>
    Query$CityBikes.fromJson(data);

class Options$Query$CityBikes extends graphql.QueryOptions<Query$CityBikes> {
  Options$Query$CityBikes({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryCityBikes,
          parserFn: _parserFn$Query$CityBikes,
        );
}

class WatchOptions$Query$CityBikes
    extends graphql.WatchQueryOptions<Query$CityBikes> {
  WatchOptions$Query$CityBikes({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryCityBikes,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$CityBikes,
        );
}

class FetchMoreOptions$Query$CityBikes extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CityBikes({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryCityBikes,
        );
}

extension ClientExtension$Query$CityBikes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CityBikes>> query$CityBikes(
          [Options$Query$CityBikes? options]) async =>
      await this.query(options ?? Options$Query$CityBikes());
  graphql.ObservableQuery<Query$CityBikes> watchQuery$CityBikes(
          [WatchOptions$Query$CityBikes? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$CityBikes());
  void writeQuery$CityBikes({
    required Query$CityBikes data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryCityBikes)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CityBikes? readQuery$CityBikes({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryCityBikes)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CityBikes.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CityBikes> useQuery$CityBikes(
        [Options$Query$CityBikes? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$CityBikes());
graphql.ObservableQuery<Query$CityBikes> useWatchQuery$CityBikes(
        [WatchOptions$Query$CityBikes? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$CityBikes());

class Query$CityBikes$Widget extends graphql_flutter.Query<Query$CityBikes> {
  Query$CityBikes$Widget({
    widgets.Key? key,
    Options$Query$CityBikes? options,
    required graphql_flutter.QueryBuilder<Query$CityBikes> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$CityBikes(),
          builder: builder,
        );
}

class Query$CityBikes$bikeRentalStations {
  Query$CityBikes$bikeRentalStations({
    required this.name,
    this.bikesAvailable,
    this.capacity,
    this.realtime,
    this.lat,
    this.lon,
    required this.$__typename,
  });

  factory Query$CityBikes$bikeRentalStations.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$bikesAvailable = json['bikesAvailable'];
    final l$capacity = json['capacity'];
    final l$realtime = json['realtime'];
    final l$lat = json['lat'];
    final l$lon = json['lon'];
    final l$$__typename = json['__typename'];
    return Query$CityBikes$bikeRentalStations(
      name: (l$name as String),
      bikesAvailable: (l$bikesAvailable as int?),
      capacity: (l$capacity as int?),
      realtime: (l$realtime as bool?),
      lat: (l$lat as num?)?.toDouble(),
      lon: (l$lon as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int? bikesAvailable;

  final int? capacity;

  final bool? realtime;

  final double? lat;

  final double? lon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$bikesAvailable = bikesAvailable;
    _resultData['bikesAvailable'] = l$bikesAvailable;
    final l$capacity = capacity;
    _resultData['capacity'] = l$capacity;
    final l$realtime = realtime;
    _resultData['realtime'] = l$realtime;
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lon = lon;
    _resultData['lon'] = l$lon;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$bikesAvailable = bikesAvailable;
    final l$capacity = capacity;
    final l$realtime = realtime;
    final l$lat = lat;
    final l$lon = lon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$bikesAvailable,
      l$capacity,
      l$realtime,
      l$lat,
      l$lon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CityBikes$bikeRentalStations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$bikesAvailable = bikesAvailable;
    final lOther$bikesAvailable = other.bikesAvailable;
    if (l$bikesAvailable != lOther$bikesAvailable) {
      return false;
    }
    final l$capacity = capacity;
    final lOther$capacity = other.capacity;
    if (l$capacity != lOther$capacity) {
      return false;
    }
    final l$realtime = realtime;
    final lOther$realtime = other.realtime;
    if (l$realtime != lOther$realtime) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CityBikes$bikeRentalStations
    on Query$CityBikes$bikeRentalStations {
  CopyWith$Query$CityBikes$bikeRentalStations<
          Query$CityBikes$bikeRentalStations>
      get copyWith => CopyWith$Query$CityBikes$bikeRentalStations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CityBikes$bikeRentalStations<TRes> {
  factory CopyWith$Query$CityBikes$bikeRentalStations(
    Query$CityBikes$bikeRentalStations instance,
    TRes Function(Query$CityBikes$bikeRentalStations) then,
  ) = _CopyWithImpl$Query$CityBikes$bikeRentalStations;

  factory CopyWith$Query$CityBikes$bikeRentalStations.stub(TRes res) =
      _CopyWithStubImpl$Query$CityBikes$bikeRentalStations;

  TRes call({
    String? name,
    int? bikesAvailable,
    int? capacity,
    bool? realtime,
    double? lat,
    double? lon,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CityBikes$bikeRentalStations<TRes>
    implements CopyWith$Query$CityBikes$bikeRentalStations<TRes> {
  _CopyWithImpl$Query$CityBikes$bikeRentalStations(
    this._instance,
    this._then,
  );

  final Query$CityBikes$bikeRentalStations _instance;

  final TRes Function(Query$CityBikes$bikeRentalStations) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? bikesAvailable = _undefined,
    Object? capacity = _undefined,
    Object? realtime = _undefined,
    Object? lat = _undefined,
    Object? lon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CityBikes$bikeRentalStations(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        bikesAvailable: bikesAvailable == _undefined
            ? _instance.bikesAvailable
            : (bikesAvailable as int?),
        capacity:
            capacity == _undefined ? _instance.capacity : (capacity as int?),
        realtime:
            realtime == _undefined ? _instance.realtime : (realtime as bool?),
        lat: lat == _undefined ? _instance.lat : (lat as double?),
        lon: lon == _undefined ? _instance.lon : (lon as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CityBikes$bikeRentalStations<TRes>
    implements CopyWith$Query$CityBikes$bikeRentalStations<TRes> {
  _CopyWithStubImpl$Query$CityBikes$bikeRentalStations(this._res);

  TRes _res;

  call({
    String? name,
    int? bikesAvailable,
    int? capacity,
    bool? realtime,
    double? lat,
    double? lon,
    String? $__typename,
  }) =>
      _res;
}
