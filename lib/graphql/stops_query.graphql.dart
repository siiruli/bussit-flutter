import 'package:bussit/graphql/scalar.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Query$StopData {
  factory Variables$Query$StopData({
    List<String?>? ids,
    String? name,
    int? maxResults,
  }) =>
      Variables$Query$StopData._({
        if (ids != null) r'ids': ids,
        if (name != null) r'name': name,
        if (maxResults != null) r'maxResults': maxResults,
      });

  Variables$Query$StopData._(this._$data);

  factory Variables$Query$StopData.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('maxResults')) {
      final l$maxResults = data['maxResults'];
      result$data['maxResults'] = (l$maxResults as int?);
    }
    return Variables$Query$StopData._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String?>? get ids => (_$data['ids'] as List<String?>?);
  String? get name => (_$data['name'] as String?);
  int? get maxResults => (_$data['maxResults'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('maxResults')) {
      final l$maxResults = maxResults;
      result$data['maxResults'] = l$maxResults;
    }
    return result$data;
  }

  CopyWith$Variables$Query$StopData<Variables$Query$StopData> get copyWith =>
      CopyWith$Variables$Query$StopData(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$StopData) ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$maxResults = maxResults;
    final lOther$maxResults = other.maxResults;
    if (_$data.containsKey('maxResults') !=
        other._$data.containsKey('maxResults')) {
      return false;
    }
    if (l$maxResults != lOther$maxResults) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ids = ids;
    final l$name = name;
    final l$maxResults = maxResults;
    return Object.hashAll([
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('maxResults') ? l$maxResults : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$StopData<TRes> {
  factory CopyWith$Variables$Query$StopData(
    Variables$Query$StopData instance,
    TRes Function(Variables$Query$StopData) then,
  ) = _CopyWithImpl$Variables$Query$StopData;

  factory CopyWith$Variables$Query$StopData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$StopData;

  TRes call({
    List<String?>? ids,
    String? name,
    int? maxResults,
  });
}

class _CopyWithImpl$Variables$Query$StopData<TRes>
    implements CopyWith$Variables$Query$StopData<TRes> {
  _CopyWithImpl$Variables$Query$StopData(
    this._instance,
    this._then,
  );

  final Variables$Query$StopData _instance;

  final TRes Function(Variables$Query$StopData) _then;

  static const _undefined = {};

  TRes call({
    Object? ids = _undefined,
    Object? name = _undefined,
    Object? maxResults = _undefined,
  }) =>
      _then(Variables$Query$StopData._({
        ..._instance._$data,
        if (ids != _undefined) 'ids': (ids as List<String?>?),
        if (name != _undefined) 'name': (name as String?),
        if (maxResults != _undefined) 'maxResults': (maxResults as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$StopData<TRes>
    implements CopyWith$Variables$Query$StopData<TRes> {
  _CopyWithStubImpl$Variables$Query$StopData(this._res);

  TRes _res;

  call({
    List<String?>? ids,
    String? name,
    int? maxResults,
  }) =>
      _res;
}

class Query$StopData {
  Query$StopData({
    this.stops,
    required this.$__typename,
  });

  factory Query$StopData.fromJson(Map<String, dynamic> json) {
    final l$stops = json['stops'];
    final l$$__typename = json['__typename'];
    return Query$StopData(
      stops: (l$stops as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$StopData$stops.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$StopData$stops?>? stops;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stops = stops;
    _resultData['stops'] = l$stops?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stops = stops;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$stops == null ? null : Object.hashAll(l$stops.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StopData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$stops = stops;
    final lOther$stops = other.stops;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$StopData on Query$StopData {
  CopyWith$Query$StopData<Query$StopData> get copyWith =>
      CopyWith$Query$StopData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StopData<TRes> {
  factory CopyWith$Query$StopData(
    Query$StopData instance,
    TRes Function(Query$StopData) then,
  ) = _CopyWithImpl$Query$StopData;

  factory CopyWith$Query$StopData.stub(TRes res) =
      _CopyWithStubImpl$Query$StopData;

  TRes call({
    List<Query$StopData$stops?>? stops,
    String? $__typename,
  });
  TRes stops(
      Iterable<Query$StopData$stops?>? Function(
              Iterable<CopyWith$Query$StopData$stops<Query$StopData$stops>?>?)
          _fn);
}

class _CopyWithImpl$Query$StopData<TRes>
    implements CopyWith$Query$StopData<TRes> {
  _CopyWithImpl$Query$StopData(
    this._instance,
    this._then,
  );

  final Query$StopData _instance;

  final TRes Function(Query$StopData) _then;

  static const _undefined = {};

  TRes call({
    Object? stops = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StopData(
        stops: stops == _undefined
            ? _instance.stops
            : (stops as List<Query$StopData$stops?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes stops(
          Iterable<Query$StopData$stops?>? Function(
                  Iterable<
                      CopyWith$Query$StopData$stops<Query$StopData$stops>?>?)
              _fn) =>
      call(
          stops: _fn(_instance.stops?.map((e) => e == null
              ? null
              : CopyWith$Query$StopData$stops(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$StopData<TRes>
    implements CopyWith$Query$StopData<TRes> {
  _CopyWithStubImpl$Query$StopData(this._res);

  TRes _res;

  call({
    List<Query$StopData$stops?>? stops,
    String? $__typename,
  }) =>
      _res;
  stops(_fn) => _res;
}

const documentNodeQueryStopData = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'StopData'),
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
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'maxResults')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'stops'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'ids'),
            value: VariableNode(name: NameNode(value: 'ids')),
          ),
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'maxResults'),
            value: VariableNode(name: NameNode(value: 'maxResults')),
          ),
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
            name: NameNode(value: 'gtfsId'),
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
            name: NameNode(value: 'desc'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'zoneId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'vehicleMode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'locationType'),
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
            name: NameNode(value: 'parentStation'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'cluster'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'stoptimesWithoutPatterns'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'scheduledArrival'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'realtimeArrival'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'arrivalDelay'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'scheduledDeparture'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'realtimeDeparture'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'departureDelay'),
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
                name: NameNode(value: 'realtimeState'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'serviceDay'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'headsign'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'trip'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'route'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'shortName'),
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
Query$StopData _parserFn$Query$StopData(Map<String, dynamic> data) =>
    Query$StopData.fromJson(data);

class Options$Query$StopData extends graphql.QueryOptions<Query$StopData> {
  Options$Query$StopData({
    String? operationName,
    Variables$Query$StopData? variables,
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
          document: documentNodeQueryStopData,
          parserFn: _parserFn$Query$StopData,
        );
}

class WatchOptions$Query$StopData
    extends graphql.WatchQueryOptions<Query$StopData> {
  WatchOptions$Query$StopData({
    String? operationName,
    Variables$Query$StopData? variables,
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
          document: documentNodeQueryStopData,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$StopData,
        );
}

class FetchMoreOptions$Query$StopData extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$StopData({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$StopData? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryStopData,
        );
}

extension ClientExtension$Query$StopData on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$StopData>> query$StopData(
          [Options$Query$StopData? options]) async =>
      await this.query(options ?? Options$Query$StopData());
  graphql.ObservableQuery<Query$StopData> watchQuery$StopData(
          [WatchOptions$Query$StopData? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$StopData());
  void writeQuery$StopData({
    required Query$StopData data,
    Variables$Query$StopData? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryStopData),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$StopData? readQuery$StopData({
    Variables$Query$StopData? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryStopData),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$StopData.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$StopData> useQuery$StopData(
        [Options$Query$StopData? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$StopData());
graphql.ObservableQuery<Query$StopData> useWatchQuery$StopData(
        [WatchOptions$Query$StopData? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$StopData());

class Query$StopData$Widget extends graphql_flutter.Query<Query$StopData> {
  Query$StopData$Widget({
    widgets.Key? key,
    Options$Query$StopData? options,
    required graphql_flutter.QueryBuilder<Query$StopData> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$StopData(),
          builder: builder,
        );
}

class Query$StopData$stops {
  Query$StopData$stops({
    required this.name,
    required this.gtfsId,
    this.code,
    this.desc,
    this.zoneId,
    this.vehicleMode,
    this.locationType,
    this.platformCode,
    this.parentStation,
    this.cluster,
    this.stoptimesWithoutPatterns,
    required this.$__typename,
  });

  factory Query$StopData$stops.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$gtfsId = json['gtfsId'];
    final l$code = json['code'];
    final l$desc = json['desc'];
    final l$zoneId = json['zoneId'];
    final l$vehicleMode = json['vehicleMode'];
    final l$locationType = json['locationType'];
    final l$platformCode = json['platformCode'];
    final l$parentStation = json['parentStation'];
    final l$cluster = json['cluster'];
    final l$stoptimesWithoutPatterns = json['stoptimesWithoutPatterns'];
    final l$$__typename = json['__typename'];
    return Query$StopData$stops(
      name: (l$name as String),
      gtfsId: (l$gtfsId as String),
      code: (l$code as String?),
      desc: (l$desc as String?),
      zoneId: (l$zoneId as String?),
      vehicleMode: l$vehicleMode == null
          ? null
          : fromJson$Enum$Mode((l$vehicleMode as String)),
      locationType: l$locationType == null
          ? null
          : fromJson$Enum$LocationType((l$locationType as String)),
      platformCode: (l$platformCode as String?),
      parentStation: l$parentStation == null
          ? null
          : Query$StopData$stops$parentStation.fromJson(
              (l$parentStation as Map<String, dynamic>)),
      cluster: l$cluster == null
          ? null
          : Query$StopData$stops$cluster.fromJson(
              (l$cluster as Map<String, dynamic>)),
      stoptimesWithoutPatterns: (l$stoptimesWithoutPatterns as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$StopData$stops$stoptimesWithoutPatterns.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String gtfsId;

  final String? code;

  final String? desc;

  final String? zoneId;

  final Enum$Mode? vehicleMode;

  final Enum$LocationType? locationType;

  final String? platformCode;

  final Query$StopData$stops$parentStation? parentStation;

  final Query$StopData$stops$cluster? cluster;

  final List<Query$StopData$stops$stoptimesWithoutPatterns?>?
      stoptimesWithoutPatterns;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$gtfsId = gtfsId;
    _resultData['gtfsId'] = l$gtfsId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$desc = desc;
    _resultData['desc'] = l$desc;
    final l$zoneId = zoneId;
    _resultData['zoneId'] = l$zoneId;
    final l$vehicleMode = vehicleMode;
    _resultData['vehicleMode'] =
        l$vehicleMode == null ? null : toJson$Enum$Mode(l$vehicleMode);
    final l$locationType = locationType;
    _resultData['locationType'] = l$locationType == null
        ? null
        : toJson$Enum$LocationType(l$locationType);
    final l$platformCode = platformCode;
    _resultData['platformCode'] = l$platformCode;
    final l$parentStation = parentStation;
    _resultData['parentStation'] = l$parentStation?.toJson();
    final l$cluster = cluster;
    _resultData['cluster'] = l$cluster?.toJson();
    final l$stoptimesWithoutPatterns = stoptimesWithoutPatterns;
    _resultData['stoptimesWithoutPatterns'] =
        l$stoptimesWithoutPatterns?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$gtfsId = gtfsId;
    final l$code = code;
    final l$desc = desc;
    final l$zoneId = zoneId;
    final l$vehicleMode = vehicleMode;
    final l$locationType = locationType;
    final l$platformCode = platformCode;
    final l$parentStation = parentStation;
    final l$cluster = cluster;
    final l$stoptimesWithoutPatterns = stoptimesWithoutPatterns;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$gtfsId,
      l$code,
      l$desc,
      l$zoneId,
      l$vehicleMode,
      l$locationType,
      l$platformCode,
      l$parentStation,
      l$cluster,
      l$stoptimesWithoutPatterns == null
          ? null
          : Object.hashAll(l$stoptimesWithoutPatterns.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StopData$stops) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$gtfsId = gtfsId;
    final lOther$gtfsId = other.gtfsId;
    if (l$gtfsId != lOther$gtfsId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (l$desc != lOther$desc) {
      return false;
    }
    final l$zoneId = zoneId;
    final lOther$zoneId = other.zoneId;
    if (l$zoneId != lOther$zoneId) {
      return false;
    }
    final l$vehicleMode = vehicleMode;
    final lOther$vehicleMode = other.vehicleMode;
    if (l$vehicleMode != lOther$vehicleMode) {
      return false;
    }
    final l$locationType = locationType;
    final lOther$locationType = other.locationType;
    if (l$locationType != lOther$locationType) {
      return false;
    }
    final l$platformCode = platformCode;
    final lOther$platformCode = other.platformCode;
    if (l$platformCode != lOther$platformCode) {
      return false;
    }
    final l$parentStation = parentStation;
    final lOther$parentStation = other.parentStation;
    if (l$parentStation != lOther$parentStation) {
      return false;
    }
    final l$cluster = cluster;
    final lOther$cluster = other.cluster;
    if (l$cluster != lOther$cluster) {
      return false;
    }
    final l$stoptimesWithoutPatterns = stoptimesWithoutPatterns;
    final lOther$stoptimesWithoutPatterns = other.stoptimesWithoutPatterns;
    if (l$stoptimesWithoutPatterns != null &&
        lOther$stoptimesWithoutPatterns != null) {
      if (l$stoptimesWithoutPatterns.length !=
          lOther$stoptimesWithoutPatterns.length) {
        return false;
      }
      for (int i = 0; i < l$stoptimesWithoutPatterns.length; i++) {
        final l$stoptimesWithoutPatterns$entry = l$stoptimesWithoutPatterns[i];
        final lOther$stoptimesWithoutPatterns$entry =
            lOther$stoptimesWithoutPatterns[i];
        if (l$stoptimesWithoutPatterns$entry !=
            lOther$stoptimesWithoutPatterns$entry) {
          return false;
        }
      }
    } else if (l$stoptimesWithoutPatterns != lOther$stoptimesWithoutPatterns) {
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

extension UtilityExtension$Query$StopData$stops on Query$StopData$stops {
  CopyWith$Query$StopData$stops<Query$StopData$stops> get copyWith =>
      CopyWith$Query$StopData$stops(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StopData$stops<TRes> {
  factory CopyWith$Query$StopData$stops(
    Query$StopData$stops instance,
    TRes Function(Query$StopData$stops) then,
  ) = _CopyWithImpl$Query$StopData$stops;

  factory CopyWith$Query$StopData$stops.stub(TRes res) =
      _CopyWithStubImpl$Query$StopData$stops;

  TRes call({
    String? name,
    String? gtfsId,
    String? code,
    String? desc,
    String? zoneId,
    Enum$Mode? vehicleMode,
    Enum$LocationType? locationType,
    String? platformCode,
    Query$StopData$stops$parentStation? parentStation,
    Query$StopData$stops$cluster? cluster,
    List<Query$StopData$stops$stoptimesWithoutPatterns?>?
        stoptimesWithoutPatterns,
    String? $__typename,
  });
  CopyWith$Query$StopData$stops$parentStation<TRes> get parentStation;
  CopyWith$Query$StopData$stops$cluster<TRes> get cluster;
  TRes stoptimesWithoutPatterns(
      Iterable<Query$StopData$stops$stoptimesWithoutPatterns?>? Function(
              Iterable<
                  CopyWith$Query$StopData$stops$stoptimesWithoutPatterns<
                      Query$StopData$stops$stoptimesWithoutPatterns>?>?)
          _fn);
}

class _CopyWithImpl$Query$StopData$stops<TRes>
    implements CopyWith$Query$StopData$stops<TRes> {
  _CopyWithImpl$Query$StopData$stops(
    this._instance,
    this._then,
  );

  final Query$StopData$stops _instance;

  final TRes Function(Query$StopData$stops) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? gtfsId = _undefined,
    Object? code = _undefined,
    Object? desc = _undefined,
    Object? zoneId = _undefined,
    Object? vehicleMode = _undefined,
    Object? locationType = _undefined,
    Object? platformCode = _undefined,
    Object? parentStation = _undefined,
    Object? cluster = _undefined,
    Object? stoptimesWithoutPatterns = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StopData$stops(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        gtfsId: gtfsId == _undefined || gtfsId == null
            ? _instance.gtfsId
            : (gtfsId as String),
        code: code == _undefined ? _instance.code : (code as String?),
        desc: desc == _undefined ? _instance.desc : (desc as String?),
        zoneId: zoneId == _undefined ? _instance.zoneId : (zoneId as String?),
        vehicleMode: vehicleMode == _undefined
            ? _instance.vehicleMode
            : (vehicleMode as Enum$Mode?),
        locationType: locationType == _undefined
            ? _instance.locationType
            : (locationType as Enum$LocationType?),
        platformCode: platformCode == _undefined
            ? _instance.platformCode
            : (platformCode as String?),
        parentStation: parentStation == _undefined
            ? _instance.parentStation
            : (parentStation as Query$StopData$stops$parentStation?),
        cluster: cluster == _undefined
            ? _instance.cluster
            : (cluster as Query$StopData$stops$cluster?),
        stoptimesWithoutPatterns: stoptimesWithoutPatterns == _undefined
            ? _instance.stoptimesWithoutPatterns
            : (stoptimesWithoutPatterns
                as List<Query$StopData$stops$stoptimesWithoutPatterns?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$StopData$stops$parentStation<TRes> get parentStation {
    final local$parentStation = _instance.parentStation;
    return local$parentStation == null
        ? CopyWith$Query$StopData$stops$parentStation.stub(_then(_instance))
        : CopyWith$Query$StopData$stops$parentStation(
            local$parentStation, (e) => call(parentStation: e));
  }

  CopyWith$Query$StopData$stops$cluster<TRes> get cluster {
    final local$cluster = _instance.cluster;
    return local$cluster == null
        ? CopyWith$Query$StopData$stops$cluster.stub(_then(_instance))
        : CopyWith$Query$StopData$stops$cluster(
            local$cluster, (e) => call(cluster: e));
  }

  TRes stoptimesWithoutPatterns(
          Iterable<Query$StopData$stops$stoptimesWithoutPatterns?>? Function(
                  Iterable<
                      CopyWith$Query$StopData$stops$stoptimesWithoutPatterns<
                          Query$StopData$stops$stoptimesWithoutPatterns>?>?)
              _fn) =>
      call(
          stoptimesWithoutPatterns:
              _fn(_instance.stoptimesWithoutPatterns?.map((e) => e == null
                  ? null
                  : CopyWith$Query$StopData$stops$stoptimesWithoutPatterns(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$StopData$stops<TRes>
    implements CopyWith$Query$StopData$stops<TRes> {
  _CopyWithStubImpl$Query$StopData$stops(this._res);

  TRes _res;

  call({
    String? name,
    String? gtfsId,
    String? code,
    String? desc,
    String? zoneId,
    Enum$Mode? vehicleMode,
    Enum$LocationType? locationType,
    String? platformCode,
    Query$StopData$stops$parentStation? parentStation,
    Query$StopData$stops$cluster? cluster,
    List<Query$StopData$stops$stoptimesWithoutPatterns?>?
        stoptimesWithoutPatterns,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$StopData$stops$parentStation<TRes> get parentStation =>
      CopyWith$Query$StopData$stops$parentStation.stub(_res);
  CopyWith$Query$StopData$stops$cluster<TRes> get cluster =>
      CopyWith$Query$StopData$stops$cluster.stub(_res);
  stoptimesWithoutPatterns(_fn) => _res;
}

class Query$StopData$stops$parentStation {
  Query$StopData$stops$parentStation({
    required this.name,
    required this.$__typename,
  });

  factory Query$StopData$stops$parentStation.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$StopData$stops$parentStation(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StopData$stops$parentStation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$StopData$stops$parentStation
    on Query$StopData$stops$parentStation {
  CopyWith$Query$StopData$stops$parentStation<
          Query$StopData$stops$parentStation>
      get copyWith => CopyWith$Query$StopData$stops$parentStation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StopData$stops$parentStation<TRes> {
  factory CopyWith$Query$StopData$stops$parentStation(
    Query$StopData$stops$parentStation instance,
    TRes Function(Query$StopData$stops$parentStation) then,
  ) = _CopyWithImpl$Query$StopData$stops$parentStation;

  factory CopyWith$Query$StopData$stops$parentStation.stub(TRes res) =
      _CopyWithStubImpl$Query$StopData$stops$parentStation;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$StopData$stops$parentStation<TRes>
    implements CopyWith$Query$StopData$stops$parentStation<TRes> {
  _CopyWithImpl$Query$StopData$stops$parentStation(
    this._instance,
    this._then,
  );

  final Query$StopData$stops$parentStation _instance;

  final TRes Function(Query$StopData$stops$parentStation) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StopData$stops$parentStation(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$StopData$stops$parentStation<TRes>
    implements CopyWith$Query$StopData$stops$parentStation<TRes> {
  _CopyWithStubImpl$Query$StopData$stops$parentStation(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$StopData$stops$cluster {
  Query$StopData$stops$cluster({
    required this.name,
    required this.$__typename,
  });

  factory Query$StopData$stops$cluster.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$StopData$stops$cluster(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StopData$stops$cluster) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$StopData$stops$cluster
    on Query$StopData$stops$cluster {
  CopyWith$Query$StopData$stops$cluster<Query$StopData$stops$cluster>
      get copyWith => CopyWith$Query$StopData$stops$cluster(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StopData$stops$cluster<TRes> {
  factory CopyWith$Query$StopData$stops$cluster(
    Query$StopData$stops$cluster instance,
    TRes Function(Query$StopData$stops$cluster) then,
  ) = _CopyWithImpl$Query$StopData$stops$cluster;

  factory CopyWith$Query$StopData$stops$cluster.stub(TRes res) =
      _CopyWithStubImpl$Query$StopData$stops$cluster;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$StopData$stops$cluster<TRes>
    implements CopyWith$Query$StopData$stops$cluster<TRes> {
  _CopyWithImpl$Query$StopData$stops$cluster(
    this._instance,
    this._then,
  );

  final Query$StopData$stops$cluster _instance;

  final TRes Function(Query$StopData$stops$cluster) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StopData$stops$cluster(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$StopData$stops$cluster<TRes>
    implements CopyWith$Query$StopData$stops$cluster<TRes> {
  _CopyWithStubImpl$Query$StopData$stops$cluster(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$StopData$stops$stoptimesWithoutPatterns {
  Query$StopData$stops$stoptimesWithoutPatterns({
    this.scheduledArrival,
    this.realtimeArrival,
    this.arrivalDelay,
    this.scheduledDeparture,
    this.realtimeDeparture,
    this.departureDelay,
    this.realtime,
    this.realtimeState,
    this.serviceDay,
    this.headsign,
    this.trip,
    required this.$__typename,
  });

  factory Query$StopData$stops$stoptimesWithoutPatterns.fromJson(
      Map<String, dynamic> json) {
    final l$scheduledArrival = json['scheduledArrival'];
    final l$realtimeArrival = json['realtimeArrival'];
    final l$arrivalDelay = json['arrivalDelay'];
    final l$scheduledDeparture = json['scheduledDeparture'];
    final l$realtimeDeparture = json['realtimeDeparture'];
    final l$departureDelay = json['departureDelay'];
    final l$realtime = json['realtime'];
    final l$realtimeState = json['realtimeState'];
    final l$serviceDay = json['serviceDay'];
    final l$headsign = json['headsign'];
    final l$trip = json['trip'];
    final l$$__typename = json['__typename'];
    return Query$StopData$stops$stoptimesWithoutPatterns(
      scheduledArrival: (l$scheduledArrival as int?),
      realtimeArrival: (l$realtimeArrival as int?),
      arrivalDelay: (l$arrivalDelay as int?),
      scheduledDeparture: (l$scheduledDeparture as int?),
      realtimeDeparture: (l$realtimeDeparture as int?),
      departureDelay: (l$departureDelay as int?),
      realtime: (l$realtime as bool?),
      realtimeState: l$realtimeState == null
          ? null
          : fromJson$Enum$RealtimeState((l$realtimeState as String)),
      serviceDay: l$serviceDay == null ? null : longFromJson(l$serviceDay),
      headsign: (l$headsign as String?),
      trip: l$trip == null
          ? null
          : Query$StopData$stops$stoptimesWithoutPatterns$trip.fromJson(
              (l$trip as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? scheduledArrival;

  final int? realtimeArrival;

  final int? arrivalDelay;

  final int? scheduledDeparture;

  final int? realtimeDeparture;

  final int? departureDelay;

  final bool? realtime;

  final Enum$RealtimeState? realtimeState;

  final int? serviceDay;

  final String? headsign;

  final Query$StopData$stops$stoptimesWithoutPatterns$trip? trip;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scheduledArrival = scheduledArrival;
    _resultData['scheduledArrival'] = l$scheduledArrival;
    final l$realtimeArrival = realtimeArrival;
    _resultData['realtimeArrival'] = l$realtimeArrival;
    final l$arrivalDelay = arrivalDelay;
    _resultData['arrivalDelay'] = l$arrivalDelay;
    final l$scheduledDeparture = scheduledDeparture;
    _resultData['scheduledDeparture'] = l$scheduledDeparture;
    final l$realtimeDeparture = realtimeDeparture;
    _resultData['realtimeDeparture'] = l$realtimeDeparture;
    final l$departureDelay = departureDelay;
    _resultData['departureDelay'] = l$departureDelay;
    final l$realtime = realtime;
    _resultData['realtime'] = l$realtime;
    final l$realtimeState = realtimeState;
    _resultData['realtimeState'] = l$realtimeState == null
        ? null
        : toJson$Enum$RealtimeState(l$realtimeState);
    final l$serviceDay = serviceDay;
    _resultData['serviceDay'] =
        l$serviceDay == null ? null : longToJson(l$serviceDay);
    final l$headsign = headsign;
    _resultData['headsign'] = l$headsign;
    final l$trip = trip;
    _resultData['trip'] = l$trip?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scheduledArrival = scheduledArrival;
    final l$realtimeArrival = realtimeArrival;
    final l$arrivalDelay = arrivalDelay;
    final l$scheduledDeparture = scheduledDeparture;
    final l$realtimeDeparture = realtimeDeparture;
    final l$departureDelay = departureDelay;
    final l$realtime = realtime;
    final l$realtimeState = realtimeState;
    final l$serviceDay = serviceDay;
    final l$headsign = headsign;
    final l$trip = trip;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scheduledArrival,
      l$realtimeArrival,
      l$arrivalDelay,
      l$scheduledDeparture,
      l$realtimeDeparture,
      l$departureDelay,
      l$realtime,
      l$realtimeState,
      l$serviceDay,
      l$headsign,
      l$trip,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StopData$stops$stoptimesWithoutPatterns) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scheduledArrival = scheduledArrival;
    final lOther$scheduledArrival = other.scheduledArrival;
    if (l$scheduledArrival != lOther$scheduledArrival) {
      return false;
    }
    final l$realtimeArrival = realtimeArrival;
    final lOther$realtimeArrival = other.realtimeArrival;
    if (l$realtimeArrival != lOther$realtimeArrival) {
      return false;
    }
    final l$arrivalDelay = arrivalDelay;
    final lOther$arrivalDelay = other.arrivalDelay;
    if (l$arrivalDelay != lOther$arrivalDelay) {
      return false;
    }
    final l$scheduledDeparture = scheduledDeparture;
    final lOther$scheduledDeparture = other.scheduledDeparture;
    if (l$scheduledDeparture != lOther$scheduledDeparture) {
      return false;
    }
    final l$realtimeDeparture = realtimeDeparture;
    final lOther$realtimeDeparture = other.realtimeDeparture;
    if (l$realtimeDeparture != lOther$realtimeDeparture) {
      return false;
    }
    final l$departureDelay = departureDelay;
    final lOther$departureDelay = other.departureDelay;
    if (l$departureDelay != lOther$departureDelay) {
      return false;
    }
    final l$realtime = realtime;
    final lOther$realtime = other.realtime;
    if (l$realtime != lOther$realtime) {
      return false;
    }
    final l$realtimeState = realtimeState;
    final lOther$realtimeState = other.realtimeState;
    if (l$realtimeState != lOther$realtimeState) {
      return false;
    }
    final l$serviceDay = serviceDay;
    final lOther$serviceDay = other.serviceDay;
    if (l$serviceDay != lOther$serviceDay) {
      return false;
    }
    final l$headsign = headsign;
    final lOther$headsign = other.headsign;
    if (l$headsign != lOther$headsign) {
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

extension UtilityExtension$Query$StopData$stops$stoptimesWithoutPatterns
    on Query$StopData$stops$stoptimesWithoutPatterns {
  CopyWith$Query$StopData$stops$stoptimesWithoutPatterns<
          Query$StopData$stops$stoptimesWithoutPatterns>
      get copyWith => CopyWith$Query$StopData$stops$stoptimesWithoutPatterns(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StopData$stops$stoptimesWithoutPatterns<TRes> {
  factory CopyWith$Query$StopData$stops$stoptimesWithoutPatterns(
    Query$StopData$stops$stoptimesWithoutPatterns instance,
    TRes Function(Query$StopData$stops$stoptimesWithoutPatterns) then,
  ) = _CopyWithImpl$Query$StopData$stops$stoptimesWithoutPatterns;

  factory CopyWith$Query$StopData$stops$stoptimesWithoutPatterns.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StopData$stops$stoptimesWithoutPatterns;

  TRes call({
    int? scheduledArrival,
    int? realtimeArrival,
    int? arrivalDelay,
    int? scheduledDeparture,
    int? realtimeDeparture,
    int? departureDelay,
    bool? realtime,
    Enum$RealtimeState? realtimeState,
    int? serviceDay,
    String? headsign,
    Query$StopData$stops$stoptimesWithoutPatterns$trip? trip,
    String? $__typename,
  });
  CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip<TRes> get trip;
}

class _CopyWithImpl$Query$StopData$stops$stoptimesWithoutPatterns<TRes>
    implements CopyWith$Query$StopData$stops$stoptimesWithoutPatterns<TRes> {
  _CopyWithImpl$Query$StopData$stops$stoptimesWithoutPatterns(
    this._instance,
    this._then,
  );

  final Query$StopData$stops$stoptimesWithoutPatterns _instance;

  final TRes Function(Query$StopData$stops$stoptimesWithoutPatterns) _then;

  static const _undefined = {};

  TRes call({
    Object? scheduledArrival = _undefined,
    Object? realtimeArrival = _undefined,
    Object? arrivalDelay = _undefined,
    Object? scheduledDeparture = _undefined,
    Object? realtimeDeparture = _undefined,
    Object? departureDelay = _undefined,
    Object? realtime = _undefined,
    Object? realtimeState = _undefined,
    Object? serviceDay = _undefined,
    Object? headsign = _undefined,
    Object? trip = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StopData$stops$stoptimesWithoutPatterns(
        scheduledArrival: scheduledArrival == _undefined
            ? _instance.scheduledArrival
            : (scheduledArrival as int?),
        realtimeArrival: realtimeArrival == _undefined
            ? _instance.realtimeArrival
            : (realtimeArrival as int?),
        arrivalDelay: arrivalDelay == _undefined
            ? _instance.arrivalDelay
            : (arrivalDelay as int?),
        scheduledDeparture: scheduledDeparture == _undefined
            ? _instance.scheduledDeparture
            : (scheduledDeparture as int?),
        realtimeDeparture: realtimeDeparture == _undefined
            ? _instance.realtimeDeparture
            : (realtimeDeparture as int?),
        departureDelay: departureDelay == _undefined
            ? _instance.departureDelay
            : (departureDelay as int?),
        realtime:
            realtime == _undefined ? _instance.realtime : (realtime as bool?),
        realtimeState: realtimeState == _undefined
            ? _instance.realtimeState
            : (realtimeState as Enum$RealtimeState?),
        serviceDay: serviceDay == _undefined
            ? _instance.serviceDay
            : (serviceDay as int?),
        headsign:
            headsign == _undefined ? _instance.headsign : (headsign as String?),
        trip: trip == _undefined
            ? _instance.trip
            : (trip as Query$StopData$stops$stoptimesWithoutPatterns$trip?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip<TRes> get trip {
    final local$trip = _instance.trip;
    return local$trip == null
        ? CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip.stub(
            _then(_instance))
        : CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip(
            local$trip, (e) => call(trip: e));
  }
}

class _CopyWithStubImpl$Query$StopData$stops$stoptimesWithoutPatterns<TRes>
    implements CopyWith$Query$StopData$stops$stoptimesWithoutPatterns<TRes> {
  _CopyWithStubImpl$Query$StopData$stops$stoptimesWithoutPatterns(this._res);

  TRes _res;

  call({
    int? scheduledArrival,
    int? realtimeArrival,
    int? arrivalDelay,
    int? scheduledDeparture,
    int? realtimeDeparture,
    int? departureDelay,
    bool? realtime,
    Enum$RealtimeState? realtimeState,
    int? serviceDay,
    String? headsign,
    Query$StopData$stops$stoptimesWithoutPatterns$trip? trip,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip<TRes> get trip =>
      CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip.stub(_res);
}

class Query$StopData$stops$stoptimesWithoutPatterns$trip {
  Query$StopData$stops$stoptimesWithoutPatterns$trip({
    required this.route,
    required this.$__typename,
  });

  factory Query$StopData$stops$stoptimesWithoutPatterns$trip.fromJson(
      Map<String, dynamic> json) {
    final l$route = json['route'];
    final l$$__typename = json['__typename'];
    return Query$StopData$stops$stoptimesWithoutPatterns$trip(
      route: Query$StopData$stops$stoptimesWithoutPatterns$trip$route.fromJson(
          (l$route as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StopData$stops$stoptimesWithoutPatterns$trip$route route;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$route = route;
    _resultData['route'] = l$route.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$route = route;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$route,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StopData$stops$stoptimesWithoutPatterns$trip) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$route = route;
    final lOther$route = other.route;
    if (l$route != lOther$route) {
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

extension UtilityExtension$Query$StopData$stops$stoptimesWithoutPatterns$trip
    on Query$StopData$stops$stoptimesWithoutPatterns$trip {
  CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip<
          Query$StopData$stops$stoptimesWithoutPatterns$trip>
      get copyWith =>
          CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip<
    TRes> {
  factory CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip(
    Query$StopData$stops$stoptimesWithoutPatterns$trip instance,
    TRes Function(Query$StopData$stops$stoptimesWithoutPatterns$trip) then,
  ) = _CopyWithImpl$Query$StopData$stops$stoptimesWithoutPatterns$trip;

  factory CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StopData$stops$stoptimesWithoutPatterns$trip;

  TRes call({
    Query$StopData$stops$stoptimesWithoutPatterns$trip$route? route,
    String? $__typename,
  });
  CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip$route<TRes>
      get route;
}

class _CopyWithImpl$Query$StopData$stops$stoptimesWithoutPatterns$trip<TRes>
    implements
        CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip<TRes> {
  _CopyWithImpl$Query$StopData$stops$stoptimesWithoutPatterns$trip(
    this._instance,
    this._then,
  );

  final Query$StopData$stops$stoptimesWithoutPatterns$trip _instance;

  final TRes Function(Query$StopData$stops$stoptimesWithoutPatterns$trip) _then;

  static const _undefined = {};

  TRes call({
    Object? route = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StopData$stops$stoptimesWithoutPatterns$trip(
        route: route == _undefined || route == null
            ? _instance.route
            : (route
                as Query$StopData$stops$stoptimesWithoutPatterns$trip$route),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip$route<TRes>
      get route {
    final local$route = _instance.route;
    return CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip$route(
        local$route, (e) => call(route: e));
  }
}

class _CopyWithStubImpl$Query$StopData$stops$stoptimesWithoutPatterns$trip<TRes>
    implements
        CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip<TRes> {
  _CopyWithStubImpl$Query$StopData$stops$stoptimesWithoutPatterns$trip(
      this._res);

  TRes _res;

  call({
    Query$StopData$stops$stoptimesWithoutPatterns$trip$route? route,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip$route<TRes>
      get route =>
          CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip$route
              .stub(_res);
}

class Query$StopData$stops$stoptimesWithoutPatterns$trip$route {
  Query$StopData$stops$stoptimesWithoutPatterns$trip$route({
    this.shortName,
    required this.$__typename,
  });

  factory Query$StopData$stops$stoptimesWithoutPatterns$trip$route.fromJson(
      Map<String, dynamic> json) {
    final l$shortName = json['shortName'];
    final l$$__typename = json['__typename'];
    return Query$StopData$stops$stoptimesWithoutPatterns$trip$route(
      shortName: (l$shortName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? shortName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shortName = shortName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shortName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StopData$stops$stoptimesWithoutPatterns$trip$route) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
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

extension UtilityExtension$Query$StopData$stops$stoptimesWithoutPatterns$trip$route
    on Query$StopData$stops$stoptimesWithoutPatterns$trip$route {
  CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip$route<
          Query$StopData$stops$stoptimesWithoutPatterns$trip$route>
      get copyWith =>
          CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip$route(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip$route<
    TRes> {
  factory CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip$route(
    Query$StopData$stops$stoptimesWithoutPatterns$trip$route instance,
    TRes Function(Query$StopData$stops$stoptimesWithoutPatterns$trip$route)
        then,
  ) = _CopyWithImpl$Query$StopData$stops$stoptimesWithoutPatterns$trip$route;

  factory CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip$route.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StopData$stops$stoptimesWithoutPatterns$trip$route;

  TRes call({
    String? shortName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$StopData$stops$stoptimesWithoutPatterns$trip$route<
        TRes>
    implements
        CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip$route<
            TRes> {
  _CopyWithImpl$Query$StopData$stops$stoptimesWithoutPatterns$trip$route(
    this._instance,
    this._then,
  );

  final Query$StopData$stops$stoptimesWithoutPatterns$trip$route _instance;

  final TRes Function(Query$StopData$stops$stoptimesWithoutPatterns$trip$route)
      _then;

  static const _undefined = {};

  TRes call({
    Object? shortName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StopData$stops$stoptimesWithoutPatterns$trip$route(
        shortName: shortName == _undefined
            ? _instance.shortName
            : (shortName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$StopData$stops$stoptimesWithoutPatterns$trip$route<
        TRes>
    implements
        CopyWith$Query$StopData$stops$stoptimesWithoutPatterns$trip$route<
            TRes> {
  _CopyWithStubImpl$Query$StopData$stops$stoptimesWithoutPatterns$trip$route(
      this._res);

  TRes _res;

  call({
    String? shortName,
    String? $__typename,
  }) =>
      _res;
}
