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
    String? time,
    String? date,
    bool? arriveBy,
    bool? allowBikeRental,
    List<Input$TransportMode?>? modes,
    double? maxWalkDistance,
  }) =>
      Variables$Query$Itinerary._({
        if (fromPlace != null) r'fromPlace': fromPlace,
        if (toPlace != null) r'toPlace': toPlace,
        if (nResults != null) r'nResults': nResults,
        if (time != null) r'time': time,
        if (date != null) r'date': date,
        if (arriveBy != null) r'arriveBy': arriveBy,
        if (allowBikeRental != null) r'allowBikeRental': allowBikeRental,
        if (modes != null) r'modes': modes,
        if (maxWalkDistance != null) r'maxWalkDistance': maxWalkDistance,
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
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = (l$time as String?);
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = (l$date as String?);
    }
    if (data.containsKey('arriveBy')) {
      final l$arriveBy = data['arriveBy'];
      result$data['arriveBy'] = (l$arriveBy as bool?);
    }
    if (data.containsKey('allowBikeRental')) {
      final l$allowBikeRental = data['allowBikeRental'];
      result$data['allowBikeRental'] = (l$allowBikeRental as bool?);
    }
    if (data.containsKey('modes')) {
      final l$modes = data['modes'];
      result$data['modes'] = (l$modes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$TransportMode.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('maxWalkDistance')) {
      final l$maxWalkDistance = data['maxWalkDistance'];
      result$data['maxWalkDistance'] = (l$maxWalkDistance as num?)?.toDouble();
    }
    return Variables$Query$Itinerary._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get fromPlace => (_$data['fromPlace'] as String?);
  String? get toPlace => (_$data['toPlace'] as String?);
  int? get nResults => (_$data['nResults'] as int?);
  String? get time => (_$data['time'] as String?);
  String? get date => (_$data['date'] as String?);
  bool? get arriveBy => (_$data['arriveBy'] as bool?);
  bool? get allowBikeRental => (_$data['allowBikeRental'] as bool?);
  List<Input$TransportMode?>? get modes =>
      (_$data['modes'] as List<Input$TransportMode?>?);
  double? get maxWalkDistance => (_$data['maxWalkDistance'] as double?);
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
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time;
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date;
    }
    if (_$data.containsKey('arriveBy')) {
      final l$arriveBy = arriveBy;
      result$data['arriveBy'] = l$arriveBy;
    }
    if (_$data.containsKey('allowBikeRental')) {
      final l$allowBikeRental = allowBikeRental;
      result$data['allowBikeRental'] = l$allowBikeRental;
    }
    if (_$data.containsKey('modes')) {
      final l$modes = modes;
      result$data['modes'] = l$modes?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('maxWalkDistance')) {
      final l$maxWalkDistance = maxWalkDistance;
      result$data['maxWalkDistance'] = l$maxWalkDistance;
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
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$arriveBy = arriveBy;
    final lOther$arriveBy = other.arriveBy;
    if (_$data.containsKey('arriveBy') !=
        other._$data.containsKey('arriveBy')) {
      return false;
    }
    if (l$arriveBy != lOther$arriveBy) {
      return false;
    }
    final l$allowBikeRental = allowBikeRental;
    final lOther$allowBikeRental = other.allowBikeRental;
    if (_$data.containsKey('allowBikeRental') !=
        other._$data.containsKey('allowBikeRental')) {
      return false;
    }
    if (l$allowBikeRental != lOther$allowBikeRental) {
      return false;
    }
    final l$modes = modes;
    final lOther$modes = other.modes;
    if (_$data.containsKey('modes') != other._$data.containsKey('modes')) {
      return false;
    }
    if (l$modes != null && lOther$modes != null) {
      if (l$modes.length != lOther$modes.length) {
        return false;
      }
      for (int i = 0; i < l$modes.length; i++) {
        final l$modes$entry = l$modes[i];
        final lOther$modes$entry = lOther$modes[i];
        if (l$modes$entry != lOther$modes$entry) {
          return false;
        }
      }
    } else if (l$modes != lOther$modes) {
      return false;
    }
    final l$maxWalkDistance = maxWalkDistance;
    final lOther$maxWalkDistance = other.maxWalkDistance;
    if (_$data.containsKey('maxWalkDistance') !=
        other._$data.containsKey('maxWalkDistance')) {
      return false;
    }
    if (l$maxWalkDistance != lOther$maxWalkDistance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fromPlace = fromPlace;
    final l$toPlace = toPlace;
    final l$nResults = nResults;
    final l$time = time;
    final l$date = date;
    final l$arriveBy = arriveBy;
    final l$allowBikeRental = allowBikeRental;
    final l$modes = modes;
    final l$maxWalkDistance = maxWalkDistance;
    return Object.hashAll([
      _$data.containsKey('fromPlace') ? l$fromPlace : const {},
      _$data.containsKey('toPlace') ? l$toPlace : const {},
      _$data.containsKey('nResults') ? l$nResults : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('arriveBy') ? l$arriveBy : const {},
      _$data.containsKey('allowBikeRental') ? l$allowBikeRental : const {},
      _$data.containsKey('modes')
          ? l$modes == null
              ? null
              : Object.hashAll(l$modes.map((v) => v))
          : const {},
      _$data.containsKey('maxWalkDistance') ? l$maxWalkDistance : const {},
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
    String? time,
    String? date,
    bool? arriveBy,
    bool? allowBikeRental,
    List<Input$TransportMode?>? modes,
    double? maxWalkDistance,
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
    Object? time = _undefined,
    Object? date = _undefined,
    Object? arriveBy = _undefined,
    Object? allowBikeRental = _undefined,
    Object? modes = _undefined,
    Object? maxWalkDistance = _undefined,
  }) =>
      _then(Variables$Query$Itinerary._({
        ..._instance._$data,
        if (fromPlace != _undefined) 'fromPlace': (fromPlace as String?),
        if (toPlace != _undefined) 'toPlace': (toPlace as String?),
        if (nResults != _undefined) 'nResults': (nResults as int?),
        if (time != _undefined) 'time': (time as String?),
        if (date != _undefined) 'date': (date as String?),
        if (arriveBy != _undefined) 'arriveBy': (arriveBy as bool?),
        if (allowBikeRental != _undefined)
          'allowBikeRental': (allowBikeRental as bool?),
        if (modes != _undefined)
          'modes': (modes as List<Input$TransportMode?>?),
        if (maxWalkDistance != _undefined)
          'maxWalkDistance': (maxWalkDistance as double?),
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
    String? time,
    String? date,
    bool? arriveBy,
    bool? allowBikeRental,
    List<Input$TransportMode?>? modes,
    double? maxWalkDistance,
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'time')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'date')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'arriveBy')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'allowBikeRental')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'modes')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'TransportMode'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'maxWalkDistance')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
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
          ArgumentNode(
            name: NameNode(value: 'time'),
            value: VariableNode(name: NameNode(value: 'time')),
          ),
          ArgumentNode(
            name: NameNode(value: 'date'),
            value: VariableNode(name: NameNode(value: 'date')),
          ),
          ArgumentNode(
            name: NameNode(value: 'arriveBy'),
            value: VariableNode(name: NameNode(value: 'arriveBy')),
          ),
          ArgumentNode(
            name: NameNode(value: 'allowBikeRental'),
            value: VariableNode(name: NameNode(value: 'allowBikeRental')),
          ),
          ArgumentNode(
            name: NameNode(value: 'transportModes'),
            value: VariableNode(name: NameNode(value: 'modes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'maxWalkDistance'),
            value: VariableNode(name: NameNode(value: 'maxWalkDistance')),
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
                name: NameNode(value: 'walkDistance'),
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
                name: NameNode(value: 'waitingTime'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'legs'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'realTime'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
                    name: NameNode(value: 'transitLeg'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rentedBike'),
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
                    name: NameNode(value: 'legGeometry'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'points'),
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
                    name: NameNode(value: 'intermediatePlaces'),
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
                        name: NameNode(value: 'stop'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'vehicleMode'),
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
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: 'bikeRentalStation'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'bikesAvailable'),
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
                    name: NameNode(value: 'from'),
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
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: 'bikeRentalStation'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'bikesAvailable'),
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
                    name: NameNode(value: 'to'),
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
                        name: NameNode(value: 'stop'),
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
                            name: NameNode(value: 'gtfsId'),
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
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: 'bikeRentalStation'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'bikesAvailable'),
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
                    name: NameNode(value: 'trip'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
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
    this.walkDistance,
    this.duration,
    this.startTime,
    this.endTime,
    this.waitingTime,
    required this.legs,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries.fromJson(Map<String, dynamic> json) {
    final l$walkDistance = json['walkDistance'];
    final l$duration = json['duration'];
    final l$startTime = json['startTime'];
    final l$endTime = json['endTime'];
    final l$waitingTime = json['waitingTime'];
    final l$legs = json['legs'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries(
      walkDistance: (l$walkDistance as num?)?.toDouble(),
      duration: l$duration == null ? null : longFromJson(l$duration),
      startTime: l$startTime == null ? null : longFromJson(l$startTime),
      endTime: l$endTime == null ? null : longFromJson(l$endTime),
      waitingTime: l$waitingTime == null ? null : longFromJson(l$waitingTime),
      legs: (l$legs as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$Itinerary$plan$itineraries$legs.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final double? walkDistance;

  final int? duration;

  final int? startTime;

  final int? endTime;

  final int? waitingTime;

  final List<Query$Itinerary$plan$itineraries$legs?> legs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$walkDistance = walkDistance;
    _resultData['walkDistance'] = l$walkDistance;
    final l$duration = duration;
    _resultData['duration'] =
        l$duration == null ? null : longToJson(l$duration);
    final l$startTime = startTime;
    _resultData['startTime'] =
        l$startTime == null ? null : longToJson(l$startTime);
    final l$endTime = endTime;
    _resultData['endTime'] = l$endTime == null ? null : longToJson(l$endTime);
    final l$waitingTime = waitingTime;
    _resultData['waitingTime'] =
        l$waitingTime == null ? null : longToJson(l$waitingTime);
    final l$legs = legs;
    _resultData['legs'] = l$legs.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$walkDistance = walkDistance;
    final l$duration = duration;
    final l$startTime = startTime;
    final l$endTime = endTime;
    final l$waitingTime = waitingTime;
    final l$legs = legs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$walkDistance,
      l$duration,
      l$startTime,
      l$endTime,
      l$waitingTime,
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
    final l$walkDistance = walkDistance;
    final lOther$walkDistance = other.walkDistance;
    if (l$walkDistance != lOther$walkDistance) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
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
    final l$waitingTime = waitingTime;
    final lOther$waitingTime = other.waitingTime;
    if (l$waitingTime != lOther$waitingTime) {
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
    double? walkDistance,
    int? duration,
    int? startTime,
    int? endTime,
    int? waitingTime,
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
    Object? walkDistance = _undefined,
    Object? duration = _undefined,
    Object? startTime = _undefined,
    Object? endTime = _undefined,
    Object? waitingTime = _undefined,
    Object? legs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries(
        walkDistance: walkDistance == _undefined
            ? _instance.walkDistance
            : (walkDistance as double?),
        duration:
            duration == _undefined ? _instance.duration : (duration as int?),
        startTime:
            startTime == _undefined ? _instance.startTime : (startTime as int?),
        endTime: endTime == _undefined ? _instance.endTime : (endTime as int?),
        waitingTime: waitingTime == _undefined
            ? _instance.waitingTime
            : (waitingTime as int?),
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
    double? walkDistance,
    int? duration,
    int? startTime,
    int? endTime,
    int? waitingTime,
    List<Query$Itinerary$plan$itineraries$legs?>? legs,
    String? $__typename,
  }) =>
      _res;
  legs(_fn) => _res;
}

class Query$Itinerary$plan$itineraries$legs {
  Query$Itinerary$plan$itineraries$legs({
    this.realTime,
    this.startTime,
    this.endTime,
    this.mode,
    this.transitLeg,
    this.rentedBike,
    this.duration,
    this.distance,
    this.legGeometry,
    this.intermediatePlaces,
    required this.from,
    required this.to,
    this.trip,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs.fromJson(
      Map<String, dynamic> json) {
    final l$realTime = json['realTime'];
    final l$startTime = json['startTime'];
    final l$endTime = json['endTime'];
    final l$mode = json['mode'];
    final l$transitLeg = json['transitLeg'];
    final l$rentedBike = json['rentedBike'];
    final l$duration = json['duration'];
    final l$distance = json['distance'];
    final l$legGeometry = json['legGeometry'];
    final l$intermediatePlaces = json['intermediatePlaces'];
    final l$from = json['from'];
    final l$to = json['to'];
    final l$trip = json['trip'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs(
      realTime: (l$realTime as bool?),
      startTime: l$startTime == null ? null : longFromJson(l$startTime),
      endTime: l$endTime == null ? null : longFromJson(l$endTime),
      mode: l$mode == null ? null : fromJson$Enum$Mode((l$mode as String)),
      transitLeg: (l$transitLeg as bool?),
      rentedBike: (l$rentedBike as bool?),
      duration: (l$duration as num?)?.toDouble(),
      distance: (l$distance as num?)?.toDouble(),
      legGeometry: l$legGeometry == null
          ? null
          : Query$Itinerary$plan$itineraries$legs$legGeometry.fromJson(
              (l$legGeometry as Map<String, dynamic>)),
      intermediatePlaces: (l$intermediatePlaces as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Itinerary$plan$itineraries$legs$intermediatePlaces
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      from: Query$Itinerary$plan$itineraries$legs$from.fromJson(
          (l$from as Map<String, dynamic>)),
      to: Query$Itinerary$plan$itineraries$legs$to.fromJson(
          (l$to as Map<String, dynamic>)),
      trip: l$trip == null
          ? null
          : Query$Itinerary$plan$itineraries$legs$trip.fromJson(
              (l$trip as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? realTime;

  final int? startTime;

  final int? endTime;

  final Enum$Mode? mode;

  final bool? transitLeg;

  final bool? rentedBike;

  final double? duration;

  final double? distance;

  final Query$Itinerary$plan$itineraries$legs$legGeometry? legGeometry;

  final List<Query$Itinerary$plan$itineraries$legs$intermediatePlaces?>?
      intermediatePlaces;

  final Query$Itinerary$plan$itineraries$legs$from from;

  final Query$Itinerary$plan$itineraries$legs$to to;

  final Query$Itinerary$plan$itineraries$legs$trip? trip;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$realTime = realTime;
    _resultData['realTime'] = l$realTime;
    final l$startTime = startTime;
    _resultData['startTime'] =
        l$startTime == null ? null : longToJson(l$startTime);
    final l$endTime = endTime;
    _resultData['endTime'] = l$endTime == null ? null : longToJson(l$endTime);
    final l$mode = mode;
    _resultData['mode'] = l$mode == null ? null : toJson$Enum$Mode(l$mode);
    final l$transitLeg = transitLeg;
    _resultData['transitLeg'] = l$transitLeg;
    final l$rentedBike = rentedBike;
    _resultData['rentedBike'] = l$rentedBike;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$distance = distance;
    _resultData['distance'] = l$distance;
    final l$legGeometry = legGeometry;
    _resultData['legGeometry'] = l$legGeometry?.toJson();
    final l$intermediatePlaces = intermediatePlaces;
    _resultData['intermediatePlaces'] =
        l$intermediatePlaces?.map((e) => e?.toJson()).toList();
    final l$from = from;
    _resultData['from'] = l$from.toJson();
    final l$to = to;
    _resultData['to'] = l$to.toJson();
    final l$trip = trip;
    _resultData['trip'] = l$trip?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$realTime = realTime;
    final l$startTime = startTime;
    final l$endTime = endTime;
    final l$mode = mode;
    final l$transitLeg = transitLeg;
    final l$rentedBike = rentedBike;
    final l$duration = duration;
    final l$distance = distance;
    final l$legGeometry = legGeometry;
    final l$intermediatePlaces = intermediatePlaces;
    final l$from = from;
    final l$to = to;
    final l$trip = trip;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$realTime,
      l$startTime,
      l$endTime,
      l$mode,
      l$transitLeg,
      l$rentedBike,
      l$duration,
      l$distance,
      l$legGeometry,
      l$intermediatePlaces == null
          ? null
          : Object.hashAll(l$intermediatePlaces.map((v) => v)),
      l$from,
      l$to,
      l$trip,
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
    final l$realTime = realTime;
    final lOther$realTime = other.realTime;
    if (l$realTime != lOther$realTime) {
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
    final l$transitLeg = transitLeg;
    final lOther$transitLeg = other.transitLeg;
    if (l$transitLeg != lOther$transitLeg) {
      return false;
    }
    final l$rentedBike = rentedBike;
    final lOther$rentedBike = other.rentedBike;
    if (l$rentedBike != lOther$rentedBike) {
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
    final l$legGeometry = legGeometry;
    final lOther$legGeometry = other.legGeometry;
    if (l$legGeometry != lOther$legGeometry) {
      return false;
    }
    final l$intermediatePlaces = intermediatePlaces;
    final lOther$intermediatePlaces = other.intermediatePlaces;
    if (l$intermediatePlaces != null && lOther$intermediatePlaces != null) {
      if (l$intermediatePlaces.length != lOther$intermediatePlaces.length) {
        return false;
      }
      for (int i = 0; i < l$intermediatePlaces.length; i++) {
        final l$intermediatePlaces$entry = l$intermediatePlaces[i];
        final lOther$intermediatePlaces$entry = lOther$intermediatePlaces[i];
        if (l$intermediatePlaces$entry != lOther$intermediatePlaces$entry) {
          return false;
        }
      }
    } else if (l$intermediatePlaces != lOther$intermediatePlaces) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (l$from != lOther$from) {
      return false;
    }
    final l$to = to;
    final lOther$to = other.to;
    if (l$to != lOther$to) {
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
    bool? realTime,
    int? startTime,
    int? endTime,
    Enum$Mode? mode,
    bool? transitLeg,
    bool? rentedBike,
    double? duration,
    double? distance,
    Query$Itinerary$plan$itineraries$legs$legGeometry? legGeometry,
    List<Query$Itinerary$plan$itineraries$legs$intermediatePlaces?>?
        intermediatePlaces,
    Query$Itinerary$plan$itineraries$legs$from? from,
    Query$Itinerary$plan$itineraries$legs$to? to,
    Query$Itinerary$plan$itineraries$legs$trip? trip,
    String? $__typename,
  });
  CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry<TRes>
      get legGeometry;
  TRes intermediatePlaces(
      Iterable<Query$Itinerary$plan$itineraries$legs$intermediatePlaces?>? Function(
              Iterable<
                  CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces<
                      Query$Itinerary$plan$itineraries$legs$intermediatePlaces>?>?)
          _fn);
  CopyWith$Query$Itinerary$plan$itineraries$legs$from<TRes> get from;
  CopyWith$Query$Itinerary$plan$itineraries$legs$to<TRes> get to;
  CopyWith$Query$Itinerary$plan$itineraries$legs$trip<TRes> get trip;
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
    Object? realTime = _undefined,
    Object? startTime = _undefined,
    Object? endTime = _undefined,
    Object? mode = _undefined,
    Object? transitLeg = _undefined,
    Object? rentedBike = _undefined,
    Object? duration = _undefined,
    Object? distance = _undefined,
    Object? legGeometry = _undefined,
    Object? intermediatePlaces = _undefined,
    Object? from = _undefined,
    Object? to = _undefined,
    Object? trip = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries$legs(
        realTime:
            realTime == _undefined ? _instance.realTime : (realTime as bool?),
        startTime:
            startTime == _undefined ? _instance.startTime : (startTime as int?),
        endTime: endTime == _undefined ? _instance.endTime : (endTime as int?),
        mode: mode == _undefined ? _instance.mode : (mode as Enum$Mode?),
        transitLeg: transitLeg == _undefined
            ? _instance.transitLeg
            : (transitLeg as bool?),
        rentedBike: rentedBike == _undefined
            ? _instance.rentedBike
            : (rentedBike as bool?),
        duration:
            duration == _undefined ? _instance.duration : (duration as double?),
        distance:
            distance == _undefined ? _instance.distance : (distance as double?),
        legGeometry: legGeometry == _undefined
            ? _instance.legGeometry
            : (legGeometry
                as Query$Itinerary$plan$itineraries$legs$legGeometry?),
        intermediatePlaces: intermediatePlaces == _undefined
            ? _instance.intermediatePlaces
            : (intermediatePlaces as List<
                Query$Itinerary$plan$itineraries$legs$intermediatePlaces?>?),
        from: from == _undefined || from == null
            ? _instance.from
            : (from as Query$Itinerary$plan$itineraries$legs$from),
        to: to == _undefined || to == null
            ? _instance.to
            : (to as Query$Itinerary$plan$itineraries$legs$to),
        trip: trip == _undefined
            ? _instance.trip
            : (trip as Query$Itinerary$plan$itineraries$legs$trip?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry<TRes>
      get legGeometry {
    final local$legGeometry = _instance.legGeometry;
    return local$legGeometry == null
        ? CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry.stub(
            _then(_instance))
        : CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry(
            local$legGeometry, (e) => call(legGeometry: e));
  }

  TRes intermediatePlaces(
          Iterable<Query$Itinerary$plan$itineraries$legs$intermediatePlaces?>? Function(
                  Iterable<
                      CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces<
                          Query$Itinerary$plan$itineraries$legs$intermediatePlaces>?>?)
              _fn) =>
      call(
          intermediatePlaces: _fn(_instance.intermediatePlaces?.map((e) => e ==
                  null
              ? null
              : CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces(
                  e,
                  (i) => i,
                )))?.toList());
  CopyWith$Query$Itinerary$plan$itineraries$legs$from<TRes> get from {
    final local$from = _instance.from;
    return CopyWith$Query$Itinerary$plan$itineraries$legs$from(
        local$from, (e) => call(from: e));
  }

  CopyWith$Query$Itinerary$plan$itineraries$legs$to<TRes> get to {
    final local$to = _instance.to;
    return CopyWith$Query$Itinerary$plan$itineraries$legs$to(
        local$to, (e) => call(to: e));
  }

  CopyWith$Query$Itinerary$plan$itineraries$legs$trip<TRes> get trip {
    final local$trip = _instance.trip;
    return local$trip == null
        ? CopyWith$Query$Itinerary$plan$itineraries$legs$trip.stub(
            _then(_instance))
        : CopyWith$Query$Itinerary$plan$itineraries$legs$trip(
            local$trip, (e) => call(trip: e));
  }
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs<TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs(this._res);

  TRes _res;

  call({
    bool? realTime,
    int? startTime,
    int? endTime,
    Enum$Mode? mode,
    bool? transitLeg,
    bool? rentedBike,
    double? duration,
    double? distance,
    Query$Itinerary$plan$itineraries$legs$legGeometry? legGeometry,
    List<Query$Itinerary$plan$itineraries$legs$intermediatePlaces?>?
        intermediatePlaces,
    Query$Itinerary$plan$itineraries$legs$from? from,
    Query$Itinerary$plan$itineraries$legs$to? to,
    Query$Itinerary$plan$itineraries$legs$trip? trip,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry<TRes>
      get legGeometry =>
          CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry.stub(_res);
  intermediatePlaces(_fn) => _res;
  CopyWith$Query$Itinerary$plan$itineraries$legs$from<TRes> get from =>
      CopyWith$Query$Itinerary$plan$itineraries$legs$from.stub(_res);
  CopyWith$Query$Itinerary$plan$itineraries$legs$to<TRes> get to =>
      CopyWith$Query$Itinerary$plan$itineraries$legs$to.stub(_res);
  CopyWith$Query$Itinerary$plan$itineraries$legs$trip<TRes> get trip =>
      CopyWith$Query$Itinerary$plan$itineraries$legs$trip.stub(_res);
}

class Query$Itinerary$plan$itineraries$legs$legGeometry {
  Query$Itinerary$plan$itineraries$legs$legGeometry({
    this.points,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs$legGeometry.fromJson(
      Map<String, dynamic> json) {
    final l$points = json['points'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs$legGeometry(
      points: (l$points as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? points;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$points = points;
    _resultData['points'] = l$points;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$points = points;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$points,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Itinerary$plan$itineraries$legs$legGeometry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$points = points;
    final lOther$points = other.points;
    if (l$points != lOther$points) {
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

extension UtilityExtension$Query$Itinerary$plan$itineraries$legs$legGeometry
    on Query$Itinerary$plan$itineraries$legs$legGeometry {
  CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry<
          Query$Itinerary$plan$itineraries$legs$legGeometry>
      get copyWith =>
          CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry<
    TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry(
    Query$Itinerary$plan$itineraries$legs$legGeometry instance,
    TRes Function(Query$Itinerary$plan$itineraries$legs$legGeometry) then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$legGeometry;

  factory CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$legGeometry;

  TRes call({
    String? points,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$legGeometry<TRes>
    implements
        CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry<TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$legGeometry(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries$legs$legGeometry _instance;

  final TRes Function(Query$Itinerary$plan$itineraries$legs$legGeometry) _then;

  static const _undefined = {};

  TRes call({
    Object? points = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries$legs$legGeometry(
        points: points == _undefined ? _instance.points : (points as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$legGeometry<TRes>
    implements
        CopyWith$Query$Itinerary$plan$itineraries$legs$legGeometry<TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$legGeometry(
      this._res);

  TRes _res;

  call({
    String? points,
    String? $__typename,
  }) =>
      _res;
}

class Query$Itinerary$plan$itineraries$legs$intermediatePlaces {
  Query$Itinerary$plan$itineraries$legs$intermediatePlaces({
    required this.lat,
    required this.lon,
    this.stop,
    this.bikeRentalStation,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs$intermediatePlaces.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lon = json['lon'];
    final l$stop = json['stop'];
    final l$bikeRentalStation = json['bikeRentalStation'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs$intermediatePlaces(
      lat: (l$lat as num).toDouble(),
      lon: (l$lon as num).toDouble(),
      stop: l$stop == null
          ? null
          : Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop
              .fromJson((l$stop as Map<String, dynamic>)),
      bikeRentalStation: l$bikeRentalStation == null
          ? null
          : Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation
              .fromJson((l$bikeRentalStation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final double lat;

  final double lon;

  final Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop? stop;

  final Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation?
      bikeRentalStation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lon = lon;
    _resultData['lon'] = l$lon;
    final l$stop = stop;
    _resultData['stop'] = l$stop?.toJson();
    final l$bikeRentalStation = bikeRentalStation;
    _resultData['bikeRentalStation'] = l$bikeRentalStation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lon = lon;
    final l$stop = stop;
    final l$bikeRentalStation = bikeRentalStation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lat,
      l$lon,
      l$stop,
      l$bikeRentalStation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Itinerary$plan$itineraries$legs$intermediatePlaces) ||
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
    final l$stop = stop;
    final lOther$stop = other.stop;
    if (l$stop != lOther$stop) {
      return false;
    }
    final l$bikeRentalStation = bikeRentalStation;
    final lOther$bikeRentalStation = other.bikeRentalStation;
    if (l$bikeRentalStation != lOther$bikeRentalStation) {
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

extension UtilityExtension$Query$Itinerary$plan$itineraries$legs$intermediatePlaces
    on Query$Itinerary$plan$itineraries$legs$intermediatePlaces {
  CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces<
          Query$Itinerary$plan$itineraries$legs$intermediatePlaces>
      get copyWith =>
          CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces<
    TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces(
    Query$Itinerary$plan$itineraries$legs$intermediatePlaces instance,
    TRes Function(Query$Itinerary$plan$itineraries$legs$intermediatePlaces)
        then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces;

  factory CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces;

  TRes call({
    double? lat,
    double? lon,
    Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop? stop,
    Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation?
        bikeRentalStation,
    String? $__typename,
  });
  CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop<TRes>
      get stop;
  CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation<
      TRes> get bikeRentalStation;
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces<
        TRes>
    implements
        CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces<
            TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries$legs$intermediatePlaces _instance;

  final TRes Function(Query$Itinerary$plan$itineraries$legs$intermediatePlaces)
      _then;

  static const _undefined = {};

  TRes call({
    Object? lat = _undefined,
    Object? lon = _undefined,
    Object? stop = _undefined,
    Object? bikeRentalStation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries$legs$intermediatePlaces(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lon: lon == _undefined || lon == null ? _instance.lon : (lon as double),
        stop: stop == _undefined
            ? _instance.stop
            : (stop
                as Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop?),
        bikeRentalStation: bikeRentalStation == _undefined
            ? _instance.bikeRentalStation
            : (bikeRentalStation
                as Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop<TRes>
      get stop {
    final local$stop = _instance.stop;
    return local$stop == null
        ? CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop
            .stub(_then(_instance))
        : CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop(
            local$stop, (e) => call(stop: e));
  }

  CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation<
      TRes> get bikeRentalStation {
    final local$bikeRentalStation = _instance.bikeRentalStation;
    return local$bikeRentalStation == null
        ? CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation
            .stub(_then(_instance))
        : CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation(
            local$bikeRentalStation, (e) => call(bikeRentalStation: e));
  }
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces<
        TRes>
    implements
        CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces<
            TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lon,
    Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop? stop,
    Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation?
        bikeRentalStation,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop<TRes>
      get stop =>
          CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop
              .stub(_res);
  CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation<
          TRes>
      get bikeRentalStation =>
          CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation
              .stub(_res);
}

class Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop {
  Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop({
    this.vehicleMode,
    required this.gtfsId,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop.fromJson(
      Map<String, dynamic> json) {
    final l$vehicleMode = json['vehicleMode'];
    final l$gtfsId = json['gtfsId'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop(
      vehicleMode: l$vehicleMode == null
          ? null
          : fromJson$Enum$Mode((l$vehicleMode as String)),
      gtfsId: (l$gtfsId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Mode? vehicleMode;

  final String gtfsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vehicleMode = vehicleMode;
    _resultData['vehicleMode'] =
        l$vehicleMode == null ? null : toJson$Enum$Mode(l$vehicleMode);
    final l$gtfsId = gtfsId;
    _resultData['gtfsId'] = l$gtfsId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vehicleMode = vehicleMode;
    final l$gtfsId = gtfsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vehicleMode,
      l$gtfsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vehicleMode = vehicleMode;
    final lOther$vehicleMode = other.vehicleMode;
    if (l$vehicleMode != lOther$vehicleMode) {
      return false;
    }
    final l$gtfsId = gtfsId;
    final lOther$gtfsId = other.gtfsId;
    if (l$gtfsId != lOther$gtfsId) {
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

extension UtilityExtension$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop
    on Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop {
  CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop<
          Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop>
      get copyWith =>
          CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop<
    TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop(
    Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop instance,
    TRes Function(Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop)
        then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop;

  factory CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop;

  TRes call({
    Enum$Mode? vehicleMode,
    String? gtfsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop<
        TRes>
    implements
        CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop<
            TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop _instance;

  final TRes Function(
      Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop) _then;

  static const _undefined = {};

  TRes call({
    Object? vehicleMode = _undefined,
    Object? gtfsId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop(
        vehicleMode: vehicleMode == _undefined
            ? _instance.vehicleMode
            : (vehicleMode as Enum$Mode?),
        gtfsId: gtfsId == _undefined || gtfsId == null
            ? _instance.gtfsId
            : (gtfsId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop<
        TRes>
    implements
        CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop<
            TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$stop(
      this._res);

  TRes _res;

  call({
    Enum$Mode? vehicleMode,
    String? gtfsId,
    String? $__typename,
  }) =>
      _res;
}

class Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation {
  Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation({
    this.bikesAvailable,
    this.stationId,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation.fromJson(
      Map<String, dynamic> json) {
    final l$bikesAvailable = json['bikesAvailable'];
    final l$stationId = json['stationId'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation(
      bikesAvailable: (l$bikesAvailable as int?),
      stationId: (l$stationId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? bikesAvailable;

  final String? stationId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bikesAvailable = bikesAvailable;
    _resultData['bikesAvailable'] = l$bikesAvailable;
    final l$stationId = stationId;
    _resultData['stationId'] = l$stationId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bikesAvailable = bikesAvailable;
    final l$stationId = stationId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bikesAvailable,
      l$stationId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bikesAvailable = bikesAvailable;
    final lOther$bikesAvailable = other.bikesAvailable;
    if (l$bikesAvailable != lOther$bikesAvailable) {
      return false;
    }
    final l$stationId = stationId;
    final lOther$stationId = other.stationId;
    if (l$stationId != lOther$stationId) {
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

extension UtilityExtension$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation
    on Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation {
  CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation<
          Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation>
      get copyWith =>
          CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation<
    TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation(
    Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation
        instance,
    TRes Function(
            Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation)
        then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation;

  factory CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation;

  TRes call({
    int? bikesAvailable,
    String? stationId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation<
        TRes>
    implements
        CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation<
            TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation
      _instance;

  final TRes Function(
          Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation)
      _then;

  static const _undefined = {};

  TRes call({
    Object? bikesAvailable = _undefined,
    Object? stationId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation(
        bikesAvailable: bikesAvailable == _undefined
            ? _instance.bikesAvailable
            : (bikesAvailable as int?),
        stationId: stationId == _undefined
            ? _instance.stationId
            : (stationId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation<
        TRes>
    implements
        CopyWith$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation<
            TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$intermediatePlaces$bikeRentalStation(
      this._res);

  TRes _res;

  call({
    int? bikesAvailable,
    String? stationId,
    String? $__typename,
  }) =>
      _res;
}

class Query$Itinerary$plan$itineraries$legs$from {
  Query$Itinerary$plan$itineraries$legs$from({
    this.name,
    required this.lat,
    required this.lon,
    this.stop,
    this.bikeRentalStation,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs$from.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$lat = json['lat'];
    final l$lon = json['lon'];
    final l$stop = json['stop'];
    final l$bikeRentalStation = json['bikeRentalStation'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs$from(
      name: (l$name as String?),
      lat: (l$lat as num).toDouble(),
      lon: (l$lon as num).toDouble(),
      stop: l$stop == null
          ? null
          : Query$Itinerary$plan$itineraries$legs$from$stop.fromJson(
              (l$stop as Map<String, dynamic>)),
      bikeRentalStation: l$bikeRentalStation == null
          ? null
          : Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation
              .fromJson((l$bikeRentalStation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final double lat;

  final double lon;

  final Query$Itinerary$plan$itineraries$legs$from$stop? stop;

  final Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation?
      bikeRentalStation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lon = lon;
    _resultData['lon'] = l$lon;
    final l$stop = stop;
    _resultData['stop'] = l$stop?.toJson();
    final l$bikeRentalStation = bikeRentalStation;
    _resultData['bikeRentalStation'] = l$bikeRentalStation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$lat = lat;
    final l$lon = lon;
    final l$stop = stop;
    final l$bikeRentalStation = bikeRentalStation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$lat,
      l$lon,
      l$stop,
      l$bikeRentalStation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Itinerary$plan$itineraries$legs$from) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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
    final l$stop = stop;
    final lOther$stop = other.stop;
    if (l$stop != lOther$stop) {
      return false;
    }
    final l$bikeRentalStation = bikeRentalStation;
    final lOther$bikeRentalStation = other.bikeRentalStation;
    if (l$bikeRentalStation != lOther$bikeRentalStation) {
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

extension UtilityExtension$Query$Itinerary$plan$itineraries$legs$from
    on Query$Itinerary$plan$itineraries$legs$from {
  CopyWith$Query$Itinerary$plan$itineraries$legs$from<
          Query$Itinerary$plan$itineraries$legs$from>
      get copyWith => CopyWith$Query$Itinerary$plan$itineraries$legs$from(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries$legs$from<TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries$legs$from(
    Query$Itinerary$plan$itineraries$legs$from instance,
    TRes Function(Query$Itinerary$plan$itineraries$legs$from) then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$from;

  factory CopyWith$Query$Itinerary$plan$itineraries$legs$from.stub(TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$from;

  TRes call({
    String? name,
    double? lat,
    double? lon,
    Query$Itinerary$plan$itineraries$legs$from$stop? stop,
    Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation?
        bikeRentalStation,
    String? $__typename,
  });
  CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop<TRes> get stop;
  CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation<TRes>
      get bikeRentalStation;
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$from<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs$from<TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$from(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries$legs$from _instance;

  final TRes Function(Query$Itinerary$plan$itineraries$legs$from) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? lat = _undefined,
    Object? lon = _undefined,
    Object? stop = _undefined,
    Object? bikeRentalStation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries$legs$from(
        name: name == _undefined ? _instance.name : (name as String?),
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lon: lon == _undefined || lon == null ? _instance.lon : (lon as double),
        stop: stop == _undefined
            ? _instance.stop
            : (stop as Query$Itinerary$plan$itineraries$legs$from$stop?),
        bikeRentalStation: bikeRentalStation == _undefined
            ? _instance.bikeRentalStation
            : (bikeRentalStation
                as Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop<TRes> get stop {
    final local$stop = _instance.stop;
    return local$stop == null
        ? CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop.stub(
            _then(_instance))
        : CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop(
            local$stop, (e) => call(stop: e));
  }

  CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation<TRes>
      get bikeRentalStation {
    final local$bikeRentalStation = _instance.bikeRentalStation;
    return local$bikeRentalStation == null
        ? CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation
            .stub(_then(_instance))
        : CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation(
            local$bikeRentalStation, (e) => call(bikeRentalStation: e));
  }
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$from<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs$from<TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$from(this._res);

  TRes _res;

  call({
    String? name,
    double? lat,
    double? lon,
    Query$Itinerary$plan$itineraries$legs$from$stop? stop,
    Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation?
        bikeRentalStation,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop<TRes> get stop =>
      CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop.stub(_res);
  CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation<TRes>
      get bikeRentalStation =>
          CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation
              .stub(_res);
}

class Query$Itinerary$plan$itineraries$legs$from$stop {
  Query$Itinerary$plan$itineraries$legs$from$stop({
    this.lat,
    this.lon,
    required this.name,
    required this.gtfsId,
    this.code,
    this.desc,
    this.zoneId,
    this.vehicleMode,
    this.locationType,
    this.platformCode,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs$from$stop.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lon = json['lon'];
    final l$name = json['name'];
    final l$gtfsId = json['gtfsId'];
    final l$code = json['code'];
    final l$desc = json['desc'];
    final l$zoneId = json['zoneId'];
    final l$vehicleMode = json['vehicleMode'];
    final l$locationType = json['locationType'];
    final l$platformCode = json['platformCode'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs$from$stop(
      lat: (l$lat as num?)?.toDouble(),
      lon: (l$lon as num?)?.toDouble(),
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
      $__typename: (l$$__typename as String),
    );
  }

  final double? lat;

  final double? lon;

  final String name;

  final String gtfsId;

  final String? code;

  final String? desc;

  final String? zoneId;

  final Enum$Mode? vehicleMode;

  final Enum$LocationType? locationType;

  final String? platformCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lon = lon;
    _resultData['lon'] = l$lon;
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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lon = lon;
    final l$name = name;
    final l$gtfsId = gtfsId;
    final l$code = code;
    final l$desc = desc;
    final l$zoneId = zoneId;
    final l$vehicleMode = vehicleMode;
    final l$locationType = locationType;
    final l$platformCode = platformCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lat,
      l$lon,
      l$name,
      l$gtfsId,
      l$code,
      l$desc,
      l$zoneId,
      l$vehicleMode,
      l$locationType,
      l$platformCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Itinerary$plan$itineraries$legs$from$stop) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Itinerary$plan$itineraries$legs$from$stop
    on Query$Itinerary$plan$itineraries$legs$from$stop {
  CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop<
          Query$Itinerary$plan$itineraries$legs$from$stop>
      get copyWith => CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop<TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop(
    Query$Itinerary$plan$itineraries$legs$from$stop instance,
    TRes Function(Query$Itinerary$plan$itineraries$legs$from$stop) then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$from$stop;

  factory CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$from$stop;

  TRes call({
    double? lat,
    double? lon,
    String? name,
    String? gtfsId,
    String? code,
    String? desc,
    String? zoneId,
    Enum$Mode? vehicleMode,
    Enum$LocationType? locationType,
    String? platformCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$from$stop<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop<TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$from$stop(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries$legs$from$stop _instance;

  final TRes Function(Query$Itinerary$plan$itineraries$legs$from$stop) _then;

  static const _undefined = {};

  TRes call({
    Object? lat = _undefined,
    Object? lon = _undefined,
    Object? name = _undefined,
    Object? gtfsId = _undefined,
    Object? code = _undefined,
    Object? desc = _undefined,
    Object? zoneId = _undefined,
    Object? vehicleMode = _undefined,
    Object? locationType = _undefined,
    Object? platformCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries$legs$from$stop(
        lat: lat == _undefined ? _instance.lat : (lat as double?),
        lon: lon == _undefined ? _instance.lon : (lon as double?),
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$from$stop<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs$from$stop<TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$from$stop(this._res);

  TRes _res;

  call({
    double? lat,
    double? lon,
    String? name,
    String? gtfsId,
    String? code,
    String? desc,
    String? zoneId,
    Enum$Mode? vehicleMode,
    Enum$LocationType? locationType,
    String? platformCode,
    String? $__typename,
  }) =>
      _res;
}

class Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation {
  Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation({
    this.bikesAvailable,
    this.stationId,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation.fromJson(
      Map<String, dynamic> json) {
    final l$bikesAvailable = json['bikesAvailable'];
    final l$stationId = json['stationId'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation(
      bikesAvailable: (l$bikesAvailable as int?),
      stationId: (l$stationId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? bikesAvailable;

  final String? stationId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bikesAvailable = bikesAvailable;
    _resultData['bikesAvailable'] = l$bikesAvailable;
    final l$stationId = stationId;
    _resultData['stationId'] = l$stationId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bikesAvailable = bikesAvailable;
    final l$stationId = stationId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bikesAvailable,
      l$stationId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bikesAvailable = bikesAvailable;
    final lOther$bikesAvailable = other.bikesAvailable;
    if (l$bikesAvailable != lOther$bikesAvailable) {
      return false;
    }
    final l$stationId = stationId;
    final lOther$stationId = other.stationId;
    if (l$stationId != lOther$stationId) {
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

extension UtilityExtension$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation
    on Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation {
  CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation<
          Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation>
      get copyWith =>
          CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation<
    TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation(
    Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation instance,
    TRes Function(Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation)
        then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation;

  factory CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation;

  TRes call({
    int? bikesAvailable,
    String? stationId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation<
        TRes>
    implements
        CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation<
            TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation _instance;

  final TRes Function(
      Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation) _then;

  static const _undefined = {};

  TRes call({
    Object? bikesAvailable = _undefined,
    Object? stationId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation(
        bikesAvailable: bikesAvailable == _undefined
            ? _instance.bikesAvailable
            : (bikesAvailable as int?),
        stationId: stationId == _undefined
            ? _instance.stationId
            : (stationId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation<
        TRes>
    implements
        CopyWith$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation<
            TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$from$bikeRentalStation(
      this._res);

  TRes _res;

  call({
    int? bikesAvailable,
    String? stationId,
    String? $__typename,
  }) =>
      _res;
}

class Query$Itinerary$plan$itineraries$legs$to {
  Query$Itinerary$plan$itineraries$legs$to({
    this.name,
    required this.lat,
    required this.lon,
    this.stop,
    this.bikeRentalStation,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs$to.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$lat = json['lat'];
    final l$lon = json['lon'];
    final l$stop = json['stop'];
    final l$bikeRentalStation = json['bikeRentalStation'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs$to(
      name: (l$name as String?),
      lat: (l$lat as num).toDouble(),
      lon: (l$lon as num).toDouble(),
      stop: l$stop == null
          ? null
          : Query$Itinerary$plan$itineraries$legs$to$stop.fromJson(
              (l$stop as Map<String, dynamic>)),
      bikeRentalStation: l$bikeRentalStation == null
          ? null
          : Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation.fromJson(
              (l$bikeRentalStation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final double lat;

  final double lon;

  final Query$Itinerary$plan$itineraries$legs$to$stop? stop;

  final Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation?
      bikeRentalStation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lon = lon;
    _resultData['lon'] = l$lon;
    final l$stop = stop;
    _resultData['stop'] = l$stop?.toJson();
    final l$bikeRentalStation = bikeRentalStation;
    _resultData['bikeRentalStation'] = l$bikeRentalStation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$lat = lat;
    final l$lon = lon;
    final l$stop = stop;
    final l$bikeRentalStation = bikeRentalStation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$lat,
      l$lon,
      l$stop,
      l$bikeRentalStation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Itinerary$plan$itineraries$legs$to) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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
    final l$stop = stop;
    final lOther$stop = other.stop;
    if (l$stop != lOther$stop) {
      return false;
    }
    final l$bikeRentalStation = bikeRentalStation;
    final lOther$bikeRentalStation = other.bikeRentalStation;
    if (l$bikeRentalStation != lOther$bikeRentalStation) {
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

extension UtilityExtension$Query$Itinerary$plan$itineraries$legs$to
    on Query$Itinerary$plan$itineraries$legs$to {
  CopyWith$Query$Itinerary$plan$itineraries$legs$to<
          Query$Itinerary$plan$itineraries$legs$to>
      get copyWith => CopyWith$Query$Itinerary$plan$itineraries$legs$to(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries$legs$to<TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries$legs$to(
    Query$Itinerary$plan$itineraries$legs$to instance,
    TRes Function(Query$Itinerary$plan$itineraries$legs$to) then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$to;

  factory CopyWith$Query$Itinerary$plan$itineraries$legs$to.stub(TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$to;

  TRes call({
    String? name,
    double? lat,
    double? lon,
    Query$Itinerary$plan$itineraries$legs$to$stop? stop,
    Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation?
        bikeRentalStation,
    String? $__typename,
  });
  CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop<TRes> get stop;
  CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation<TRes>
      get bikeRentalStation;
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$to<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs$to<TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$to(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries$legs$to _instance;

  final TRes Function(Query$Itinerary$plan$itineraries$legs$to) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? lat = _undefined,
    Object? lon = _undefined,
    Object? stop = _undefined,
    Object? bikeRentalStation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries$legs$to(
        name: name == _undefined ? _instance.name : (name as String?),
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lon: lon == _undefined || lon == null ? _instance.lon : (lon as double),
        stop: stop == _undefined
            ? _instance.stop
            : (stop as Query$Itinerary$plan$itineraries$legs$to$stop?),
        bikeRentalStation: bikeRentalStation == _undefined
            ? _instance.bikeRentalStation
            : (bikeRentalStation
                as Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop<TRes> get stop {
    final local$stop = _instance.stop;
    return local$stop == null
        ? CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop.stub(
            _then(_instance))
        : CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop(
            local$stop, (e) => call(stop: e));
  }

  CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation<TRes>
      get bikeRentalStation {
    final local$bikeRentalStation = _instance.bikeRentalStation;
    return local$bikeRentalStation == null
        ? CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation
            .stub(_then(_instance))
        : CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation(
            local$bikeRentalStation, (e) => call(bikeRentalStation: e));
  }
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$to<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs$to<TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$to(this._res);

  TRes _res;

  call({
    String? name,
    double? lat,
    double? lon,
    Query$Itinerary$plan$itineraries$legs$to$stop? stop,
    Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation?
        bikeRentalStation,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop<TRes> get stop =>
      CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop.stub(_res);
  CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation<TRes>
      get bikeRentalStation =>
          CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation
              .stub(_res);
}

class Query$Itinerary$plan$itineraries$legs$to$stop {
  Query$Itinerary$plan$itineraries$legs$to$stop({
    required this.name,
    required this.gtfsId,
    this.lat,
    this.lon,
    this.code,
    this.desc,
    this.zoneId,
    this.vehicleMode,
    this.locationType,
    this.platformCode,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs$to$stop.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$gtfsId = json['gtfsId'];
    final l$lat = json['lat'];
    final l$lon = json['lon'];
    final l$code = json['code'];
    final l$desc = json['desc'];
    final l$zoneId = json['zoneId'];
    final l$vehicleMode = json['vehicleMode'];
    final l$locationType = json['locationType'];
    final l$platformCode = json['platformCode'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs$to$stop(
      name: (l$name as String),
      gtfsId: (l$gtfsId as String),
      lat: (l$lat as num?)?.toDouble(),
      lon: (l$lon as num?)?.toDouble(),
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
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String gtfsId;

  final double? lat;

  final double? lon;

  final String? code;

  final String? desc;

  final String? zoneId;

  final Enum$Mode? vehicleMode;

  final Enum$LocationType? locationType;

  final String? platformCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$gtfsId = gtfsId;
    _resultData['gtfsId'] = l$gtfsId;
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lon = lon;
    _resultData['lon'] = l$lon;
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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$gtfsId = gtfsId;
    final l$lat = lat;
    final l$lon = lon;
    final l$code = code;
    final l$desc = desc;
    final l$zoneId = zoneId;
    final l$vehicleMode = vehicleMode;
    final l$locationType = locationType;
    final l$platformCode = platformCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$gtfsId,
      l$lat,
      l$lon,
      l$code,
      l$desc,
      l$zoneId,
      l$vehicleMode,
      l$locationType,
      l$platformCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Itinerary$plan$itineraries$legs$to$stop) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Itinerary$plan$itineraries$legs$to$stop
    on Query$Itinerary$plan$itineraries$legs$to$stop {
  CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop<
          Query$Itinerary$plan$itineraries$legs$to$stop>
      get copyWith => CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop<TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop(
    Query$Itinerary$plan$itineraries$legs$to$stop instance,
    TRes Function(Query$Itinerary$plan$itineraries$legs$to$stop) then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$to$stop;

  factory CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$to$stop;

  TRes call({
    String? name,
    String? gtfsId,
    double? lat,
    double? lon,
    String? code,
    String? desc,
    String? zoneId,
    Enum$Mode? vehicleMode,
    Enum$LocationType? locationType,
    String? platformCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$to$stop<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop<TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$to$stop(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries$legs$to$stop _instance;

  final TRes Function(Query$Itinerary$plan$itineraries$legs$to$stop) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? gtfsId = _undefined,
    Object? lat = _undefined,
    Object? lon = _undefined,
    Object? code = _undefined,
    Object? desc = _undefined,
    Object? zoneId = _undefined,
    Object? vehicleMode = _undefined,
    Object? locationType = _undefined,
    Object? platformCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries$legs$to$stop(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        gtfsId: gtfsId == _undefined || gtfsId == null
            ? _instance.gtfsId
            : (gtfsId as String),
        lat: lat == _undefined ? _instance.lat : (lat as double?),
        lon: lon == _undefined ? _instance.lon : (lon as double?),
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$to$stop<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs$to$stop<TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$to$stop(this._res);

  TRes _res;

  call({
    String? name,
    String? gtfsId,
    double? lat,
    double? lon,
    String? code,
    String? desc,
    String? zoneId,
    Enum$Mode? vehicleMode,
    Enum$LocationType? locationType,
    String? platformCode,
    String? $__typename,
  }) =>
      _res;
}

class Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation {
  Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation({
    this.bikesAvailable,
    this.stationId,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation.fromJson(
      Map<String, dynamic> json) {
    final l$bikesAvailable = json['bikesAvailable'];
    final l$stationId = json['stationId'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation(
      bikesAvailable: (l$bikesAvailable as int?),
      stationId: (l$stationId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? bikesAvailable;

  final String? stationId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bikesAvailable = bikesAvailable;
    _resultData['bikesAvailable'] = l$bikesAvailable;
    final l$stationId = stationId;
    _resultData['stationId'] = l$stationId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bikesAvailable = bikesAvailable;
    final l$stationId = stationId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bikesAvailable,
      l$stationId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bikesAvailable = bikesAvailable;
    final lOther$bikesAvailable = other.bikesAvailable;
    if (l$bikesAvailable != lOther$bikesAvailable) {
      return false;
    }
    final l$stationId = stationId;
    final lOther$stationId = other.stationId;
    if (l$stationId != lOther$stationId) {
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

extension UtilityExtension$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation
    on Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation {
  CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation<
          Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation>
      get copyWith =>
          CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation<
    TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation(
    Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation instance,
    TRes Function(Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation)
        then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation;

  factory CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation;

  TRes call({
    int? bikesAvailable,
    String? stationId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation<
        TRes>
    implements
        CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation<
            TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation _instance;

  final TRes Function(
      Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation) _then;

  static const _undefined = {};

  TRes call({
    Object? bikesAvailable = _undefined,
    Object? stationId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation(
        bikesAvailable: bikesAvailable == _undefined
            ? _instance.bikesAvailable
            : (bikesAvailable as int?),
        stationId: stationId == _undefined
            ? _instance.stationId
            : (stationId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation<
        TRes>
    implements
        CopyWith$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation<
            TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$to$bikeRentalStation(
      this._res);

  TRes _res;

  call({
    int? bikesAvailable,
    String? stationId,
    String? $__typename,
  }) =>
      _res;
}

class Query$Itinerary$plan$itineraries$legs$trip {
  Query$Itinerary$plan$itineraries$legs$trip({
    this.tripHeadsign,
    this.routeShortName,
    required this.$__typename,
  });

  factory Query$Itinerary$plan$itineraries$legs$trip.fromJson(
      Map<String, dynamic> json) {
    final l$tripHeadsign = json['tripHeadsign'];
    final l$routeShortName = json['routeShortName'];
    final l$$__typename = json['__typename'];
    return Query$Itinerary$plan$itineraries$legs$trip(
      tripHeadsign: (l$tripHeadsign as String?),
      routeShortName: (l$routeShortName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? tripHeadsign;

  final String? routeShortName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tripHeadsign = tripHeadsign;
    _resultData['tripHeadsign'] = l$tripHeadsign;
    final l$routeShortName = routeShortName;
    _resultData['routeShortName'] = l$routeShortName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tripHeadsign = tripHeadsign;
    final l$routeShortName = routeShortName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tripHeadsign,
      l$routeShortName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Itinerary$plan$itineraries$legs$trip) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Itinerary$plan$itineraries$legs$trip
    on Query$Itinerary$plan$itineraries$legs$trip {
  CopyWith$Query$Itinerary$plan$itineraries$legs$trip<
          Query$Itinerary$plan$itineraries$legs$trip>
      get copyWith => CopyWith$Query$Itinerary$plan$itineraries$legs$trip(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Itinerary$plan$itineraries$legs$trip<TRes> {
  factory CopyWith$Query$Itinerary$plan$itineraries$legs$trip(
    Query$Itinerary$plan$itineraries$legs$trip instance,
    TRes Function(Query$Itinerary$plan$itineraries$legs$trip) then,
  ) = _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$trip;

  factory CopyWith$Query$Itinerary$plan$itineraries$legs$trip.stub(TRes res) =
      _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$trip;

  TRes call({
    String? tripHeadsign,
    String? routeShortName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$trip<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs$trip<TRes> {
  _CopyWithImpl$Query$Itinerary$plan$itineraries$legs$trip(
    this._instance,
    this._then,
  );

  final Query$Itinerary$plan$itineraries$legs$trip _instance;

  final TRes Function(Query$Itinerary$plan$itineraries$legs$trip) _then;

  static const _undefined = {};

  TRes call({
    Object? tripHeadsign = _undefined,
    Object? routeShortName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Itinerary$plan$itineraries$legs$trip(
        tripHeadsign: tripHeadsign == _undefined
            ? _instance.tripHeadsign
            : (tripHeadsign as String?),
        routeShortName: routeShortName == _undefined
            ? _instance.routeShortName
            : (routeShortName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$trip<TRes>
    implements CopyWith$Query$Itinerary$plan$itineraries$legs$trip<TRes> {
  _CopyWithStubImpl$Query$Itinerary$plan$itineraries$legs$trip(this._res);

  TRes _res;

  call({
    String? tripHeadsign,
    String? routeShortName,
    String? $__typename,
  }) =>
      _res;
}
