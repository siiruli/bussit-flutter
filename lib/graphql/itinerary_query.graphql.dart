import 'package:bussit/graphql/scalar.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Query$Itinerary {
  factory Variables$Query$Itinerary({
    String? fromPlace,
    String? toPlace,
    int? nResults,
  }) =>
      Variables$Query$Itinerary._({
        if (fromPlace != null) r'fromPlace': fromPlace,
        if (toPlace != null) r'toPlace': toPlace,
        if (nResults != null) r'nResults': nResults,
      });

  Variables$Query$Itinerary._(this._$data);

  factory Variables$Query$Itinerary.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fromPlace')) {
      final l$fromPlace = data['fromPlace'];
      result$data['fromPlace'] = (l$fromPlace as String?);
    }
    if (data.containsKey('toPlace')) {
      final l$toPlace = data['toPlace'];
      result$data['toPlace'] = (l$toPlace as String?);
    }
    if (data.containsKey('nResults')) {
      final l$nResults = data['nResults'];
      result$data['nResults'] = (l$nResults as int?);
    }
    return Variables$Query$Itinerary._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get fromPlace => (_$data['fromPlace'] as String?);
  String? get toPlace => (_$data['toPlace'] as String?);
  int? get nResults => (_$data['nResults'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fromPlace')) {
      final l$fromPlace = fromPlace;
      result$data['fromPlace'] = l$fromPlace;
    }
    if (_$data.containsKey('toPlace')) {
      final l$toPlace = toPlace;
      result$data['toPlace'] = l$toPlace;
    }
    if (_$data.containsKey('nResults')) {
      final l$nResults = nResults;
      result$data['nResults'] = l$nResults;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Itinerary<Variables$Query$Itinerary> get copyWith =>
      CopyWith$Variables$Query$Itinerary(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Itinerary) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fromPlace = fromPlace;
    final lOther$fromPlace = other.fromPlace;
    if (_$data.containsKey('fromPlace') !=
        other._$data.containsKey('fromPlace')) {
      return false;
    }
    if (l$fromPlace != lOther$fromPlace) {
      return false;
    }
    final l$toPlace = toPlace;
    final lOther$toPlace = other.toPlace;
    if (_$data.containsKey('toPlace') != other._$data.containsKey('toPlace')) {
      return false;
    }
    if (l$toPlace != lOther$toPlace) {
      return false;
    }
    final l$nResults = nResults;
    final lOther$nResults = other.nResults;
    if (_$data.containsKey('nResults') !=
        other._$data.containsKey('nResults')) {
      return false;
    }
    if (l$nResults != lOther$nResults) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fromPlace = fromPlace;
    final l$toPlace = toPlace;
    final l$nResults = nResults;
    return Object.hashAll([
      _$data.containsKey('fromPlace') ? l$fromPlace : const {},
      _$data.containsKey('toPlace') ? l$toPlace : const {},
      _$data.containsKey('nResults') ? l$nResults : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Itinerary<TRes> {
  factory CopyWith$Variables$Query$Itinerary(
    Variables$Query$Itinerary instance,
    TRes Function(Variables$Query$Itinerary) then,
  ) = _CopyWithImpl$Variables$Query$Itinerary;

  factory CopyWith$Variables$Query$Itinerary.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Itinerary;

  TRes call({
    String? fromPlace,
    String? toPlace,
    int? nResults,
  });
}

class _CopyWithImpl$Variables$Query$Itinerary<TRes>
    implements CopyWith$Variables$Query$Itinerary<TRes> {
  _CopyWithImpl$Variables$Query$Itinerary(
    this._instance,
    this._then,
  );

  final Variables$Query$Itinerary _instance;

  final TRes Function(Variables$Query$Itinerary) _then;

  static const _undefined = {};

  TRes call({
    Object? fromPlace = _undefined,
    Object? toPlace = _undefined,
    Object? nResults = _undefined,
  }) =>
      _then(Variables$Query$Itinerary._({
        ..._instance._$data,
        if (fromPlace != _undefined) 'fromPlace': (fromPlace as String?),
        if (toPlace != _undefined) 'toPlace': (toPlace as String?),
        if (nResults != _undefined) 'nResults': (nResults as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Itinerary<TRes>
    implements CopyWith$Variables$Query$Itinerary<TRes> {
  _CopyWithStubImpl$Variables$Query$Itinerary(this._res);

  TRes _res;

  call({
    String? fromPlace,
    String? toPlace,
    int? nResults,
  }) =>
      _res;
}

class Query$Itinerary {
  Query$Itinerary({
    this.plan,
    required this.$__typename,
  });

  factory Query$Itinerary.fromJson(Map<String, dynamic> json) {
    final l$plan = json['plan'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary(
      plan: l$plan == null
          ? null
          : Query$Itinerary$plan.fromJson((l$plan as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Itinerary$plan? plan;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$plan = plan;
    _resultData['plan'] = l$plan?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$plan = plan;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$plan,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Itinerary) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$plan = plan;
    final lOther$plan = other.plan;
    if (l$plan != lOther$plan) {
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

extension UtilityExtension$Query$Itinerary on Query$Itinerary {
  CopyWith$Query$Itinerary<Query$Itinerary> get copyWith =>
      CopyWith$Query$Itinerary(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Itinerary<TRes> {
  factory CopyWith$Query$Itinerary(
    Query$Itinerary instance,
    TRes Function(Query$Itinerary) then,
  ) = _CopyWithImpl$Query$Itinerary;

  factory CopyWith$Query$Itinerary.stub(TRes res) =
      _CopyWithStubImpl$Query$Itinerary;

  TRes call({
    Query$Itinerary$plan? plan,
    String? $__typename,
  });
  CopyWith$Query$Itinerary$plan<TRes> get plan;
}

class _CopyWithImpl$Query$Itinerary<TRes>
    implements CopyWith$Query$Itinerary<TRes> {
  _CopyWithImpl$Query$Itinerary(
    this._instance,
    this._then,
  );

  final Query$Itinerary _instance;

  final TRes Function(Query$Itinerary) _then;

  static const _undefined = {};

  TRes call({
    Object? plan = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary(
        plan: plan == _undefined
            ? _instance.plan
            : (plan as Query$Itinerary$plan?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Itinerary$plan<TRes> get plan {
    final local$plan = _instance.plan;
    return local$plan == null
        ? CopyWith$Query$Itinerary$plan.stub(_then(_instance))
        : CopyWith$Query$Itinerary$plan(local$plan, (e) => call(plan: e));
  }
}

class _CopyWithStubImpl$Query$Itinerary<TRes>
    implements CopyWith$Query$Itinerary<TRes> {
  _CopyWithStubImpl$Query$Itinerary(this._res);

  TRes _res;

  call({
    Query$Itinerary$plan? plan,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Itinerary$plan<TRes> get plan =>
      CopyWith$Query$Itinerary$plan.stub(_res);
}

const documentNodeQueryItinerary = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Itinerary'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fromPlace')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'toPlace')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nResults')),
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
        name: NameNode(value: 'plan'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'fromPlace'),
            value: VariableNode(name: NameNode(value: 'fromPlace')),
          ),
          ArgumentNode(
            name: NameNode(value: 'toPlace'),
            value: VariableNode(name: NameNode(value: 'toPlace')),
          ),
          ArgumentNode(
            name: NameNode(value: 'numItineraries'),
            value: VariableNode(name: NameNode(value: 'nResults')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'itineraries'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'legs'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'startTime'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'endTime'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'mode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'duration'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'distance'),
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
Query$Itinerary _parserFn$Query$Itinerary(Map<String, dynamic> data) =>
    Query$Itinerary.fromJson(data);

class Options$Query$Itinerary extends graphql.QueryOptions<Query$Itinerary> {
  Options$Query$Itinerary({
    String? operationName,
    Variables$Query$Itinerary? variables,
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
          document: documentNodeQueryItinerary,
          parserFn: _parserFn$Query$Itinerary,
        );
}

class WatchOptions$Query$Itinerary
    extends graphql.WatchQueryOptions<Query$Itinerary> {
  WatchOptions$Query$Itinerary({
    String? operationName,
    Variables$Query$Itinerary? variables,
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
          document: documentNodeQueryItinerary,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Itinerary,
        );
}

class FetchMoreOptions$Query$Itinerary extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Itinerary({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Itinerary? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryItinerary,
        );
}

extension ClientExtension$Query$Itinerary on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Itinerary>> query$Itinerary(
          [Options$Query$Itinerary? options]) async =>
      await this.query(options ?? Options$Query$Itinerary());
  graphql.ObservableQuery<Query$Itinerary> watchQuery$Itinerary(
          [WatchOptions$Query$Itinerary? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Itinerary());
  void writeQuery$Itinerary({
    required Query$Itinerary data,
    Variables$Query$Itinerary? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryItinerary),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Itinerary? readQuery$Itinerary({
    Variables$Query$Itinerary? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryItinerary),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Itinerary.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Itinerary> useQuery$Itinerary(
        [Options$Query$Itinerary? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Itinerary());
graphql.ObservableQuery<Query$Itinerary> useWatchQuery$Itinerary(
        [WatchOptions$Query$Itinerary? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Itinerary());

class Query$Itinerary$Widget extends graphql_flutter.Query<Query$Itinerary> {
  Query$Itinerary$Widget({
    widgets.Key? key,
    Options$Query$Itinerary? options,
    required graphql_flutter.QueryBuilder<Query$Itinerary> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Itinerary(),
          builder: builder,
        );
}

class Query$Itinerary$plan {
  Query$Itinerary$plan({
    required this.itineraries,
    required this.$__typename,
  });

  factory Query$Itinerary$plan.fromJson(Map<String, dynamic> json) {
    final l$itineraries = json['itineraries'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan(
      itineraries: (l$itineraries as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$Itinerary$plan$itineraries.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Itinerary$plan$itineraries?> itineraries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$itineraries = itineraries;
    _resultData['itineraries'] = l$itineraries.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$itineraries = itineraries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$itineraries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Itinerary$plan) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$itineraries = itineraries;
    final lOther$itineraries = other.itineraries;
    if (l$itineraries.length != lOther$itineraries.length) {
      return false;
    }
    for (int i = 0; i < l$itineraries.length; i++) {
      final l$itineraries$entry = l$itineraries[i];
      final lOther$itineraries$entry = lOther$itineraries[i];
      if (l$itineraries$entry != lOther$itineraries$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Itinerary$plan on Query$Itinerary$plan {
  CopyWith$Query$Itinerary$plan<Query$Itinerary$plan> get copyWith =>
      CopyWith$Query$Itinerary$plan(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Itinerary$plan<TRes> {
  factory CopyWith$Query$Itinerary$plan(
    Query$Itinerary$plan instance,
    TRes Function(Query$Itinerary$plan) then,
  ) = _CopyWithImpl$Query$Itinerary$plan;

  factory CopyWith$Query$Itinerary$plan.stub(TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan;

  TRes call({
    List<Query$Itinerary$plan$itineraries?>? itineraries,
    String? $__typename,
  });
  TRes itineraries(
      Iterable<Query$Itinerary$plan$itineraries?> Function(
              Iterable<
                  CopyWith$Query$Itinerary$plan$itineraries<
                      Query$Itinerary$plan$itineraries>?>)
          _fn);
}

class _CopyWithImpl$Query$Itinerary$plan<TRes>
    implements CopyWith$Query$Itinerary$plan<TRes> {
  _CopyWithImpl$Query$Itinerary$plan(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan _instance;

  final TRes Function(Query$Itinerary$plan) _then;

  static const _undefined = {};

  TRes call({
    Object? itineraries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan(
        itineraries: itineraries == _undefined || itineraries == null
            ? _instance.itineraries
            : (itineraries as List<Query$Itinerary$plan$itineraries?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes itineraries(
          Iterable<Query$Itinerary$plan$itineraries?> Function(
                  Iterable<
                      CopyWith$Query$Itinerary$plan$itineraries<
                          Query$Itinerary$plan$itineraries>?>)
              _fn) =>
      call(
          itineraries: _fn(_instance.itineraries.map((e) => e == null
              ? null
              : CopyWith$Query$Itinerary$plan$itineraries(
                  e,
                  (i) => i,
                ))).toList());
}

class _CopyWithStubImpl$Query$Itinerary$plan<TRes>
    implements CopyWith$Query$Itinerary$plan<TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan(this._res);

  TRes _res;

  call({
    List<Query$Itinerary$plan$itineraries?>? itineraries,
    String? $__typename,
  }) =>
      _res;
  itineraries(_fn) => _res;
}

class Query$Itinerary$plan$itineraries {
  Query$Itinerary$plan$itineraries({
    required this.legs,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries.fromJson(Map<String, dynamic> json) {
    final l$legs = json['legs'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries(
      legs: (l$legs as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$Itinerary$plan$itineraries$legs.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Itinerary$plan$itineraries$legs?> legs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$legs = legs;
    _resultData['legs'] = l$legs.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$legs = legs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$legs.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Itinerary$plan$itineraries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$legs = legs;
    final lOther$legs = other.legs;
    if (l$legs.length != lOther$legs.length) {
      return false;
    }
    for (int i = 0; i < l$legs.length; i++) {
      final l$legs$entry = l$legs[i];
      final lOther$legs$entry = lOther$legs[i];
      if (l$legs$entry != lOther$legs$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Itinerary$plan$itineraries
    on Query$Itinerary$plan$itineraries {
  CopyWith$Query$Itinerary$plan$itineraries<Query$Itinerary$plan$itineraries>
      get copyWith => CopyWith$Query$Itinerary$plan$itineraries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries<TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries(
    Query$Itinerary$plan$itineraries instance,
    TRes Function(Query$Itinerary$plan$itineraries) then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries;

  factory CopyWith$Query$Itinerary$plan$itineraries.stub(TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries;

  TRes call({
    List<Query$Itinerary$plan$itineraries$legs?>? legs,
    String? $__typename,
  });
  TRes legs(
      Iterable<Query$Itinerary$plan$itineraries$legs?> Function(
              Iterable<
                  CopyWith$Query$Itinerary$plan$itineraries$legs<
                      Query$Itinerary$plan$itineraries$legs>?>)
          _fn);
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries<TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries _instance;

  final TRes Function(Query$Itinerary$plan$itineraries) _then;

  static const _undefined = {};

  TRes call({
    Object? legs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries(
        legs: legs == _undefined || legs == null
            ? _instance.legs
            : (legs as List<Query$Itinerary$plan$itineraries$legs?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes legs(
          Iterable<Query$Itinerary$plan$itineraries$legs?> Function(
                  Iterable<
                      CopyWith$Query$Itinerary$plan$itineraries$legs<
                          Query$Itinerary$plan$itineraries$legs>?>)
              _fn) =>
      call(
          legs: _fn(_instance.legs.map((e) => e == null
              ? null
              : CopyWith$Query$Itinerary$plan$itineraries$legs(
                  e,
                  (i) => i,
                ))).toList());
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries<TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries(this._res);

  TRes _res;

  call({
    List<Query$Itinerary$plan$itineraries$legs?>? legs,
    String? $__typename,
  }) =>
      _res;
  legs(_fn) => _res;
}

class Query$Itinerary$plan$itineraries$legs {
  Query$Itinerary$plan$itineraries$legs({
    this.startTime,
    this.endTime,
    this.mode,
    this.duration,
    this.distance,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs.fromJson(
      Map<String, dynamic> json) {
    final l$startTime = json['startTime'];
    final l$endTime = json['endTime'];
    final l$mode = json['mode'];
    final l$duration = json['duration'];
    final l$distance = json['distance'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs(
      startTime: l$startTime == null ? null : longFromJson(l$startTime),
      endTime: l$endTime == null ? null : longFromJson(l$endTime),
      mode: l$mode == null ? null : fromJson$Enum$Mode((l$mode as String)),
      duration: (l$duration as num?)?.toDouble(),
      distance: (l$distance as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? startTime;

  final int? endTime;

  final Enum$Mode? mode;

  final double? duration;

  final double? distance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startTime = startTime;
    _resultData['startTime'] =
        l$startTime == null ? null : longToJson(l$startTime);
    final l$endTime = endTime;
    _resultData['endTime'] = l$endTime == null ? null : longToJson(l$endTime);
    final l$mode = mode;
    _resultData['mode'] = l$mode == null ? null : toJson$Enum$Mode(l$mode);
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$distance = distance;
    _resultData['distance'] = l$distance;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startTime = startTime;
    final l$endTime = endTime;
    final l$mode = mode;
    final l$duration = duration;
    final l$distance = distance;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$startTime,
      l$endTime,
      l$mode,
      l$duration,
      l$distance,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Itinerary$plan$itineraries$legs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startTime = startTime;
    final lOther$startTime = other.startTime;
    if (l$startTime != lOther$startTime) {
      return false;
    }
    final l$endTime = endTime;
    final lOther$endTime = other.endTime;
    if (l$endTime != lOther$endTime) {
      return false;
    }
    final l$mode = mode;
    final lOther$mode = other.mode;
    if (l$mode != lOther$mode) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) {
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

extension UtilityExtension$Query$Itinerary$plan$itineraries$legs
    on Query$Itinerary$plan$itineraries$legs {
  CopyWith$Query$Itinerary$plan$itineraries$legs<
          Query$Itinerary$plan$itineraries$legs>
      get copyWith => CopyWith$Query$Itinerary$plan$itineraries$legs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries$legs<TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries$legs(
    Query$Itinerary$plan$itineraries$legs instance,
    TRes Function(Query$Itinerary$plan$itineraries$legs) then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries$legs;

  factory CopyWith$Query$Itinerary$plan$itineraries$legs.stub(TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs;

  TRes call({
    int? startTime,
    int? endTime,
    Enum$Mode? mode,
    double? duration,
    double? distance,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries$legs<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs<TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries$legs(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries$legs _instance;

  final TRes Function(Query$Itinerary$plan$itineraries$legs) _then;

  static const _undefined = {};

  TRes call({
    Object? startTime = _undefined,
    Object? endTime = _undefined,
    Object? mode = _undefined,
    Object? duration = _undefined,
    Object? distance = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries$legs(
        startTime:
            startTime == _undefined ? _instance.startTime : (startTime as int?),
        endTime: endTime == _undefined ? _instance.endTime : (endTime as int?),
        mode: mode == _undefined ? _instance.mode : (mode as Enum$Mode?),
        duration:
            duration == _undefined ? _instance.duration : (duration as double?),
        distance:
            distance == _undefined ? _instance.distance : (distance as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs<TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs(this._res);

  TRes _res;

  call({
    int? startTime,
    int? endTime,
    Enum$Mode? mode,
    double? duration,
    double? distance,
    String? $__typename,
  }) =>
      _res;
}
