import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

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
    required this.$__typename,
  });

  factory Query$StopData$stops.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$gtfsId = json['gtfsId'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$StopData$stops(
      name: (l$name as String),
      gtfsId: (l$gtfsId as String),
      code: (l$code as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String gtfsId;

  final String? code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$gtfsId = gtfsId;
    _resultData['gtfsId'] = l$gtfsId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$gtfsId = gtfsId;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$gtfsId,
      l$code,
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
    String? $__typename,
  });
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$StopData$stops<TRes>
    implements CopyWith$Query$StopData$stops<TRes> {
  _CopyWithStubImpl$Query$StopData$stops(this._res);

  TRes _res;

  call({
    String? name,
    String? gtfsId,
    String? code,
    String? $__typename,
  }) =>
      _res;
}
