import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$CityBikes {
  factory Variables$Query$CityBikes({List<String?>? ids}) =>
      Variables$Query$CityBikes._({
        if (ids != null) r'ids': ids,
      });

  Variables$Query$CityBikes._(this._$data);

  factory Variables$Query$CityBikes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    return Variables$Query$CityBikes._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String?>? get ids => (_$data['ids'] as List<String?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$CityBikes<Variables$Query$CityBikes> get copyWith =>
      CopyWith$Variables$Query$CityBikes(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$CityBikes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ids = ids;
    return Object.hashAll([
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {}
    ]);
  }
}

abstract class CopyWith$Variables$Query$CityBikes<TRes> {
  factory CopyWith$Variables$Query$CityBikes(
    Variables$Query$CityBikes instance,
    TRes Function(Variables$Query$CityBikes) then,
  ) = _CopyWithImpl$Variables$Query$CityBikes;

  factory CopyWith$Variables$Query$CityBikes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CityBikes;

  TRes call({List<String?>? ids});
}

class _CopyWithImpl$Variables$Query$CityBikes<TRes>
    implements CopyWith$Variables$Query$CityBikes<TRes> {
  _CopyWithImpl$Variables$Query$CityBikes(
    this._instance,
    this._then,
  );

  final Variables$Query$CityBikes _instance;

  final TRes Function(Variables$Query$CityBikes) _then;

  static const _undefined = {};

  TRes call({Object? ids = _undefined}) => _then(Variables$Query$CityBikes._({
        ..._instance._$data,
        if (ids != _undefined) 'ids': (ids as List<String?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$CityBikes<TRes>
    implements CopyWith$Variables$Query$CityBikes<TRes> {
  _CopyWithStubImpl$Variables$Query$CityBikes(this._res);

  TRes _res;

  call({List<String?>? ids}) => _res;
}

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
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'ids')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bikeRentalStations'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'ids'),
            value: VariableNode(name: NameNode(value: 'ids')),
          )
        ],
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
            name: NameNode(value: 'stationId'),
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
    Variables$Query$CityBikes? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
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
    Variables$Query$CityBikes? variables,
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
          variables: variables?.toJson() ?? {},
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
  FetchMoreOptions$Query$CityBikes({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$CityBikes? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
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
    Variables$Query$CityBikes? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryCityBikes),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CityBikes? readQuery$CityBikes({
    Variables$Query$CityBikes? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCityBikes),
        variables: variables?.toJson() ?? const {},
      ),
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
    this.stationId,
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
    final l$stationId = json['stationId'];
    final l$lat = json['lat'];
    final l$lon = json['lon'];
    final l$$__typename = json['__typename'];
    return Query$CityBikes$bikeRentalStations(
      name: (l$name as String),
      bikesAvailable: (l$bikesAvailable as int?),
      capacity: (l$capacity as int?),
      realtime: (l$realtime as bool?),
      stationId: (l$stationId as String?),
      lat: (l$lat as num?)?.toDouble(),
      lon: (l$lon as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int? bikesAvailable;

  final int? capacity;

  final bool? realtime;

  final String? stationId;

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
    final l$stationId = stationId;
    _resultData['stationId'] = l$stationId;
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
    final l$stationId = stationId;
    final l$lat = lat;
    final l$lon = lon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$bikesAvailable,
      l$capacity,
      l$realtime,
      l$stationId,
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
    final l$stationId = stationId;
    final lOther$stationId = other.stationId;
    if (l$stationId != lOther$stationId) {
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
    String? stationId,
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
    Object? stationId = _undefined,
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
        stationId: stationId == _undefined
            ? _instance.stationId
            : (stationId as String?),
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
    String? stationId,
    double? lat,
    double? lon,
    String? $__typename,
  }) =>
      _res;
}
