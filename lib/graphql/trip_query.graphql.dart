import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Trip {
  factory Variables$Query$Trip({required String gtfsId}) =>
      Variables$Query$Trip._({
        r'gtfsId': gtfsId,
      });

  Variables$Query$Trip._(this._$data);

  factory Variables$Query$Trip.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$gtfsId = data['gtfsId'];
    result$data['gtfsId'] = (l$gtfsId as String);
    return Variables$Query$Trip._(result$data);
  }

  Map<String, dynamic> _$data;

  String get gtfsId => (_$data['gtfsId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gtfsId = gtfsId;
    result$data['gtfsId'] = l$gtfsId;
    return result$data;
  }

  CopyWith$Variables$Query$Trip<Variables$Query$Trip> get copyWith =>
      CopyWith$Variables$Query$Trip(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Trip) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$gtfsId = gtfsId;
    final lOther$gtfsId = other.gtfsId;
    if (l$gtfsId != lOther$gtfsId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$gtfsId = gtfsId;
    return Object.hashAll([l$gtfsId]);
  }
}

abstract class CopyWith$Variables$Query$Trip<TRes> {
  factory CopyWith$Variables$Query$Trip(
    Variables$Query$Trip instance,
    TRes Function(Variables$Query$Trip) then,
  ) = _CopyWithImpl$Variables$Query$Trip;

  factory CopyWith$Variables$Query$Trip.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Trip;

  TRes call({String? gtfsId});
}

class _CopyWithImpl$Variables$Query$Trip<TRes>
    implements CopyWith$Variables$Query$Trip<TRes> {
  _CopyWithImpl$Variables$Query$Trip(
    this._instance,
    this._then,
  );

  final Variables$Query$Trip _instance;

  final TRes Function(Variables$Query$Trip) _then;

  static const _undefined = {};

  TRes call({Object? gtfsId = _undefined}) => _then(Variables$Query$Trip._({
        ..._instance._$data,
        if (gtfsId != _undefined && gtfsId != null)
          'gtfsId': (gtfsId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Trip<TRes>
    implements CopyWith$Variables$Query$Trip<TRes> {
  _CopyWithStubImpl$Variables$Query$Trip(this._res);

  TRes _res;

  call({String? gtfsId}) => _res;
}

class Query$Trip {
  Query$Trip({
    this.trip,
    required this.$__typename,
  });

  factory Query$Trip.fromJson(Map<String, dynamic> json) {
    final l$trip = json['trip'];
    final l$$__typename = json['__typename'];
    return Query$Trip(
      trip: l$trip == null
          ? null
          : Query$Trip$trip.fromJson((l$trip as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Trip$trip? trip;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trip = trip;
    _resultData['trip'] = l$trip?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trip = trip;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trip,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Trip) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$trip = trip;
    final lOther$trip = other.trip;
    if (l$trip != lOther$trip) {
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

extension UtilityExtension$Query$Trip on Query$Trip {
  CopyWith$Query$Trip<Query$Trip> get copyWith => CopyWith$Query$Trip(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Trip<TRes> {
  factory CopyWith$Query$Trip(
    Query$Trip instance,
    TRes Function(Query$Trip) then,
  ) = _CopyWithImpl$Query$Trip;

  factory CopyWith$Query$Trip.stub(TRes res) = _CopyWithStubImpl$Query$Trip;

  TRes call({
    Query$Trip$trip? trip,
    String? $__typename,
  });
  CopyWith$Query$Trip$trip<TRes> get trip;
}

class _CopyWithImpl$Query$Trip<TRes> implements CopyWith$Query$Trip<TRes> {
  _CopyWithImpl$Query$Trip(
    this._instance,
    this._then,
  );

  final Query$Trip _instance;

  final TRes Function(Query$Trip) _then;

  static const _undefined = {};

  TRes call({
    Object? trip = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Trip(
        trip: trip == _undefined ? _instance.trip : (trip as Query$Trip$trip?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Trip$trip<TRes> get trip {
    final local$trip = _instance.trip;
    return local$trip == null
        ? CopyWith$Query$Trip$trip.stub(_then(_instance))
        : CopyWith$Query$Trip$trip(local$trip, (e) => call(trip: e));
  }
}

class _CopyWithStubImpl$Query$Trip<TRes> implements CopyWith$Query$Trip<TRes> {
  _CopyWithStubImpl$Query$Trip(this._res);

  TRes _res;

  call({
    Query$Trip$trip? trip,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Trip$trip<TRes> get trip =>
      CopyWith$Query$Trip$trip.stub(_res);
}

const documentNodeQueryTrip = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Trip'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gtfsId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'trip'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'gtfsId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'gtfsId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tripHeadsign'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'routeShortName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'stoptimes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'realtimeArrival'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'stop'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                    name: NameNode(value: 'gtfsId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'platformCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'code'),
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
Query$Trip _parserFn$Query$Trip(Map<String, dynamic> data) =>
    Query$Trip.fromJson(data);

class Options$Query$Trip extends graphql.QueryOptions<Query$Trip> {
  Options$Query$Trip({
    String? operationName,
    required Variables$Query$Trip variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryTrip,
          parserFn: _parserFn$Query$Trip,
        );
}

class WatchOptions$Query$Trip extends graphql.WatchQueryOptions<Query$Trip> {
  WatchOptions$Query$Trip({
    String? operationName,
    required Variables$Query$Trip variables,
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
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryTrip,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Trip,
        );
}

class FetchMoreOptions$Query$Trip extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Trip({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Trip variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryTrip,
        );
}

extension ClientExtension$Query$Trip on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Trip>> query$Trip(
          Options$Query$Trip options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Trip> watchQuery$Trip(
          WatchOptions$Query$Trip options) =>
      this.watchQuery(options);
  void writeQuery$Trip({
    required Query$Trip data,
    required Variables$Query$Trip variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryTrip),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Trip? readQuery$Trip({
    required Variables$Query$Trip variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryTrip),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Trip.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Trip> useQuery$Trip(
        Options$Query$Trip options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Trip> useWatchQuery$Trip(
        WatchOptions$Query$Trip options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Trip$Widget extends graphql_flutter.Query<Query$Trip> {
  Query$Trip$Widget({
    widgets.Key? key,
    required Options$Query$Trip options,
    required graphql_flutter.QueryBuilder<Query$Trip> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Trip$trip {
  Query$Trip$trip({
    required this.gtfsId,
    this.tripHeadsign,
    this.routeShortName,
    this.stoptimes,
    required this.$__typename,
  });

  factory Query$Trip$trip.fromJson(Map<String, dynamic> json) {
    final l$gtfsId = json['gtfsId'];
    final l$tripHeadsign = json['tripHeadsign'];
    final l$routeShortName = json['routeShortName'];
    final l$stoptimes = json['stoptimes'];
    final l$$__typename = json['__typename'];
    return Query$Trip$trip(
      gtfsId: (l$gtfsId as String),
      tripHeadsign: (l$tripHeadsign as String?),
      routeShortName: (l$routeShortName as String?),
      stoptimes: (l$stoptimes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Trip$trip$stoptimes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String gtfsId;

  final String? tripHeadsign;

  final String? routeShortName;

  final List<Query$Trip$trip$stoptimes?>? stoptimes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gtfsId = gtfsId;
    _resultData['gtfsId'] = l$gtfsId;
    final l$tripHeadsign = tripHeadsign;
    _resultData['tripHeadsign'] = l$tripHeadsign;
    final l$routeShortName = routeShortName;
    _resultData['routeShortName'] = l$routeShortName;
    final l$stoptimes = stoptimes;
    _resultData['stoptimes'] = l$stoptimes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gtfsId = gtfsId;
    final l$tripHeadsign = tripHeadsign;
    final l$routeShortName = routeShortName;
    final l$stoptimes = stoptimes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$gtfsId,
      l$tripHeadsign,
      l$routeShortName,
      l$stoptimes == null ? null : Object.hashAll(l$stoptimes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Trip$trip) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$gtfsId = gtfsId;
    final lOther$gtfsId = other.gtfsId;
    if (l$gtfsId != lOther$gtfsId) {
      return false;
    }
    final l$tripHeadsign = tripHeadsign;
    final lOther$tripHeadsign = other.tripHeadsign;
    if (l$tripHeadsign != lOther$tripHeadsign) {
      return false;
    }
    final l$routeShortName = routeShortName;
    final lOther$routeShortName = other.routeShortName;
    if (l$routeShortName != lOther$routeShortName) {
      return false;
    }
    final l$stoptimes = stoptimes;
    final lOther$stoptimes = other.stoptimes;
    if (l$stoptimes != null && lOther$stoptimes != null) {
      if (l$stoptimes.length != lOther$stoptimes.length) {
        return false;
      }
      for (int i = 0; i < l$stoptimes.length; i++) {
        final l$stoptimes$entry = l$stoptimes[i];
        final lOther$stoptimes$entry = lOther$stoptimes[i];
        if (l$stoptimes$entry != lOther$stoptimes$entry) {
          return false;
        }
      }
    } else if (l$stoptimes != lOther$stoptimes) {
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

extension UtilityExtension$Query$Trip$trip on Query$Trip$trip {
  CopyWith$Query$Trip$trip<Query$Trip$trip> get copyWith =>
      CopyWith$Query$Trip$trip(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Trip$trip<TRes> {
  factory CopyWith$Query$Trip$trip(
    Query$Trip$trip instance,
    TRes Function(Query$Trip$trip) then,
  ) = _CopyWithImpl$Query$Trip$trip;

  factory CopyWith$Query$Trip$trip.stub(TRes res) =
      _CopyWithStubImpl$Query$Trip$trip;

  TRes call({
    String? gtfsId,
    String? tripHeadsign,
    String? routeShortName,
    List<Query$Trip$trip$stoptimes?>? stoptimes,
    String? $__typename,
  });
  TRes stoptimes(
      Iterable<Query$Trip$trip$stoptimes?>? Function(
              Iterable<
                  CopyWith$Query$Trip$trip$stoptimes<
                      Query$Trip$trip$stoptimes>?>?)
          _fn);
}

class _CopyWithImpl$Query$Trip$trip<TRes>
    implements CopyWith$Query$Trip$trip<TRes> {
  _CopyWithImpl$Query$Trip$trip(
    this._instance,
    this._then,
  );

  final Query$Trip$trip _instance;

  final TRes Function(Query$Trip$trip) _then;

  static const _undefined = {};

  TRes call({
    Object? gtfsId = _undefined,
    Object? tripHeadsign = _undefined,
    Object? routeShortName = _undefined,
    Object? stoptimes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Trip$trip(
        gtfsId: gtfsId == _undefined || gtfsId == null
            ? _instance.gtfsId
            : (gtfsId as String),
        tripHeadsign: tripHeadsign == _undefined
            ? _instance.tripHeadsign
            : (tripHeadsign as String?),
        routeShortName: routeShortName == _undefined
            ? _instance.routeShortName
            : (routeShortName as String?),
        stoptimes: stoptimes == _undefined
            ? _instance.stoptimes
            : (stoptimes as List<Query$Trip$trip$stoptimes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes stoptimes(
          Iterable<Query$Trip$trip$stoptimes?>? Function(
                  Iterable<
                      CopyWith$Query$Trip$trip$stoptimes<
                          Query$Trip$trip$stoptimes>?>?)
              _fn) =>
      call(
          stoptimes: _fn(_instance.stoptimes?.map((e) => e == null
              ? null
              : CopyWith$Query$Trip$trip$stoptimes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Trip$trip<TRes>
    implements CopyWith$Query$Trip$trip<TRes> {
  _CopyWithStubImpl$Query$Trip$trip(this._res);

  TRes _res;

  call({
    String? gtfsId,
    String? tripHeadsign,
    String? routeShortName,
    List<Query$Trip$trip$stoptimes?>? stoptimes,
    String? $__typename,
  }) =>
      _res;
  stoptimes(_fn) => _res;
}

class Query$Trip$trip$stoptimes {
  Query$Trip$trip$stoptimes({
    this.realtimeArrival,
    this.stop,
    required this.$__typename,
  });

  factory Query$Trip$trip$stoptimes.fromJson(Map<String, dynamic> json) {
    final l$realtimeArrival = json['realtimeArrival'];
    final l$stop = json['stop'];
    final l$$__typename = json['__typename'];
    return Query$Trip$trip$stoptimes(
      realtimeArrival: (l$realtimeArrival as int?),
      stop: l$stop == null
          ? null
          : Query$Trip$trip$stoptimes$stop.fromJson(
              (l$stop as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? realtimeArrival;

  final Query$Trip$trip$stoptimes$stop? stop;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$realtimeArrival = realtimeArrival;
    _resultData['realtimeArrival'] = l$realtimeArrival;
    final l$stop = stop;
    _resultData['stop'] = l$stop?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$realtimeArrival = realtimeArrival;
    final l$stop = stop;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$realtimeArrival,
      l$stop,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Trip$trip$stoptimes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$realtimeArrival = realtimeArrival;
    final lOther$realtimeArrival = other.realtimeArrival;
    if (l$realtimeArrival != lOther$realtimeArrival) {
      return false;
    }
    final l$stop = stop;
    final lOther$stop = other.stop;
    if (l$stop != lOther$stop) {
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

extension UtilityExtension$Query$Trip$trip$stoptimes
    on Query$Trip$trip$stoptimes {
  CopyWith$Query$Trip$trip$stoptimes<Query$Trip$trip$stoptimes> get copyWith =>
      CopyWith$Query$Trip$trip$stoptimes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Trip$trip$stoptimes<TRes> {
  factory CopyWith$Query$Trip$trip$stoptimes(
    Query$Trip$trip$stoptimes instance,
    TRes Function(Query$Trip$trip$stoptimes) then,
  ) = _CopyWithImpl$Query$Trip$trip$stoptimes;

  factory CopyWith$Query$Trip$trip$stoptimes.stub(TRes res) =
      _CopyWithStubImpl$Query$Trip$trip$stoptimes;

  TRes call({
    int? realtimeArrival,
    Query$Trip$trip$stoptimes$stop? stop,
    String? $__typename,
  });
  CopyWith$Query$Trip$trip$stoptimes$stop<TRes> get stop;
}

class _CopyWithImpl$Query$Trip$trip$stoptimes<TRes>
    implements CopyWith$Query$Trip$trip$stoptimes<TRes> {
  _CopyWithImpl$Query$Trip$trip$stoptimes(
    this._instance,
    this._then,
  );

  final Query$Trip$trip$stoptimes _instance;

  final TRes Function(Query$Trip$trip$stoptimes) _then;

  static const _undefined = {};

  TRes call({
    Object? realtimeArrival = _undefined,
    Object? stop = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Trip$trip$stoptimes(
        realtimeArrival: realtimeArrival == _undefined
            ? _instance.realtimeArrival
            : (realtimeArrival as int?),
        stop: stop == _undefined
            ? _instance.stop
            : (stop as Query$Trip$trip$stoptimes$stop?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Trip$trip$stoptimes$stop<TRes> get stop {
    final local$stop = _instance.stop;
    return local$stop == null
        ? CopyWith$Query$Trip$trip$stoptimes$stop.stub(_then(_instance))
        : CopyWith$Query$Trip$trip$stoptimes$stop(
            local$stop, (e) => call(stop: e));
  }
}

class _CopyWithStubImpl$Query$Trip$trip$stoptimes<TRes>
    implements CopyWith$Query$Trip$trip$stoptimes<TRes> {
  _CopyWithStubImpl$Query$Trip$trip$stoptimes(this._res);

  TRes _res;

  call({
    int? realtimeArrival,
    Query$Trip$trip$stoptimes$stop? stop,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Trip$trip$stoptimes$stop<TRes> get stop =>
      CopyWith$Query$Trip$trip$stoptimes$stop.stub(_res);
}

class Query$Trip$trip$stoptimes$stop {
  Query$Trip$trip$stoptimes$stop({
    this.lat,
    this.lon,
    required this.gtfsId,
    required this.name,
    this.platformCode,
    this.code,
    required this.$__typename,
  });

  factory Query$Trip$trip$stoptimes$stop.fromJson(Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lon = json['lon'];
    final l$gtfsId = json['gtfsId'];
    final l$name = json['name'];
    final l$platformCode = json['platformCode'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$Trip$trip$stoptimes$stop(
      lat: (l$lat as num?)?.toDouble(),
      lon: (l$lon as num?)?.toDouble(),
      gtfsId: (l$gtfsId as String),
      name: (l$name as String),
      platformCode: (l$platformCode as String?),
      code: (l$code as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? lat;

  final double? lon;

  final String gtfsId;

  final String name;

  final String? platformCode;

  final String? code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lon = lon;
    _resultData['lon'] = l$lon;
    final l$gtfsId = gtfsId;
    _resultData['gtfsId'] = l$gtfsId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$platformCode = platformCode;
    _resultData['platformCode'] = l$platformCode;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lon = lon;
    final l$gtfsId = gtfsId;
    final l$name = name;
    final l$platformCode = platformCode;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lat,
      l$lon,
      l$gtfsId,
      l$name,
      l$platformCode,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Trip$trip$stoptimes$stop) ||
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
    final l$gtfsId = gtfsId;
    final lOther$gtfsId = other.gtfsId;
    if (l$gtfsId != lOther$gtfsId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$platformCode = platformCode;
    final lOther$platformCode = other.platformCode;
    if (l$platformCode != lOther$platformCode) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$Trip$trip$stoptimes$stop
    on Query$Trip$trip$stoptimes$stop {
  CopyWith$Query$Trip$trip$stoptimes$stop<Query$Trip$trip$stoptimes$stop>
      get copyWith => CopyWith$Query$Trip$trip$stoptimes$stop(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Trip$trip$stoptimes$stop<TRes> {
  factory CopyWith$Query$Trip$trip$stoptimes$stop(
    Query$Trip$trip$stoptimes$stop instance,
    TRes Function(Query$Trip$trip$stoptimes$stop) then,
  ) = _CopyWithImpl$Query$Trip$trip$stoptimes$stop;

  factory CopyWith$Query$Trip$trip$stoptimes$stop.stub(TRes res) =
      _CopyWithStubImpl$Query$Trip$trip$stoptimes$stop;

  TRes call({
    double? lat,
    double? lon,
    String? gtfsId,
    String? name,
    String? platformCode,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Trip$trip$stoptimes$stop<TRes>
    implements CopyWith$Query$Trip$trip$stoptimes$stop<TRes> {
  _CopyWithImpl$Query$Trip$trip$stoptimes$stop(
    this._instance,
    this._then,
  );

  final Query$Trip$trip$stoptimes$stop _instance;

  final TRes Function(Query$Trip$trip$stoptimes$stop) _then;

  static const _undefined = {};

  TRes call({
    Object? lat = _undefined,
    Object? lon = _undefined,
    Object? gtfsId = _undefined,
    Object? name = _undefined,
    Object? platformCode = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Trip$trip$stoptimes$stop(
        lat: lat == _undefined ? _instance.lat : (lat as double?),
        lon: lon == _undefined ? _instance.lon : (lon as double?),
        gtfsId: gtfsId == _undefined || gtfsId == null
            ? _instance.gtfsId
            : (gtfsId as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        platformCode: platformCode == _undefined
            ? _instance.platformCode
            : (platformCode as String?),
        code: code == _undefined ? _instance.code : (code as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Trip$trip$stoptimes$stop<TRes>
    implements CopyWith$Query$Trip$trip$stoptimes$stop<TRes> {
  _CopyWithStubImpl$Query$Trip$trip$stoptimes$stop(this._res);

  TRes _res;

  call({
    double? lat,
    double? lon,
    String? gtfsId,
    String? name,
    String? platformCode,
    String? code,
    String? $__typename,
  }) =>
      _res;
}
