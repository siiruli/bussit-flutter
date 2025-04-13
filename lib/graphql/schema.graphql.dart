class Input$AccessibilityPreferencesInput {
  factory Input$AccessibilityPreferencesInput(
          {Input$WheelchairPreferencesInput? wheelchair}) =>
      Input$AccessibilityPreferencesInput._({
        if (wheelchair != null) r'wheelchair': wheelchair,
      });

  Input$AccessibilityPreferencesInput._(this._$data);

  factory Input$AccessibilityPreferencesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('wheelchair')) {
      final l$wheelchair = data['wheelchair'];
      result$data['wheelchair'] = l$wheelchair == null
          ? null
          : Input$WheelchairPreferencesInput.fromJson(
              (l$wheelchair as Map<String, dynamic>));
    }
    return Input$AccessibilityPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$WheelchairPreferencesInput? get wheelchair =>
      (_$data['wheelchair'] as Input$WheelchairPreferencesInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('wheelchair')) {
      final l$wheelchair = wheelchair;
      result$data['wheelchair'] = l$wheelchair?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AccessibilityPreferencesInput<
          Input$AccessibilityPreferencesInput>
      get copyWith => CopyWith$Input$AccessibilityPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AccessibilityPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$wheelchair = wheelchair;
    final lOther$wheelchair = other.wheelchair;
    if (_$data.containsKey('wheelchair') !=
        other._$data.containsKey('wheelchair')) {
      return false;
    }
    if (l$wheelchair != lOther$wheelchair) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$wheelchair = wheelchair;
    return Object.hashAll(
        [_$data.containsKey('wheelchair') ? l$wheelchair : const {}]);
  }
}

abstract class CopyWith$Input$AccessibilityPreferencesInput<TRes> {
  factory CopyWith$Input$AccessibilityPreferencesInput(
    Input$AccessibilityPreferencesInput instance,
    TRes Function(Input$AccessibilityPreferencesInput) then,
  ) = _CopyWithImpl$Input$AccessibilityPreferencesInput;

  factory CopyWith$Input$AccessibilityPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccessibilityPreferencesInput;

  TRes call({Input$WheelchairPreferencesInput? wheelchair});
  CopyWith$Input$WheelchairPreferencesInput<TRes> get wheelchair;
}

class _CopyWithImpl$Input$AccessibilityPreferencesInput<TRes>
    implements CopyWith$Input$AccessibilityPreferencesInput<TRes> {
  _CopyWithImpl$Input$AccessibilityPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$AccessibilityPreferencesInput _instance;

  final TRes Function(Input$AccessibilityPreferencesInput) _then;

  static const _undefined = {};

  TRes call({Object? wheelchair = _undefined}) =>
      _then(Input$AccessibilityPreferencesInput._({
        ..._instance._$data,
        if (wheelchair != _undefined)
          'wheelchair': (wheelchair as Input$WheelchairPreferencesInput?),
      }));
  CopyWith$Input$WheelchairPreferencesInput<TRes> get wheelchair {
    final local$wheelchair = _instance.wheelchair;
    return local$wheelchair == null
        ? CopyWith$Input$WheelchairPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$WheelchairPreferencesInput(
            local$wheelchair, (e) => call(wheelchair: e));
  }
}

class _CopyWithStubImpl$Input$AccessibilityPreferencesInput<TRes>
    implements CopyWith$Input$AccessibilityPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$AccessibilityPreferencesInput(this._res);

  TRes _res;

  call({Input$WheelchairPreferencesInput? wheelchair}) => _res;
  CopyWith$Input$WheelchairPreferencesInput<TRes> get wheelchair =>
      CopyWith$Input$WheelchairPreferencesInput.stub(_res);
}

class Input$AlightPreferencesInput {
  factory Input$AlightPreferencesInput({String? slack}) =>
      Input$AlightPreferencesInput._({
        if (slack != null) r'slack': slack,
      });

  Input$AlightPreferencesInput._(this._$data);

  factory Input$AlightPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('slack')) {
      final l$slack = data['slack'];
      result$data['slack'] = (l$slack as String?);
    }
    return Input$AlightPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get slack => (_$data['slack'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('slack')) {
      final l$slack = slack;
      result$data['slack'] = l$slack;
    }
    return result$data;
  }

  CopyWith$Input$AlightPreferencesInput<Input$AlightPreferencesInput>
      get copyWith => CopyWith$Input$AlightPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AlightPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$slack = slack;
    final lOther$slack = other.slack;
    if (_$data.containsKey('slack') != other._$data.containsKey('slack')) {
      return false;
    }
    if (l$slack != lOther$slack) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$slack = slack;
    return Object.hashAll([_$data.containsKey('slack') ? l$slack : const {}]);
  }
}

abstract class CopyWith$Input$AlightPreferencesInput<TRes> {
  factory CopyWith$Input$AlightPreferencesInput(
    Input$AlightPreferencesInput instance,
    TRes Function(Input$AlightPreferencesInput) then,
  ) = _CopyWithImpl$Input$AlightPreferencesInput;

  factory CopyWith$Input$AlightPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AlightPreferencesInput;

  TRes call({String? slack});
}

class _CopyWithImpl$Input$AlightPreferencesInput<TRes>
    implements CopyWith$Input$AlightPreferencesInput<TRes> {
  _CopyWithImpl$Input$AlightPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$AlightPreferencesInput _instance;

  final TRes Function(Input$AlightPreferencesInput) _then;

  static const _undefined = {};

  TRes call({Object? slack = _undefined}) =>
      _then(Input$AlightPreferencesInput._({
        ..._instance._$data,
        if (slack != _undefined) 'slack': (slack as String?),
      }));
}

class _CopyWithStubImpl$Input$AlightPreferencesInput<TRes>
    implements CopyWith$Input$AlightPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$AlightPreferencesInput(this._res);

  TRes _res;

  call({String? slack}) => _res;
}

class Input$BicycleParkingPreferencesInput {
  factory Input$BicycleParkingPreferencesInput({
    List<Input$ParkingFilter>? filters,
    List<Input$ParkingFilter>? preferred,
    String? unpreferredCost,
  }) =>
      Input$BicycleParkingPreferencesInput._({
        if (filters != null) r'filters': filters,
        if (preferred != null) r'preferred': preferred,
        if (unpreferredCost != null) r'unpreferredCost': unpreferredCost,
      });

  Input$BicycleParkingPreferencesInput._(this._$data);

  factory Input$BicycleParkingPreferencesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filters')) {
      final l$filters = data['filters'];
      result$data['filters'] = (l$filters as List<dynamic>?)
          ?.map(
              (e) => Input$ParkingFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('preferred')) {
      final l$preferred = data['preferred'];
      result$data['preferred'] = (l$preferred as List<dynamic>?)
          ?.map(
              (e) => Input$ParkingFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('unpreferredCost')) {
      final l$unpreferredCost = data['unpreferredCost'];
      result$data['unpreferredCost'] = (l$unpreferredCost as String?);
    }
    return Input$BicycleParkingPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ParkingFilter>? get filters =>
      (_$data['filters'] as List<Input$ParkingFilter>?);
  List<Input$ParkingFilter>? get preferred =>
      (_$data['preferred'] as List<Input$ParkingFilter>?);
  String? get unpreferredCost => (_$data['unpreferredCost'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filters')) {
      final l$filters = filters;
      result$data['filters'] = l$filters?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('preferred')) {
      final l$preferred = preferred;
      result$data['preferred'] = l$preferred?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('unpreferredCost')) {
      final l$unpreferredCost = unpreferredCost;
      result$data['unpreferredCost'] = l$unpreferredCost;
    }
    return result$data;
  }

  CopyWith$Input$BicycleParkingPreferencesInput<
          Input$BicycleParkingPreferencesInput>
      get copyWith => CopyWith$Input$BicycleParkingPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BicycleParkingPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filters = filters;
    final lOther$filters = other.filters;
    if (_$data.containsKey('filters') != other._$data.containsKey('filters')) {
      return false;
    }
    if (l$filters != null && lOther$filters != null) {
      if (l$filters.length != lOther$filters.length) {
        return false;
      }
      for (int i = 0; i < l$filters.length; i++) {
        final l$filters$entry = l$filters[i];
        final lOther$filters$entry = lOther$filters[i];
        if (l$filters$entry != lOther$filters$entry) {
          return false;
        }
      }
    } else if (l$filters != lOther$filters) {
      return false;
    }
    final l$preferred = preferred;
    final lOther$preferred = other.preferred;
    if (_$data.containsKey('preferred') !=
        other._$data.containsKey('preferred')) {
      return false;
    }
    if (l$preferred != null && lOther$preferred != null) {
      if (l$preferred.length != lOther$preferred.length) {
        return false;
      }
      for (int i = 0; i < l$preferred.length; i++) {
        final l$preferred$entry = l$preferred[i];
        final lOther$preferred$entry = lOther$preferred[i];
        if (l$preferred$entry != lOther$preferred$entry) {
          return false;
        }
      }
    } else if (l$preferred != lOther$preferred) {
      return false;
    }
    final l$unpreferredCost = unpreferredCost;
    final lOther$unpreferredCost = other.unpreferredCost;
    if (_$data.containsKey('unpreferredCost') !=
        other._$data.containsKey('unpreferredCost')) {
      return false;
    }
    if (l$unpreferredCost != lOther$unpreferredCost) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filters = filters;
    final l$preferred = preferred;
    final l$unpreferredCost = unpreferredCost;
    return Object.hashAll([
      _$data.containsKey('filters')
          ? l$filters == null
              ? null
              : Object.hashAll(l$filters.map((v) => v))
          : const {},
      _$data.containsKey('preferred')
          ? l$preferred == null
              ? null
              : Object.hashAll(l$preferred.map((v) => v))
          : const {},
      _$data.containsKey('unpreferredCost') ? l$unpreferredCost : const {},
    ]);
  }
}

abstract class CopyWith$Input$BicycleParkingPreferencesInput<TRes> {
  factory CopyWith$Input$BicycleParkingPreferencesInput(
    Input$BicycleParkingPreferencesInput instance,
    TRes Function(Input$BicycleParkingPreferencesInput) then,
  ) = _CopyWithImpl$Input$BicycleParkingPreferencesInput;

  factory CopyWith$Input$BicycleParkingPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BicycleParkingPreferencesInput;

  TRes call({
    List<Input$ParkingFilter>? filters,
    List<Input$ParkingFilter>? preferred,
    String? unpreferredCost,
  });
  TRes filters(
      Iterable<Input$ParkingFilter>? Function(
              Iterable<CopyWith$Input$ParkingFilter<Input$ParkingFilter>>?)
          _fn);
  TRes preferred(
      Iterable<Input$ParkingFilter>? Function(
              Iterable<CopyWith$Input$ParkingFilter<Input$ParkingFilter>>?)
          _fn);
}

class _CopyWithImpl$Input$BicycleParkingPreferencesInput<TRes>
    implements CopyWith$Input$BicycleParkingPreferencesInput<TRes> {
  _CopyWithImpl$Input$BicycleParkingPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$BicycleParkingPreferencesInput _instance;

  final TRes Function(Input$BicycleParkingPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? filters = _undefined,
    Object? preferred = _undefined,
    Object? unpreferredCost = _undefined,
  }) =>
      _then(Input$BicycleParkingPreferencesInput._({
        ..._instance._$data,
        if (filters != _undefined)
          'filters': (filters as List<Input$ParkingFilter>?),
        if (preferred != _undefined)
          'preferred': (preferred as List<Input$ParkingFilter>?),
        if (unpreferredCost != _undefined)
          'unpreferredCost': (unpreferredCost as String?),
      }));
  TRes filters(
          Iterable<Input$ParkingFilter>? Function(
                  Iterable<CopyWith$Input$ParkingFilter<Input$ParkingFilter>>?)
              _fn) =>
      call(
          filters:
              _fn(_instance.filters?.map((e) => CopyWith$Input$ParkingFilter(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes preferred(
          Iterable<Input$ParkingFilter>? Function(
                  Iterable<CopyWith$Input$ParkingFilter<Input$ParkingFilter>>?)
              _fn) =>
      call(
          preferred:
              _fn(_instance.preferred?.map((e) => CopyWith$Input$ParkingFilter(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$BicycleParkingPreferencesInput<TRes>
    implements CopyWith$Input$BicycleParkingPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$BicycleParkingPreferencesInput(this._res);

  TRes _res;

  call({
    List<Input$ParkingFilter>? filters,
    List<Input$ParkingFilter>? preferred,
    String? unpreferredCost,
  }) =>
      _res;
  filters(_fn) => _res;
  preferred(_fn) => _res;
}

class Input$BicyclePreferencesInput {
  factory Input$BicyclePreferencesInput({
    String? boardCost,
    Input$CyclingOptimizationInput? optimization,
    Input$BicycleParkingPreferencesInput? parking,
    String? reluctance,
    Input$BicycleRentalPreferencesInput? rental,
    String? speed,
    Input$BicycleWalkPreferencesInput? walk,
  }) =>
      Input$BicyclePreferencesInput._({
        if (boardCost != null) r'boardCost': boardCost,
        if (optimization != null) r'optimization': optimization,
        if (parking != null) r'parking': parking,
        if (reluctance != null) r'reluctance': reluctance,
        if (rental != null) r'rental': rental,
        if (speed != null) r'speed': speed,
        if (walk != null) r'walk': walk,
      });

  Input$BicyclePreferencesInput._(this._$data);

  factory Input$BicyclePreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('boardCost')) {
      final l$boardCost = data['boardCost'];
      result$data['boardCost'] = (l$boardCost as String?);
    }
    if (data.containsKey('optimization')) {
      final l$optimization = data['optimization'];
      result$data['optimization'] = l$optimization == null
          ? null
          : Input$CyclingOptimizationInput.fromJson(
              (l$optimization as Map<String, dynamic>));
    }
    if (data.containsKey('parking')) {
      final l$parking = data['parking'];
      result$data['parking'] = l$parking == null
          ? null
          : Input$BicycleParkingPreferencesInput.fromJson(
              (l$parking as Map<String, dynamic>));
    }
    if (data.containsKey('reluctance')) {
      final l$reluctance = data['reluctance'];
      result$data['reluctance'] = (l$reluctance as String?);
    }
    if (data.containsKey('rental')) {
      final l$rental = data['rental'];
      result$data['rental'] = l$rental == null
          ? null
          : Input$BicycleRentalPreferencesInput.fromJson(
              (l$rental as Map<String, dynamic>));
    }
    if (data.containsKey('speed')) {
      final l$speed = data['speed'];
      result$data['speed'] = (l$speed as String?);
    }
    if (data.containsKey('walk')) {
      final l$walk = data['walk'];
      result$data['walk'] = l$walk == null
          ? null
          : Input$BicycleWalkPreferencesInput.fromJson(
              (l$walk as Map<String, dynamic>));
    }
    return Input$BicyclePreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get boardCost => (_$data['boardCost'] as String?);
  Input$CyclingOptimizationInput? get optimization =>
      (_$data['optimization'] as Input$CyclingOptimizationInput?);
  Input$BicycleParkingPreferencesInput? get parking =>
      (_$data['parking'] as Input$BicycleParkingPreferencesInput?);
  String? get reluctance => (_$data['reluctance'] as String?);
  Input$BicycleRentalPreferencesInput? get rental =>
      (_$data['rental'] as Input$BicycleRentalPreferencesInput?);
  String? get speed => (_$data['speed'] as String?);
  Input$BicycleWalkPreferencesInput? get walk =>
      (_$data['walk'] as Input$BicycleWalkPreferencesInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('boardCost')) {
      final l$boardCost = boardCost;
      result$data['boardCost'] = l$boardCost;
    }
    if (_$data.containsKey('optimization')) {
      final l$optimization = optimization;
      result$data['optimization'] = l$optimization?.toJson();
    }
    if (_$data.containsKey('parking')) {
      final l$parking = parking;
      result$data['parking'] = l$parking?.toJson();
    }
    if (_$data.containsKey('reluctance')) {
      final l$reluctance = reluctance;
      result$data['reluctance'] = l$reluctance;
    }
    if (_$data.containsKey('rental')) {
      final l$rental = rental;
      result$data['rental'] = l$rental?.toJson();
    }
    if (_$data.containsKey('speed')) {
      final l$speed = speed;
      result$data['speed'] = l$speed;
    }
    if (_$data.containsKey('walk')) {
      final l$walk = walk;
      result$data['walk'] = l$walk?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$BicyclePreferencesInput<Input$BicyclePreferencesInput>
      get copyWith => CopyWith$Input$BicyclePreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BicyclePreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$boardCost = boardCost;
    final lOther$boardCost = other.boardCost;
    if (_$data.containsKey('boardCost') !=
        other._$data.containsKey('boardCost')) {
      return false;
    }
    if (l$boardCost != lOther$boardCost) {
      return false;
    }
    final l$optimization = optimization;
    final lOther$optimization = other.optimization;
    if (_$data.containsKey('optimization') !=
        other._$data.containsKey('optimization')) {
      return false;
    }
    if (l$optimization != lOther$optimization) {
      return false;
    }
    final l$parking = parking;
    final lOther$parking = other.parking;
    if (_$data.containsKey('parking') != other._$data.containsKey('parking')) {
      return false;
    }
    if (l$parking != lOther$parking) {
      return false;
    }
    final l$reluctance = reluctance;
    final lOther$reluctance = other.reluctance;
    if (_$data.containsKey('reluctance') !=
        other._$data.containsKey('reluctance')) {
      return false;
    }
    if (l$reluctance != lOther$reluctance) {
      return false;
    }
    final l$rental = rental;
    final lOther$rental = other.rental;
    if (_$data.containsKey('rental') != other._$data.containsKey('rental')) {
      return false;
    }
    if (l$rental != lOther$rental) {
      return false;
    }
    final l$speed = speed;
    final lOther$speed = other.speed;
    if (_$data.containsKey('speed') != other._$data.containsKey('speed')) {
      return false;
    }
    if (l$speed != lOther$speed) {
      return false;
    }
    final l$walk = walk;
    final lOther$walk = other.walk;
    if (_$data.containsKey('walk') != other._$data.containsKey('walk')) {
      return false;
    }
    if (l$walk != lOther$walk) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$boardCost = boardCost;
    final l$optimization = optimization;
    final l$parking = parking;
    final l$reluctance = reluctance;
    final l$rental = rental;
    final l$speed = speed;
    final l$walk = walk;
    return Object.hashAll([
      _$data.containsKey('boardCost') ? l$boardCost : const {},
      _$data.containsKey('optimization') ? l$optimization : const {},
      _$data.containsKey('parking') ? l$parking : const {},
      _$data.containsKey('reluctance') ? l$reluctance : const {},
      _$data.containsKey('rental') ? l$rental : const {},
      _$data.containsKey('speed') ? l$speed : const {},
      _$data.containsKey('walk') ? l$walk : const {},
    ]);
  }
}

abstract class CopyWith$Input$BicyclePreferencesInput<TRes> {
  factory CopyWith$Input$BicyclePreferencesInput(
    Input$BicyclePreferencesInput instance,
    TRes Function(Input$BicyclePreferencesInput) then,
  ) = _CopyWithImpl$Input$BicyclePreferencesInput;

  factory CopyWith$Input$BicyclePreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BicyclePreferencesInput;

  TRes call({
    String? boardCost,
    Input$CyclingOptimizationInput? optimization,
    Input$BicycleParkingPreferencesInput? parking,
    String? reluctance,
    Input$BicycleRentalPreferencesInput? rental,
    String? speed,
    Input$BicycleWalkPreferencesInput? walk,
  });
  CopyWith$Input$CyclingOptimizationInput<TRes> get optimization;
  CopyWith$Input$BicycleParkingPreferencesInput<TRes> get parking;
  CopyWith$Input$BicycleRentalPreferencesInput<TRes> get rental;
  CopyWith$Input$BicycleWalkPreferencesInput<TRes> get walk;
}

class _CopyWithImpl$Input$BicyclePreferencesInput<TRes>
    implements CopyWith$Input$BicyclePreferencesInput<TRes> {
  _CopyWithImpl$Input$BicyclePreferencesInput(
    this._instance,
    this._then,
  );

  final Input$BicyclePreferencesInput _instance;

  final TRes Function(Input$BicyclePreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? boardCost = _undefined,
    Object? optimization = _undefined,
    Object? parking = _undefined,
    Object? reluctance = _undefined,
    Object? rental = _undefined,
    Object? speed = _undefined,
    Object? walk = _undefined,
  }) =>
      _then(Input$BicyclePreferencesInput._({
        ..._instance._$data,
        if (boardCost != _undefined) 'boardCost': (boardCost as String?),
        if (optimization != _undefined)
          'optimization': (optimization as Input$CyclingOptimizationInput?),
        if (parking != _undefined)
          'parking': (parking as Input$BicycleParkingPreferencesInput?),
        if (reluctance != _undefined) 'reluctance': (reluctance as String?),
        if (rental != _undefined)
          'rental': (rental as Input$BicycleRentalPreferencesInput?),
        if (speed != _undefined) 'speed': (speed as String?),
        if (walk != _undefined)
          'walk': (walk as Input$BicycleWalkPreferencesInput?),
      }));
  CopyWith$Input$CyclingOptimizationInput<TRes> get optimization {
    final local$optimization = _instance.optimization;
    return local$optimization == null
        ? CopyWith$Input$CyclingOptimizationInput.stub(_then(_instance))
        : CopyWith$Input$CyclingOptimizationInput(
            local$optimization, (e) => call(optimization: e));
  }

  CopyWith$Input$BicycleParkingPreferencesInput<TRes> get parking {
    final local$parking = _instance.parking;
    return local$parking == null
        ? CopyWith$Input$BicycleParkingPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$BicycleParkingPreferencesInput(
            local$parking, (e) => call(parking: e));
  }

  CopyWith$Input$BicycleRentalPreferencesInput<TRes> get rental {
    final local$rental = _instance.rental;
    return local$rental == null
        ? CopyWith$Input$BicycleRentalPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$BicycleRentalPreferencesInput(
            local$rental, (e) => call(rental: e));
  }

  CopyWith$Input$BicycleWalkPreferencesInput<TRes> get walk {
    final local$walk = _instance.walk;
    return local$walk == null
        ? CopyWith$Input$BicycleWalkPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$BicycleWalkPreferencesInput(
            local$walk, (e) => call(walk: e));
  }
}

class _CopyWithStubImpl$Input$BicyclePreferencesInput<TRes>
    implements CopyWith$Input$BicyclePreferencesInput<TRes> {
  _CopyWithStubImpl$Input$BicyclePreferencesInput(this._res);

  TRes _res;

  call({
    String? boardCost,
    Input$CyclingOptimizationInput? optimization,
    Input$BicycleParkingPreferencesInput? parking,
    String? reluctance,
    Input$BicycleRentalPreferencesInput? rental,
    String? speed,
    Input$BicycleWalkPreferencesInput? walk,
  }) =>
      _res;
  CopyWith$Input$CyclingOptimizationInput<TRes> get optimization =>
      CopyWith$Input$CyclingOptimizationInput.stub(_res);
  CopyWith$Input$BicycleParkingPreferencesInput<TRes> get parking =>
      CopyWith$Input$BicycleParkingPreferencesInput.stub(_res);
  CopyWith$Input$BicycleRentalPreferencesInput<TRes> get rental =>
      CopyWith$Input$BicycleRentalPreferencesInput.stub(_res);
  CopyWith$Input$BicycleWalkPreferencesInput<TRes> get walk =>
      CopyWith$Input$BicycleWalkPreferencesInput.stub(_res);
}

class Input$BicycleRentalPreferencesInput {
  factory Input$BicycleRentalPreferencesInput({
    List<String>? allowedNetworks,
    List<String>? bannedNetworks,
    Input$DestinationBicyclePolicyInput? destinationBicyclePolicy,
  }) =>
      Input$BicycleRentalPreferencesInput._({
        if (allowedNetworks != null) r'allowedNetworks': allowedNetworks,
        if (bannedNetworks != null) r'bannedNetworks': bannedNetworks,
        if (destinationBicyclePolicy != null)
          r'destinationBicyclePolicy': destinationBicyclePolicy,
      });

  Input$BicycleRentalPreferencesInput._(this._$data);

  factory Input$BicycleRentalPreferencesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('allowedNetworks')) {
      final l$allowedNetworks = data['allowedNetworks'];
      result$data['allowedNetworks'] = (l$allowedNetworks as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('bannedNetworks')) {
      final l$bannedNetworks = data['bannedNetworks'];
      result$data['bannedNetworks'] = (l$bannedNetworks as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('destinationBicyclePolicy')) {
      final l$destinationBicyclePolicy = data['destinationBicyclePolicy'];
      result$data['destinationBicyclePolicy'] =
          l$destinationBicyclePolicy == null
              ? null
              : Input$DestinationBicyclePolicyInput.fromJson(
                  (l$destinationBicyclePolicy as Map<String, dynamic>));
    }
    return Input$BicycleRentalPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get allowedNetworks =>
      (_$data['allowedNetworks'] as List<String>?);
  List<String>? get bannedNetworks =>
      (_$data['bannedNetworks'] as List<String>?);
  Input$DestinationBicyclePolicyInput? get destinationBicyclePolicy =>
      (_$data['destinationBicyclePolicy']
          as Input$DestinationBicyclePolicyInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('allowedNetworks')) {
      final l$allowedNetworks = allowedNetworks;
      result$data['allowedNetworks'] =
          l$allowedNetworks?.map((e) => e).toList();
    }
    if (_$data.containsKey('bannedNetworks')) {
      final l$bannedNetworks = bannedNetworks;
      result$data['bannedNetworks'] = l$bannedNetworks?.map((e) => e).toList();
    }
    if (_$data.containsKey('destinationBicyclePolicy')) {
      final l$destinationBicyclePolicy = destinationBicyclePolicy;
      result$data['destinationBicyclePolicy'] =
          l$destinationBicyclePolicy?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$BicycleRentalPreferencesInput<
          Input$BicycleRentalPreferencesInput>
      get copyWith => CopyWith$Input$BicycleRentalPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BicycleRentalPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allowedNetworks = allowedNetworks;
    final lOther$allowedNetworks = other.allowedNetworks;
    if (_$data.containsKey('allowedNetworks') !=
        other._$data.containsKey('allowedNetworks')) {
      return false;
    }
    if (l$allowedNetworks != null && lOther$allowedNetworks != null) {
      if (l$allowedNetworks.length != lOther$allowedNetworks.length) {
        return false;
      }
      for (int i = 0; i < l$allowedNetworks.length; i++) {
        final l$allowedNetworks$entry = l$allowedNetworks[i];
        final lOther$allowedNetworks$entry = lOther$allowedNetworks[i];
        if (l$allowedNetworks$entry != lOther$allowedNetworks$entry) {
          return false;
        }
      }
    } else if (l$allowedNetworks != lOther$allowedNetworks) {
      return false;
    }
    final l$bannedNetworks = bannedNetworks;
    final lOther$bannedNetworks = other.bannedNetworks;
    if (_$data.containsKey('bannedNetworks') !=
        other._$data.containsKey('bannedNetworks')) {
      return false;
    }
    if (l$bannedNetworks != null && lOther$bannedNetworks != null) {
      if (l$bannedNetworks.length != lOther$bannedNetworks.length) {
        return false;
      }
      for (int i = 0; i < l$bannedNetworks.length; i++) {
        final l$bannedNetworks$entry = l$bannedNetworks[i];
        final lOther$bannedNetworks$entry = lOther$bannedNetworks[i];
        if (l$bannedNetworks$entry != lOther$bannedNetworks$entry) {
          return false;
        }
      }
    } else if (l$bannedNetworks != lOther$bannedNetworks) {
      return false;
    }
    final l$destinationBicyclePolicy = destinationBicyclePolicy;
    final lOther$destinationBicyclePolicy = other.destinationBicyclePolicy;
    if (_$data.containsKey('destinationBicyclePolicy') !=
        other._$data.containsKey('destinationBicyclePolicy')) {
      return false;
    }
    if (l$destinationBicyclePolicy != lOther$destinationBicyclePolicy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$allowedNetworks = allowedNetworks;
    final l$bannedNetworks = bannedNetworks;
    final l$destinationBicyclePolicy = destinationBicyclePolicy;
    return Object.hashAll([
      _$data.containsKey('allowedNetworks')
          ? l$allowedNetworks == null
              ? null
              : Object.hashAll(l$allowedNetworks.map((v) => v))
          : const {},
      _$data.containsKey('bannedNetworks')
          ? l$bannedNetworks == null
              ? null
              : Object.hashAll(l$bannedNetworks.map((v) => v))
          : const {},
      _$data.containsKey('destinationBicyclePolicy')
          ? l$destinationBicyclePolicy
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$BicycleRentalPreferencesInput<TRes> {
  factory CopyWith$Input$BicycleRentalPreferencesInput(
    Input$BicycleRentalPreferencesInput instance,
    TRes Function(Input$BicycleRentalPreferencesInput) then,
  ) = _CopyWithImpl$Input$BicycleRentalPreferencesInput;

  factory CopyWith$Input$BicycleRentalPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BicycleRentalPreferencesInput;

  TRes call({
    List<String>? allowedNetworks,
    List<String>? bannedNetworks,
    Input$DestinationBicyclePolicyInput? destinationBicyclePolicy,
  });
  CopyWith$Input$DestinationBicyclePolicyInput<TRes>
      get destinationBicyclePolicy;
}

class _CopyWithImpl$Input$BicycleRentalPreferencesInput<TRes>
    implements CopyWith$Input$BicycleRentalPreferencesInput<TRes> {
  _CopyWithImpl$Input$BicycleRentalPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$BicycleRentalPreferencesInput _instance;

  final TRes Function(Input$BicycleRentalPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? allowedNetworks = _undefined,
    Object? bannedNetworks = _undefined,
    Object? destinationBicyclePolicy = _undefined,
  }) =>
      _then(Input$BicycleRentalPreferencesInput._({
        ..._instance._$data,
        if (allowedNetworks != _undefined)
          'allowedNetworks': (allowedNetworks as List<String>?),
        if (bannedNetworks != _undefined)
          'bannedNetworks': (bannedNetworks as List<String>?),
        if (destinationBicyclePolicy != _undefined)
          'destinationBicyclePolicy': (destinationBicyclePolicy
              as Input$DestinationBicyclePolicyInput?),
      }));
  CopyWith$Input$DestinationBicyclePolicyInput<TRes>
      get destinationBicyclePolicy {
    final local$destinationBicyclePolicy = _instance.destinationBicyclePolicy;
    return local$destinationBicyclePolicy == null
        ? CopyWith$Input$DestinationBicyclePolicyInput.stub(_then(_instance))
        : CopyWith$Input$DestinationBicyclePolicyInput(
            local$destinationBicyclePolicy,
            (e) => call(destinationBicyclePolicy: e));
  }
}

class _CopyWithStubImpl$Input$BicycleRentalPreferencesInput<TRes>
    implements CopyWith$Input$BicycleRentalPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$BicycleRentalPreferencesInput(this._res);

  TRes _res;

  call({
    List<String>? allowedNetworks,
    List<String>? bannedNetworks,
    Input$DestinationBicyclePolicyInput? destinationBicyclePolicy,
  }) =>
      _res;
  CopyWith$Input$DestinationBicyclePolicyInput<TRes>
      get destinationBicyclePolicy =>
          CopyWith$Input$DestinationBicyclePolicyInput.stub(_res);
}

class Input$BicycleWalkPreferencesCostInput {
  factory Input$BicycleWalkPreferencesCostInput({
    String? mountDismountCost,
    String? reluctance,
  }) =>
      Input$BicycleWalkPreferencesCostInput._({
        if (mountDismountCost != null) r'mountDismountCost': mountDismountCost,
        if (reluctance != null) r'reluctance': reluctance,
      });

  Input$BicycleWalkPreferencesCostInput._(this._$data);

  factory Input$BicycleWalkPreferencesCostInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mountDismountCost')) {
      final l$mountDismountCost = data['mountDismountCost'];
      result$data['mountDismountCost'] = (l$mountDismountCost as String?);
    }
    if (data.containsKey('reluctance')) {
      final l$reluctance = data['reluctance'];
      result$data['reluctance'] = (l$reluctance as String?);
    }
    return Input$BicycleWalkPreferencesCostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get mountDismountCost => (_$data['mountDismountCost'] as String?);
  String? get reluctance => (_$data['reluctance'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mountDismountCost')) {
      final l$mountDismountCost = mountDismountCost;
      result$data['mountDismountCost'] = l$mountDismountCost;
    }
    if (_$data.containsKey('reluctance')) {
      final l$reluctance = reluctance;
      result$data['reluctance'] = l$reluctance;
    }
    return result$data;
  }

  CopyWith$Input$BicycleWalkPreferencesCostInput<
          Input$BicycleWalkPreferencesCostInput>
      get copyWith => CopyWith$Input$BicycleWalkPreferencesCostInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BicycleWalkPreferencesCostInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mountDismountCost = mountDismountCost;
    final lOther$mountDismountCost = other.mountDismountCost;
    if (_$data.containsKey('mountDismountCost') !=
        other._$data.containsKey('mountDismountCost')) {
      return false;
    }
    if (l$mountDismountCost != lOther$mountDismountCost) {
      return false;
    }
    final l$reluctance = reluctance;
    final lOther$reluctance = other.reluctance;
    if (_$data.containsKey('reluctance') !=
        other._$data.containsKey('reluctance')) {
      return false;
    }
    if (l$reluctance != lOther$reluctance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mountDismountCost = mountDismountCost;
    final l$reluctance = reluctance;
    return Object.hashAll([
      _$data.containsKey('mountDismountCost') ? l$mountDismountCost : const {},
      _$data.containsKey('reluctance') ? l$reluctance : const {},
    ]);
  }
}

abstract class CopyWith$Input$BicycleWalkPreferencesCostInput<TRes> {
  factory CopyWith$Input$BicycleWalkPreferencesCostInput(
    Input$BicycleWalkPreferencesCostInput instance,
    TRes Function(Input$BicycleWalkPreferencesCostInput) then,
  ) = _CopyWithImpl$Input$BicycleWalkPreferencesCostInput;

  factory CopyWith$Input$BicycleWalkPreferencesCostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BicycleWalkPreferencesCostInput;

  TRes call({
    String? mountDismountCost,
    String? reluctance,
  });
}

class _CopyWithImpl$Input$BicycleWalkPreferencesCostInput<TRes>
    implements CopyWith$Input$BicycleWalkPreferencesCostInput<TRes> {
  _CopyWithImpl$Input$BicycleWalkPreferencesCostInput(
    this._instance,
    this._then,
  );

  final Input$BicycleWalkPreferencesCostInput _instance;

  final TRes Function(Input$BicycleWalkPreferencesCostInput) _then;

  static const _undefined = {};

  TRes call({
    Object? mountDismountCost = _undefined,
    Object? reluctance = _undefined,
  }) =>
      _then(Input$BicycleWalkPreferencesCostInput._({
        ..._instance._$data,
        if (mountDismountCost != _undefined)
          'mountDismountCost': (mountDismountCost as String?),
        if (reluctance != _undefined) 'reluctance': (reluctance as String?),
      }));
}

class _CopyWithStubImpl$Input$BicycleWalkPreferencesCostInput<TRes>
    implements CopyWith$Input$BicycleWalkPreferencesCostInput<TRes> {
  _CopyWithStubImpl$Input$BicycleWalkPreferencesCostInput(this._res);

  TRes _res;

  call({
    String? mountDismountCost,
    String? reluctance,
  }) =>
      _res;
}

class Input$BicycleWalkPreferencesInput {
  factory Input$BicycleWalkPreferencesInput({
    Input$BicycleWalkPreferencesCostInput? cost,
    String? mountDismountTime,
    String? speed,
  }) =>
      Input$BicycleWalkPreferencesInput._({
        if (cost != null) r'cost': cost,
        if (mountDismountTime != null) r'mountDismountTime': mountDismountTime,
        if (speed != null) r'speed': speed,
      });

  Input$BicycleWalkPreferencesInput._(this._$data);

  factory Input$BicycleWalkPreferencesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cost')) {
      final l$cost = data['cost'];
      result$data['cost'] = l$cost == null
          ? null
          : Input$BicycleWalkPreferencesCostInput.fromJson(
              (l$cost as Map<String, dynamic>));
    }
    if (data.containsKey('mountDismountTime')) {
      final l$mountDismountTime = data['mountDismountTime'];
      result$data['mountDismountTime'] = (l$mountDismountTime as String?);
    }
    if (data.containsKey('speed')) {
      final l$speed = data['speed'];
      result$data['speed'] = (l$speed as String?);
    }
    return Input$BicycleWalkPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BicycleWalkPreferencesCostInput? get cost =>
      (_$data['cost'] as Input$BicycleWalkPreferencesCostInput?);
  String? get mountDismountTime => (_$data['mountDismountTime'] as String?);
  String? get speed => (_$data['speed'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cost')) {
      final l$cost = cost;
      result$data['cost'] = l$cost?.toJson();
    }
    if (_$data.containsKey('mountDismountTime')) {
      final l$mountDismountTime = mountDismountTime;
      result$data['mountDismountTime'] = l$mountDismountTime;
    }
    if (_$data.containsKey('speed')) {
      final l$speed = speed;
      result$data['speed'] = l$speed;
    }
    return result$data;
  }

  CopyWith$Input$BicycleWalkPreferencesInput<Input$BicycleWalkPreferencesInput>
      get copyWith => CopyWith$Input$BicycleWalkPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BicycleWalkPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cost = cost;
    final lOther$cost = other.cost;
    if (_$data.containsKey('cost') != other._$data.containsKey('cost')) {
      return false;
    }
    if (l$cost != lOther$cost) {
      return false;
    }
    final l$mountDismountTime = mountDismountTime;
    final lOther$mountDismountTime = other.mountDismountTime;
    if (_$data.containsKey('mountDismountTime') !=
        other._$data.containsKey('mountDismountTime')) {
      return false;
    }
    if (l$mountDismountTime != lOther$mountDismountTime) {
      return false;
    }
    final l$speed = speed;
    final lOther$speed = other.speed;
    if (_$data.containsKey('speed') != other._$data.containsKey('speed')) {
      return false;
    }
    if (l$speed != lOther$speed) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cost = cost;
    final l$mountDismountTime = mountDismountTime;
    final l$speed = speed;
    return Object.hashAll([
      _$data.containsKey('cost') ? l$cost : const {},
      _$data.containsKey('mountDismountTime') ? l$mountDismountTime : const {},
      _$data.containsKey('speed') ? l$speed : const {},
    ]);
  }
}

abstract class CopyWith$Input$BicycleWalkPreferencesInput<TRes> {
  factory CopyWith$Input$BicycleWalkPreferencesInput(
    Input$BicycleWalkPreferencesInput instance,
    TRes Function(Input$BicycleWalkPreferencesInput) then,
  ) = _CopyWithImpl$Input$BicycleWalkPreferencesInput;

  factory CopyWith$Input$BicycleWalkPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BicycleWalkPreferencesInput;

  TRes call({
    Input$BicycleWalkPreferencesCostInput? cost,
    String? mountDismountTime,
    String? speed,
  });
  CopyWith$Input$BicycleWalkPreferencesCostInput<TRes> get cost;
}

class _CopyWithImpl$Input$BicycleWalkPreferencesInput<TRes>
    implements CopyWith$Input$BicycleWalkPreferencesInput<TRes> {
  _CopyWithImpl$Input$BicycleWalkPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$BicycleWalkPreferencesInput _instance;

  final TRes Function(Input$BicycleWalkPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? cost = _undefined,
    Object? mountDismountTime = _undefined,
    Object? speed = _undefined,
  }) =>
      _then(Input$BicycleWalkPreferencesInput._({
        ..._instance._$data,
        if (cost != _undefined)
          'cost': (cost as Input$BicycleWalkPreferencesCostInput?),
        if (mountDismountTime != _undefined)
          'mountDismountTime': (mountDismountTime as String?),
        if (speed != _undefined) 'speed': (speed as String?),
      }));
  CopyWith$Input$BicycleWalkPreferencesCostInput<TRes> get cost {
    final local$cost = _instance.cost;
    return local$cost == null
        ? CopyWith$Input$BicycleWalkPreferencesCostInput.stub(_then(_instance))
        : CopyWith$Input$BicycleWalkPreferencesCostInput(
            local$cost, (e) => call(cost: e));
  }
}

class _CopyWithStubImpl$Input$BicycleWalkPreferencesInput<TRes>
    implements CopyWith$Input$BicycleWalkPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$BicycleWalkPreferencesInput(this._res);

  TRes _res;

  call({
    Input$BicycleWalkPreferencesCostInput? cost,
    String? mountDismountTime,
    String? speed,
  }) =>
      _res;
  CopyWith$Input$BicycleWalkPreferencesCostInput<TRes> get cost =>
      CopyWith$Input$BicycleWalkPreferencesCostInput.stub(_res);
}

class Input$BoardPreferencesInput {
  factory Input$BoardPreferencesInput({
    String? slack,
    String? waitReluctance,
  }) =>
      Input$BoardPreferencesInput._({
        if (slack != null) r'slack': slack,
        if (waitReluctance != null) r'waitReluctance': waitReluctance,
      });

  Input$BoardPreferencesInput._(this._$data);

  factory Input$BoardPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('slack')) {
      final l$slack = data['slack'];
      result$data['slack'] = (l$slack as String?);
    }
    if (data.containsKey('waitReluctance')) {
      final l$waitReluctance = data['waitReluctance'];
      result$data['waitReluctance'] = (l$waitReluctance as String?);
    }
    return Input$BoardPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get slack => (_$data['slack'] as String?);
  String? get waitReluctance => (_$data['waitReluctance'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('slack')) {
      final l$slack = slack;
      result$data['slack'] = l$slack;
    }
    if (_$data.containsKey('waitReluctance')) {
      final l$waitReluctance = waitReluctance;
      result$data['waitReluctance'] = l$waitReluctance;
    }
    return result$data;
  }

  CopyWith$Input$BoardPreferencesInput<Input$BoardPreferencesInput>
      get copyWith => CopyWith$Input$BoardPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BoardPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$slack = slack;
    final lOther$slack = other.slack;
    if (_$data.containsKey('slack') != other._$data.containsKey('slack')) {
      return false;
    }
    if (l$slack != lOther$slack) {
      return false;
    }
    final l$waitReluctance = waitReluctance;
    final lOther$waitReluctance = other.waitReluctance;
    if (_$data.containsKey('waitReluctance') !=
        other._$data.containsKey('waitReluctance')) {
      return false;
    }
    if (l$waitReluctance != lOther$waitReluctance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$slack = slack;
    final l$waitReluctance = waitReluctance;
    return Object.hashAll([
      _$data.containsKey('slack') ? l$slack : const {},
      _$data.containsKey('waitReluctance') ? l$waitReluctance : const {},
    ]);
  }
}

abstract class CopyWith$Input$BoardPreferencesInput<TRes> {
  factory CopyWith$Input$BoardPreferencesInput(
    Input$BoardPreferencesInput instance,
    TRes Function(Input$BoardPreferencesInput) then,
  ) = _CopyWithImpl$Input$BoardPreferencesInput;

  factory CopyWith$Input$BoardPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BoardPreferencesInput;

  TRes call({
    String? slack,
    String? waitReluctance,
  });
}

class _CopyWithImpl$Input$BoardPreferencesInput<TRes>
    implements CopyWith$Input$BoardPreferencesInput<TRes> {
  _CopyWithImpl$Input$BoardPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$BoardPreferencesInput _instance;

  final TRes Function(Input$BoardPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? slack = _undefined,
    Object? waitReluctance = _undefined,
  }) =>
      _then(Input$BoardPreferencesInput._({
        ..._instance._$data,
        if (slack != _undefined) 'slack': (slack as String?),
        if (waitReluctance != _undefined)
          'waitReluctance': (waitReluctance as String?),
      }));
}

class _CopyWithStubImpl$Input$BoardPreferencesInput<TRes>
    implements CopyWith$Input$BoardPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$BoardPreferencesInput(this._res);

  TRes _res;

  call({
    String? slack,
    String? waitReluctance,
  }) =>
      _res;
}

class Input$CarParkingPreferencesInput {
  factory Input$CarParkingPreferencesInput({
    List<Input$ParkingFilter>? filters,
    List<Input$ParkingFilter>? preferred,
    String? unpreferredCost,
  }) =>
      Input$CarParkingPreferencesInput._({
        if (filters != null) r'filters': filters,
        if (preferred != null) r'preferred': preferred,
        if (unpreferredCost != null) r'unpreferredCost': unpreferredCost,
      });

  Input$CarParkingPreferencesInput._(this._$data);

  factory Input$CarParkingPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filters')) {
      final l$filters = data['filters'];
      result$data['filters'] = (l$filters as List<dynamic>?)
          ?.map(
              (e) => Input$ParkingFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('preferred')) {
      final l$preferred = data['preferred'];
      result$data['preferred'] = (l$preferred as List<dynamic>?)
          ?.map(
              (e) => Input$ParkingFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('unpreferredCost')) {
      final l$unpreferredCost = data['unpreferredCost'];
      result$data['unpreferredCost'] = (l$unpreferredCost as String?);
    }
    return Input$CarParkingPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ParkingFilter>? get filters =>
      (_$data['filters'] as List<Input$ParkingFilter>?);
  List<Input$ParkingFilter>? get preferred =>
      (_$data['preferred'] as List<Input$ParkingFilter>?);
  String? get unpreferredCost => (_$data['unpreferredCost'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filters')) {
      final l$filters = filters;
      result$data['filters'] = l$filters?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('preferred')) {
      final l$preferred = preferred;
      result$data['preferred'] = l$preferred?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('unpreferredCost')) {
      final l$unpreferredCost = unpreferredCost;
      result$data['unpreferredCost'] = l$unpreferredCost;
    }
    return result$data;
  }

  CopyWith$Input$CarParkingPreferencesInput<Input$CarParkingPreferencesInput>
      get copyWith => CopyWith$Input$CarParkingPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CarParkingPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filters = filters;
    final lOther$filters = other.filters;
    if (_$data.containsKey('filters') != other._$data.containsKey('filters')) {
      return false;
    }
    if (l$filters != null && lOther$filters != null) {
      if (l$filters.length != lOther$filters.length) {
        return false;
      }
      for (int i = 0; i < l$filters.length; i++) {
        final l$filters$entry = l$filters[i];
        final lOther$filters$entry = lOther$filters[i];
        if (l$filters$entry != lOther$filters$entry) {
          return false;
        }
      }
    } else if (l$filters != lOther$filters) {
      return false;
    }
    final l$preferred = preferred;
    final lOther$preferred = other.preferred;
    if (_$data.containsKey('preferred') !=
        other._$data.containsKey('preferred')) {
      return false;
    }
    if (l$preferred != null && lOther$preferred != null) {
      if (l$preferred.length != lOther$preferred.length) {
        return false;
      }
      for (int i = 0; i < l$preferred.length; i++) {
        final l$preferred$entry = l$preferred[i];
        final lOther$preferred$entry = lOther$preferred[i];
        if (l$preferred$entry != lOther$preferred$entry) {
          return false;
        }
      }
    } else if (l$preferred != lOther$preferred) {
      return false;
    }
    final l$unpreferredCost = unpreferredCost;
    final lOther$unpreferredCost = other.unpreferredCost;
    if (_$data.containsKey('unpreferredCost') !=
        other._$data.containsKey('unpreferredCost')) {
      return false;
    }
    if (l$unpreferredCost != lOther$unpreferredCost) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filters = filters;
    final l$preferred = preferred;
    final l$unpreferredCost = unpreferredCost;
    return Object.hashAll([
      _$data.containsKey('filters')
          ? l$filters == null
              ? null
              : Object.hashAll(l$filters.map((v) => v))
          : const {},
      _$data.containsKey('preferred')
          ? l$preferred == null
              ? null
              : Object.hashAll(l$preferred.map((v) => v))
          : const {},
      _$data.containsKey('unpreferredCost') ? l$unpreferredCost : const {},
    ]);
  }
}

abstract class CopyWith$Input$CarParkingPreferencesInput<TRes> {
  factory CopyWith$Input$CarParkingPreferencesInput(
    Input$CarParkingPreferencesInput instance,
    TRes Function(Input$CarParkingPreferencesInput) then,
  ) = _CopyWithImpl$Input$CarParkingPreferencesInput;

  factory CopyWith$Input$CarParkingPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CarParkingPreferencesInput;

  TRes call({
    List<Input$ParkingFilter>? filters,
    List<Input$ParkingFilter>? preferred,
    String? unpreferredCost,
  });
  TRes filters(
      Iterable<Input$ParkingFilter>? Function(
              Iterable<CopyWith$Input$ParkingFilter<Input$ParkingFilter>>?)
          _fn);
  TRes preferred(
      Iterable<Input$ParkingFilter>? Function(
              Iterable<CopyWith$Input$ParkingFilter<Input$ParkingFilter>>?)
          _fn);
}

class _CopyWithImpl$Input$CarParkingPreferencesInput<TRes>
    implements CopyWith$Input$CarParkingPreferencesInput<TRes> {
  _CopyWithImpl$Input$CarParkingPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$CarParkingPreferencesInput _instance;

  final TRes Function(Input$CarParkingPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? filters = _undefined,
    Object? preferred = _undefined,
    Object? unpreferredCost = _undefined,
  }) =>
      _then(Input$CarParkingPreferencesInput._({
        ..._instance._$data,
        if (filters != _undefined)
          'filters': (filters as List<Input$ParkingFilter>?),
        if (preferred != _undefined)
          'preferred': (preferred as List<Input$ParkingFilter>?),
        if (unpreferredCost != _undefined)
          'unpreferredCost': (unpreferredCost as String?),
      }));
  TRes filters(
          Iterable<Input$ParkingFilter>? Function(
                  Iterable<CopyWith$Input$ParkingFilter<Input$ParkingFilter>>?)
              _fn) =>
      call(
          filters:
              _fn(_instance.filters?.map((e) => CopyWith$Input$ParkingFilter(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes preferred(
          Iterable<Input$ParkingFilter>? Function(
                  Iterable<CopyWith$Input$ParkingFilter<Input$ParkingFilter>>?)
              _fn) =>
      call(
          preferred:
              _fn(_instance.preferred?.map((e) => CopyWith$Input$ParkingFilter(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$CarParkingPreferencesInput<TRes>
    implements CopyWith$Input$CarParkingPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$CarParkingPreferencesInput(this._res);

  TRes _res;

  call({
    List<Input$ParkingFilter>? filters,
    List<Input$ParkingFilter>? preferred,
    String? unpreferredCost,
  }) =>
      _res;
  filters(_fn) => _res;
  preferred(_fn) => _res;
}

class Input$CarPreferencesInput {
  factory Input$CarPreferencesInput({
    String? boardCost,
    Input$CarParkingPreferencesInput? parking,
    String? reluctance,
    Input$CarRentalPreferencesInput? rental,
  }) =>
      Input$CarPreferencesInput._({
        if (boardCost != null) r'boardCost': boardCost,
        if (parking != null) r'parking': parking,
        if (reluctance != null) r'reluctance': reluctance,
        if (rental != null) r'rental': rental,
      });

  Input$CarPreferencesInput._(this._$data);

  factory Input$CarPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('boardCost')) {
      final l$boardCost = data['boardCost'];
      result$data['boardCost'] = (l$boardCost as String?);
    }
    if (data.containsKey('parking')) {
      final l$parking = data['parking'];
      result$data['parking'] = l$parking == null
          ? null
          : Input$CarParkingPreferencesInput.fromJson(
              (l$parking as Map<String, dynamic>));
    }
    if (data.containsKey('reluctance')) {
      final l$reluctance = data['reluctance'];
      result$data['reluctance'] = (l$reluctance as String?);
    }
    if (data.containsKey('rental')) {
      final l$rental = data['rental'];
      result$data['rental'] = l$rental == null
          ? null
          : Input$CarRentalPreferencesInput.fromJson(
              (l$rental as Map<String, dynamic>));
    }
    return Input$CarPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get boardCost => (_$data['boardCost'] as String?);
  Input$CarParkingPreferencesInput? get parking =>
      (_$data['parking'] as Input$CarParkingPreferencesInput?);
  String? get reluctance => (_$data['reluctance'] as String?);
  Input$CarRentalPreferencesInput? get rental =>
      (_$data['rental'] as Input$CarRentalPreferencesInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('boardCost')) {
      final l$boardCost = boardCost;
      result$data['boardCost'] = l$boardCost;
    }
    if (_$data.containsKey('parking')) {
      final l$parking = parking;
      result$data['parking'] = l$parking?.toJson();
    }
    if (_$data.containsKey('reluctance')) {
      final l$reluctance = reluctance;
      result$data['reluctance'] = l$reluctance;
    }
    if (_$data.containsKey('rental')) {
      final l$rental = rental;
      result$data['rental'] = l$rental?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CarPreferencesInput<Input$CarPreferencesInput> get copyWith =>
      CopyWith$Input$CarPreferencesInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CarPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$boardCost = boardCost;
    final lOther$boardCost = other.boardCost;
    if (_$data.containsKey('boardCost') !=
        other._$data.containsKey('boardCost')) {
      return false;
    }
    if (l$boardCost != lOther$boardCost) {
      return false;
    }
    final l$parking = parking;
    final lOther$parking = other.parking;
    if (_$data.containsKey('parking') != other._$data.containsKey('parking')) {
      return false;
    }
    if (l$parking != lOther$parking) {
      return false;
    }
    final l$reluctance = reluctance;
    final lOther$reluctance = other.reluctance;
    if (_$data.containsKey('reluctance') !=
        other._$data.containsKey('reluctance')) {
      return false;
    }
    if (l$reluctance != lOther$reluctance) {
      return false;
    }
    final l$rental = rental;
    final lOther$rental = other.rental;
    if (_$data.containsKey('rental') != other._$data.containsKey('rental')) {
      return false;
    }
    if (l$rental != lOther$rental) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$boardCost = boardCost;
    final l$parking = parking;
    final l$reluctance = reluctance;
    final l$rental = rental;
    return Object.hashAll([
      _$data.containsKey('boardCost') ? l$boardCost : const {},
      _$data.containsKey('parking') ? l$parking : const {},
      _$data.containsKey('reluctance') ? l$reluctance : const {},
      _$data.containsKey('rental') ? l$rental : const {},
    ]);
  }
}

abstract class CopyWith$Input$CarPreferencesInput<TRes> {
  factory CopyWith$Input$CarPreferencesInput(
    Input$CarPreferencesInput instance,
    TRes Function(Input$CarPreferencesInput) then,
  ) = _CopyWithImpl$Input$CarPreferencesInput;

  factory CopyWith$Input$CarPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CarPreferencesInput;

  TRes call({
    String? boardCost,
    Input$CarParkingPreferencesInput? parking,
    String? reluctance,
    Input$CarRentalPreferencesInput? rental,
  });
  CopyWith$Input$CarParkingPreferencesInput<TRes> get parking;
  CopyWith$Input$CarRentalPreferencesInput<TRes> get rental;
}

class _CopyWithImpl$Input$CarPreferencesInput<TRes>
    implements CopyWith$Input$CarPreferencesInput<TRes> {
  _CopyWithImpl$Input$CarPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$CarPreferencesInput _instance;

  final TRes Function(Input$CarPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? boardCost = _undefined,
    Object? parking = _undefined,
    Object? reluctance = _undefined,
    Object? rental = _undefined,
  }) =>
      _then(Input$CarPreferencesInput._({
        ..._instance._$data,
        if (boardCost != _undefined) 'boardCost': (boardCost as String?),
        if (parking != _undefined)
          'parking': (parking as Input$CarParkingPreferencesInput?),
        if (reluctance != _undefined) 'reluctance': (reluctance as String?),
        if (rental != _undefined)
          'rental': (rental as Input$CarRentalPreferencesInput?),
      }));
  CopyWith$Input$CarParkingPreferencesInput<TRes> get parking {
    final local$parking = _instance.parking;
    return local$parking == null
        ? CopyWith$Input$CarParkingPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$CarParkingPreferencesInput(
            local$parking, (e) => call(parking: e));
  }

  CopyWith$Input$CarRentalPreferencesInput<TRes> get rental {
    final local$rental = _instance.rental;
    return local$rental == null
        ? CopyWith$Input$CarRentalPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$CarRentalPreferencesInput(
            local$rental, (e) => call(rental: e));
  }
}

class _CopyWithStubImpl$Input$CarPreferencesInput<TRes>
    implements CopyWith$Input$CarPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$CarPreferencesInput(this._res);

  TRes _res;

  call({
    String? boardCost,
    Input$CarParkingPreferencesInput? parking,
    String? reluctance,
    Input$CarRentalPreferencesInput? rental,
  }) =>
      _res;
  CopyWith$Input$CarParkingPreferencesInput<TRes> get parking =>
      CopyWith$Input$CarParkingPreferencesInput.stub(_res);
  CopyWith$Input$CarRentalPreferencesInput<TRes> get rental =>
      CopyWith$Input$CarRentalPreferencesInput.stub(_res);
}

class Input$CarRentalPreferencesInput {
  factory Input$CarRentalPreferencesInput({
    List<String>? allowedNetworks,
    List<String>? bannedNetworks,
  }) =>
      Input$CarRentalPreferencesInput._({
        if (allowedNetworks != null) r'allowedNetworks': allowedNetworks,
        if (bannedNetworks != null) r'bannedNetworks': bannedNetworks,
      });

  Input$CarRentalPreferencesInput._(this._$data);

  factory Input$CarRentalPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('allowedNetworks')) {
      final l$allowedNetworks = data['allowedNetworks'];
      result$data['allowedNetworks'] = (l$allowedNetworks as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('bannedNetworks')) {
      final l$bannedNetworks = data['bannedNetworks'];
      result$data['bannedNetworks'] = (l$bannedNetworks as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Input$CarRentalPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get allowedNetworks =>
      (_$data['allowedNetworks'] as List<String>?);
  List<String>? get bannedNetworks =>
      (_$data['bannedNetworks'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('allowedNetworks')) {
      final l$allowedNetworks = allowedNetworks;
      result$data['allowedNetworks'] =
          l$allowedNetworks?.map((e) => e).toList();
    }
    if (_$data.containsKey('bannedNetworks')) {
      final l$bannedNetworks = bannedNetworks;
      result$data['bannedNetworks'] = l$bannedNetworks?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$CarRentalPreferencesInput<Input$CarRentalPreferencesInput>
      get copyWith => CopyWith$Input$CarRentalPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CarRentalPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allowedNetworks = allowedNetworks;
    final lOther$allowedNetworks = other.allowedNetworks;
    if (_$data.containsKey('allowedNetworks') !=
        other._$data.containsKey('allowedNetworks')) {
      return false;
    }
    if (l$allowedNetworks != null && lOther$allowedNetworks != null) {
      if (l$allowedNetworks.length != lOther$allowedNetworks.length) {
        return false;
      }
      for (int i = 0; i < l$allowedNetworks.length; i++) {
        final l$allowedNetworks$entry = l$allowedNetworks[i];
        final lOther$allowedNetworks$entry = lOther$allowedNetworks[i];
        if (l$allowedNetworks$entry != lOther$allowedNetworks$entry) {
          return false;
        }
      }
    } else if (l$allowedNetworks != lOther$allowedNetworks) {
      return false;
    }
    final l$bannedNetworks = bannedNetworks;
    final lOther$bannedNetworks = other.bannedNetworks;
    if (_$data.containsKey('bannedNetworks') !=
        other._$data.containsKey('bannedNetworks')) {
      return false;
    }
    if (l$bannedNetworks != null && lOther$bannedNetworks != null) {
      if (l$bannedNetworks.length != lOther$bannedNetworks.length) {
        return false;
      }
      for (int i = 0; i < l$bannedNetworks.length; i++) {
        final l$bannedNetworks$entry = l$bannedNetworks[i];
        final lOther$bannedNetworks$entry = lOther$bannedNetworks[i];
        if (l$bannedNetworks$entry != lOther$bannedNetworks$entry) {
          return false;
        }
      }
    } else if (l$bannedNetworks != lOther$bannedNetworks) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$allowedNetworks = allowedNetworks;
    final l$bannedNetworks = bannedNetworks;
    return Object.hashAll([
      _$data.containsKey('allowedNetworks')
          ? l$allowedNetworks == null
              ? null
              : Object.hashAll(l$allowedNetworks.map((v) => v))
          : const {},
      _$data.containsKey('bannedNetworks')
          ? l$bannedNetworks == null
              ? null
              : Object.hashAll(l$bannedNetworks.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CarRentalPreferencesInput<TRes> {
  factory CopyWith$Input$CarRentalPreferencesInput(
    Input$CarRentalPreferencesInput instance,
    TRes Function(Input$CarRentalPreferencesInput) then,
  ) = _CopyWithImpl$Input$CarRentalPreferencesInput;

  factory CopyWith$Input$CarRentalPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CarRentalPreferencesInput;

  TRes call({
    List<String>? allowedNetworks,
    List<String>? bannedNetworks,
  });
}

class _CopyWithImpl$Input$CarRentalPreferencesInput<TRes>
    implements CopyWith$Input$CarRentalPreferencesInput<TRes> {
  _CopyWithImpl$Input$CarRentalPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$CarRentalPreferencesInput _instance;

  final TRes Function(Input$CarRentalPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? allowedNetworks = _undefined,
    Object? bannedNetworks = _undefined,
  }) =>
      _then(Input$CarRentalPreferencesInput._({
        ..._instance._$data,
        if (allowedNetworks != _undefined)
          'allowedNetworks': (allowedNetworks as List<String>?),
        if (bannedNetworks != _undefined)
          'bannedNetworks': (bannedNetworks as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$CarRentalPreferencesInput<TRes>
    implements CopyWith$Input$CarRentalPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$CarRentalPreferencesInput(this._res);

  TRes _res;

  call({
    List<String>? allowedNetworks,
    List<String>? bannedNetworks,
  }) =>
      _res;
}

class Input$CyclingOptimizationInput {
  factory Input$CyclingOptimizationInput({
    Input$TriangleCyclingFactorsInput? triangle,
    Enum$CyclingOptimizationType? type,
  }) =>
      Input$CyclingOptimizationInput._({
        if (triangle != null) r'triangle': triangle,
        if (type != null) r'type': type,
      });

  Input$CyclingOptimizationInput._(this._$data);

  factory Input$CyclingOptimizationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('triangle')) {
      final l$triangle = data['triangle'];
      result$data['triangle'] = l$triangle == null
          ? null
          : Input$TriangleCyclingFactorsInput.fromJson(
              (l$triangle as Map<String, dynamic>));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$CyclingOptimizationType((l$type as String));
    }
    return Input$CyclingOptimizationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TriangleCyclingFactorsInput? get triangle =>
      (_$data['triangle'] as Input$TriangleCyclingFactorsInput?);
  Enum$CyclingOptimizationType? get type =>
      (_$data['type'] as Enum$CyclingOptimizationType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('triangle')) {
      final l$triangle = triangle;
      result$data['triangle'] = l$triangle?.toJson();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$CyclingOptimizationType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$CyclingOptimizationInput<Input$CyclingOptimizationInput>
      get copyWith => CopyWith$Input$CyclingOptimizationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CyclingOptimizationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$triangle = triangle;
    final lOther$triangle = other.triangle;
    if (_$data.containsKey('triangle') !=
        other._$data.containsKey('triangle')) {
      return false;
    }
    if (l$triangle != lOther$triangle) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$triangle = triangle;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('triangle') ? l$triangle : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$CyclingOptimizationInput<TRes> {
  factory CopyWith$Input$CyclingOptimizationInput(
    Input$CyclingOptimizationInput instance,
    TRes Function(Input$CyclingOptimizationInput) then,
  ) = _CopyWithImpl$Input$CyclingOptimizationInput;

  factory CopyWith$Input$CyclingOptimizationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CyclingOptimizationInput;

  TRes call({
    Input$TriangleCyclingFactorsInput? triangle,
    Enum$CyclingOptimizationType? type,
  });
  CopyWith$Input$TriangleCyclingFactorsInput<TRes> get triangle;
}

class _CopyWithImpl$Input$CyclingOptimizationInput<TRes>
    implements CopyWith$Input$CyclingOptimizationInput<TRes> {
  _CopyWithImpl$Input$CyclingOptimizationInput(
    this._instance,
    this._then,
  );

  final Input$CyclingOptimizationInput _instance;

  final TRes Function(Input$CyclingOptimizationInput) _then;

  static const _undefined = {};

  TRes call({
    Object? triangle = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$CyclingOptimizationInput._({
        ..._instance._$data,
        if (triangle != _undefined)
          'triangle': (triangle as Input$TriangleCyclingFactorsInput?),
        if (type != _undefined) 'type': (type as Enum$CyclingOptimizationType?),
      }));
  CopyWith$Input$TriangleCyclingFactorsInput<TRes> get triangle {
    final local$triangle = _instance.triangle;
    return local$triangle == null
        ? CopyWith$Input$TriangleCyclingFactorsInput.stub(_then(_instance))
        : CopyWith$Input$TriangleCyclingFactorsInput(
            local$triangle, (e) => call(triangle: e));
  }
}

class _CopyWithStubImpl$Input$CyclingOptimizationInput<TRes>
    implements CopyWith$Input$CyclingOptimizationInput<TRes> {
  _CopyWithStubImpl$Input$CyclingOptimizationInput(this._res);

  TRes _res;

  call({
    Input$TriangleCyclingFactorsInput? triangle,
    Enum$CyclingOptimizationType? type,
  }) =>
      _res;
  CopyWith$Input$TriangleCyclingFactorsInput<TRes> get triangle =>
      CopyWith$Input$TriangleCyclingFactorsInput.stub(_res);
}

class Input$DestinationBicyclePolicyInput {
  factory Input$DestinationBicyclePolicyInput({
    bool? allowKeeping,
    String? keepingCost,
  }) =>
      Input$DestinationBicyclePolicyInput._({
        if (allowKeeping != null) r'allowKeeping': allowKeeping,
        if (keepingCost != null) r'keepingCost': keepingCost,
      });

  Input$DestinationBicyclePolicyInput._(this._$data);

  factory Input$DestinationBicyclePolicyInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('allowKeeping')) {
      final l$allowKeeping = data['allowKeeping'];
      result$data['allowKeeping'] = (l$allowKeeping as bool?);
    }
    if (data.containsKey('keepingCost')) {
      final l$keepingCost = data['keepingCost'];
      result$data['keepingCost'] = (l$keepingCost as String?);
    }
    return Input$DestinationBicyclePolicyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get allowKeeping => (_$data['allowKeeping'] as bool?);
  String? get keepingCost => (_$data['keepingCost'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('allowKeeping')) {
      final l$allowKeeping = allowKeeping;
      result$data['allowKeeping'] = l$allowKeeping;
    }
    if (_$data.containsKey('keepingCost')) {
      final l$keepingCost = keepingCost;
      result$data['keepingCost'] = l$keepingCost;
    }
    return result$data;
  }

  CopyWith$Input$DestinationBicyclePolicyInput<
          Input$DestinationBicyclePolicyInput>
      get copyWith => CopyWith$Input$DestinationBicyclePolicyInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DestinationBicyclePolicyInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allowKeeping = allowKeeping;
    final lOther$allowKeeping = other.allowKeeping;
    if (_$data.containsKey('allowKeeping') !=
        other._$data.containsKey('allowKeeping')) {
      return false;
    }
    if (l$allowKeeping != lOther$allowKeeping) {
      return false;
    }
    final l$keepingCost = keepingCost;
    final lOther$keepingCost = other.keepingCost;
    if (_$data.containsKey('keepingCost') !=
        other._$data.containsKey('keepingCost')) {
      return false;
    }
    if (l$keepingCost != lOther$keepingCost) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$allowKeeping = allowKeeping;
    final l$keepingCost = keepingCost;
    return Object.hashAll([
      _$data.containsKey('allowKeeping') ? l$allowKeeping : const {},
      _$data.containsKey('keepingCost') ? l$keepingCost : const {},
    ]);
  }
}

abstract class CopyWith$Input$DestinationBicyclePolicyInput<TRes> {
  factory CopyWith$Input$DestinationBicyclePolicyInput(
    Input$DestinationBicyclePolicyInput instance,
    TRes Function(Input$DestinationBicyclePolicyInput) then,
  ) = _CopyWithImpl$Input$DestinationBicyclePolicyInput;

  factory CopyWith$Input$DestinationBicyclePolicyInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DestinationBicyclePolicyInput;

  TRes call({
    bool? allowKeeping,
    String? keepingCost,
  });
}

class _CopyWithImpl$Input$DestinationBicyclePolicyInput<TRes>
    implements CopyWith$Input$DestinationBicyclePolicyInput<TRes> {
  _CopyWithImpl$Input$DestinationBicyclePolicyInput(
    this._instance,
    this._then,
  );

  final Input$DestinationBicyclePolicyInput _instance;

  final TRes Function(Input$DestinationBicyclePolicyInput) _then;

  static const _undefined = {};

  TRes call({
    Object? allowKeeping = _undefined,
    Object? keepingCost = _undefined,
  }) =>
      _then(Input$DestinationBicyclePolicyInput._({
        ..._instance._$data,
        if (allowKeeping != _undefined) 'allowKeeping': (allowKeeping as bool?),
        if (keepingCost != _undefined) 'keepingCost': (keepingCost as String?),
      }));
}

class _CopyWithStubImpl$Input$DestinationBicyclePolicyInput<TRes>
    implements CopyWith$Input$DestinationBicyclePolicyInput<TRes> {
  _CopyWithStubImpl$Input$DestinationBicyclePolicyInput(this._res);

  TRes _res;

  call({
    bool? allowKeeping,
    String? keepingCost,
  }) =>
      _res;
}

class Input$DestinationScooterPolicyInput {
  factory Input$DestinationScooterPolicyInput({
    bool? allowKeeping,
    String? keepingCost,
  }) =>
      Input$DestinationScooterPolicyInput._({
        if (allowKeeping != null) r'allowKeeping': allowKeeping,
        if (keepingCost != null) r'keepingCost': keepingCost,
      });

  Input$DestinationScooterPolicyInput._(this._$data);

  factory Input$DestinationScooterPolicyInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('allowKeeping')) {
      final l$allowKeeping = data['allowKeeping'];
      result$data['allowKeeping'] = (l$allowKeeping as bool?);
    }
    if (data.containsKey('keepingCost')) {
      final l$keepingCost = data['keepingCost'];
      result$data['keepingCost'] = (l$keepingCost as String?);
    }
    return Input$DestinationScooterPolicyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get allowKeeping => (_$data['allowKeeping'] as bool?);
  String? get keepingCost => (_$data['keepingCost'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('allowKeeping')) {
      final l$allowKeeping = allowKeeping;
      result$data['allowKeeping'] = l$allowKeeping;
    }
    if (_$data.containsKey('keepingCost')) {
      final l$keepingCost = keepingCost;
      result$data['keepingCost'] = l$keepingCost;
    }
    return result$data;
  }

  CopyWith$Input$DestinationScooterPolicyInput<
          Input$DestinationScooterPolicyInput>
      get copyWith => CopyWith$Input$DestinationScooterPolicyInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DestinationScooterPolicyInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allowKeeping = allowKeeping;
    final lOther$allowKeeping = other.allowKeeping;
    if (_$data.containsKey('allowKeeping') !=
        other._$data.containsKey('allowKeeping')) {
      return false;
    }
    if (l$allowKeeping != lOther$allowKeeping) {
      return false;
    }
    final l$keepingCost = keepingCost;
    final lOther$keepingCost = other.keepingCost;
    if (_$data.containsKey('keepingCost') !=
        other._$data.containsKey('keepingCost')) {
      return false;
    }
    if (l$keepingCost != lOther$keepingCost) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$allowKeeping = allowKeeping;
    final l$keepingCost = keepingCost;
    return Object.hashAll([
      _$data.containsKey('allowKeeping') ? l$allowKeeping : const {},
      _$data.containsKey('keepingCost') ? l$keepingCost : const {},
    ]);
  }
}

abstract class CopyWith$Input$DestinationScooterPolicyInput<TRes> {
  factory CopyWith$Input$DestinationScooterPolicyInput(
    Input$DestinationScooterPolicyInput instance,
    TRes Function(Input$DestinationScooterPolicyInput) then,
  ) = _CopyWithImpl$Input$DestinationScooterPolicyInput;

  factory CopyWith$Input$DestinationScooterPolicyInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DestinationScooterPolicyInput;

  TRes call({
    bool? allowKeeping,
    String? keepingCost,
  });
}

class _CopyWithImpl$Input$DestinationScooterPolicyInput<TRes>
    implements CopyWith$Input$DestinationScooterPolicyInput<TRes> {
  _CopyWithImpl$Input$DestinationScooterPolicyInput(
    this._instance,
    this._then,
  );

  final Input$DestinationScooterPolicyInput _instance;

  final TRes Function(Input$DestinationScooterPolicyInput) _then;

  static const _undefined = {};

  TRes call({
    Object? allowKeeping = _undefined,
    Object? keepingCost = _undefined,
  }) =>
      _then(Input$DestinationScooterPolicyInput._({
        ..._instance._$data,
        if (allowKeeping != _undefined) 'allowKeeping': (allowKeeping as bool?),
        if (keepingCost != _undefined) 'keepingCost': (keepingCost as String?),
      }));
}

class _CopyWithStubImpl$Input$DestinationScooterPolicyInput<TRes>
    implements CopyWith$Input$DestinationScooterPolicyInput<TRes> {
  _CopyWithStubImpl$Input$DestinationScooterPolicyInput(this._res);

  TRes _res;

  call({
    bool? allowKeeping,
    String? keepingCost,
  }) =>
      _res;
}

class Input$InputBanned {
  factory Input$InputBanned({
    String? agencies,
    String? routes,
    String? trips,
  }) =>
      Input$InputBanned._({
        if (agencies != null) r'agencies': agencies,
        if (routes != null) r'routes': routes,
        if (trips != null) r'trips': trips,
      });

  Input$InputBanned._(this._$data);

  factory Input$InputBanned.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('agencies')) {
      final l$agencies = data['agencies'];
      result$data['agencies'] = (l$agencies as String?);
    }
    if (data.containsKey('routes')) {
      final l$routes = data['routes'];
      result$data['routes'] = (l$routes as String?);
    }
    if (data.containsKey('trips')) {
      final l$trips = data['trips'];
      result$data['trips'] = (l$trips as String?);
    }
    return Input$InputBanned._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get agencies => (_$data['agencies'] as String?);
  String? get routes => (_$data['routes'] as String?);
  String? get trips => (_$data['trips'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('agencies')) {
      final l$agencies = agencies;
      result$data['agencies'] = l$agencies;
    }
    if (_$data.containsKey('routes')) {
      final l$routes = routes;
      result$data['routes'] = l$routes;
    }
    if (_$data.containsKey('trips')) {
      final l$trips = trips;
      result$data['trips'] = l$trips;
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
    final l$agencies = agencies;
    final lOther$agencies = other.agencies;
    if (_$data.containsKey('agencies') !=
        other._$data.containsKey('agencies')) {
      return false;
    }
    if (l$agencies != lOther$agencies) {
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
    final l$trips = trips;
    final lOther$trips = other.trips;
    if (_$data.containsKey('trips') != other._$data.containsKey('trips')) {
      return false;
    }
    if (l$trips != lOther$trips) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$agencies = agencies;
    final l$routes = routes;
    final l$trips = trips;
    return Object.hashAll([
      _$data.containsKey('agencies') ? l$agencies : const {},
      _$data.containsKey('routes') ? l$routes : const {},
      _$data.containsKey('trips') ? l$trips : const {},
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
    String? agencies,
    String? routes,
    String? trips,
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
    Object? agencies = _undefined,
    Object? routes = _undefined,
    Object? trips = _undefined,
  }) =>
      _then(Input$InputBanned._({
        ..._instance._$data,
        if (agencies != _undefined) 'agencies': (agencies as String?),
        if (routes != _undefined) 'routes': (routes as String?),
        if (trips != _undefined) 'trips': (trips as String?),
      }));
}

class _CopyWithStubImpl$Input$InputBanned<TRes>
    implements CopyWith$Input$InputBanned<TRes> {
  _CopyWithStubImpl$Input$InputBanned(this._res);

  TRes _res;

  call({
    String? agencies,
    String? routes,
    String? trips,
  }) =>
      _res;
}

class Input$InputCoordinates {
  factory Input$InputCoordinates({
    String? address,
    required double lat,
    int? locationSlack,
    required double lon,
  }) =>
      Input$InputCoordinates._({
        if (address != null) r'address': address,
        r'lat': lat,
        if (locationSlack != null) r'locationSlack': locationSlack,
        r'lon': lon,
      });

  Input$InputCoordinates._(this._$data);

  factory Input$InputCoordinates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = (l$address as String?);
    }
    final l$lat = data['lat'];
    result$data['lat'] = (l$lat as num).toDouble();
    if (data.containsKey('locationSlack')) {
      final l$locationSlack = data['locationSlack'];
      result$data['locationSlack'] = (l$locationSlack as int?);
    }
    final l$lon = data['lon'];
    result$data['lon'] = (l$lon as num).toDouble();
    return Input$InputCoordinates._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get address => (_$data['address'] as String?);
  double get lat => (_$data['lat'] as double);
  int? get locationSlack => (_$data['locationSlack'] as int?);
  double get lon => (_$data['lon'] as double);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address;
    }
    final l$lat = lat;
    result$data['lat'] = l$lat;
    if (_$data.containsKey('locationSlack')) {
      final l$locationSlack = locationSlack;
      result$data['locationSlack'] = l$locationSlack;
    }
    final l$lon = lon;
    result$data['lon'] = l$lon;
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
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
    final l$lon = lon;
    final lOther$lon = other.lon;
    if (l$lon != lOther$lon) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$lat = lat;
    final l$locationSlack = locationSlack;
    final l$lon = lon;
    return Object.hashAll([
      _$data.containsKey('address') ? l$address : const {},
      l$lat,
      _$data.containsKey('locationSlack') ? l$locationSlack : const {},
      l$lon,
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
    String? address,
    double? lat,
    int? locationSlack,
    double? lon,
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
    Object? address = _undefined,
    Object? lat = _undefined,
    Object? locationSlack = _undefined,
    Object? lon = _undefined,
  }) =>
      _then(Input$InputCoordinates._({
        ..._instance._$data,
        if (address != _undefined) 'address': (address as String?),
        if (lat != _undefined && lat != null) 'lat': (lat as double),
        if (locationSlack != _undefined)
          'locationSlack': (locationSlack as int?),
        if (lon != _undefined && lon != null) 'lon': (lon as double),
      }));
}

class _CopyWithStubImpl$Input$InputCoordinates<TRes>
    implements CopyWith$Input$InputCoordinates<TRes> {
  _CopyWithStubImpl$Input$InputCoordinates(this._res);

  TRes _res;

  call({
    String? address,
    double? lat,
    int? locationSlack,
    double? lon,
  }) =>
      _res;
}

class Input$InputFilters {
  factory Input$InputFilters({
    List<String?>? bikeParks,
    List<String?>? bikeRentalStations,
    List<String?>? carParks,
    List<String?>? routes,
    List<String?>? stations,
    List<String?>? stops,
  }) =>
      Input$InputFilters._({
        if (bikeParks != null) r'bikeParks': bikeParks,
        if (bikeRentalStations != null)
          r'bikeRentalStations': bikeRentalStations,
        if (carParks != null) r'carParks': carParks,
        if (routes != null) r'routes': routes,
        if (stations != null) r'stations': stations,
        if (stops != null) r'stops': stops,
      });

  Input$InputFilters._(this._$data);

  factory Input$InputFilters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bikeParks')) {
      final l$bikeParks = data['bikeParks'];
      result$data['bikeParks'] =
          (l$bikeParks as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('bikeRentalStations')) {
      final l$bikeRentalStations = data['bikeRentalStations'];
      result$data['bikeRentalStations'] =
          (l$bikeRentalStations as List<dynamic>?)
              ?.map((e) => (e as String?))
              .toList();
    }
    if (data.containsKey('carParks')) {
      final l$carParks = data['carParks'];
      result$data['carParks'] =
          (l$carParks as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('routes')) {
      final l$routes = data['routes'];
      result$data['routes'] =
          (l$routes as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('stations')) {
      final l$stations = data['stations'];
      result$data['stations'] =
          (l$stations as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('stops')) {
      final l$stops = data['stops'];
      result$data['stops'] =
          (l$stops as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    return Input$InputFilters._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String?>? get bikeParks => (_$data['bikeParks'] as List<String?>?);
  List<String?>? get bikeRentalStations =>
      (_$data['bikeRentalStations'] as List<String?>?);
  List<String?>? get carParks => (_$data['carParks'] as List<String?>?);
  List<String?>? get routes => (_$data['routes'] as List<String?>?);
  List<String?>? get stations => (_$data['stations'] as List<String?>?);
  List<String?>? get stops => (_$data['stops'] as List<String?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bikeParks')) {
      final l$bikeParks = bikeParks;
      result$data['bikeParks'] = l$bikeParks?.map((e) => e).toList();
    }
    if (_$data.containsKey('bikeRentalStations')) {
      final l$bikeRentalStations = bikeRentalStations;
      result$data['bikeRentalStations'] =
          l$bikeRentalStations?.map((e) => e).toList();
    }
    if (_$data.containsKey('carParks')) {
      final l$carParks = carParks;
      result$data['carParks'] = l$carParks?.map((e) => e).toList();
    }
    if (_$data.containsKey('routes')) {
      final l$routes = routes;
      result$data['routes'] = l$routes?.map((e) => e).toList();
    }
    if (_$data.containsKey('stations')) {
      final l$stations = stations;
      result$data['stations'] = l$stations?.map((e) => e).toList();
    }
    if (_$data.containsKey('stops')) {
      final l$stops = stops;
      result$data['stops'] = l$stops?.map((e) => e).toList();
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
    final l$stations = stations;
    final lOther$stations = other.stations;
    if (_$data.containsKey('stations') !=
        other._$data.containsKey('stations')) {
      return false;
    }
    if (l$stations != null && lOther$stations != null) {
      if (l$stations.length != lOther$stations.length) {
        return false;
      }
      for (int i = 0; i < l$stations.length; i++) {
        final l$stations$entry = l$stations[i];
        final lOther$stations$entry = lOther$stations[i];
        if (l$stations$entry != lOther$stations$entry) {
          return false;
        }
      }
    } else if (l$stations != lOther$stations) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$bikeParks = bikeParks;
    final l$bikeRentalStations = bikeRentalStations;
    final l$carParks = carParks;
    final l$routes = routes;
    final l$stations = stations;
    final l$stops = stops;
    return Object.hashAll([
      _$data.containsKey('bikeParks')
          ? l$bikeParks == null
              ? null
              : Object.hashAll(l$bikeParks.map((v) => v))
          : const {},
      _$data.containsKey('bikeRentalStations')
          ? l$bikeRentalStations == null
              ? null
              : Object.hashAll(l$bikeRentalStations.map((v) => v))
          : const {},
      _$data.containsKey('carParks')
          ? l$carParks == null
              ? null
              : Object.hashAll(l$carParks.map((v) => v))
          : const {},
      _$data.containsKey('routes')
          ? l$routes == null
              ? null
              : Object.hashAll(l$routes.map((v) => v))
          : const {},
      _$data.containsKey('stations')
          ? l$stations == null
              ? null
              : Object.hashAll(l$stations.map((v) => v))
          : const {},
      _$data.containsKey('stops')
          ? l$stops == null
              ? null
              : Object.hashAll(l$stops.map((v) => v))
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
    List<String?>? bikeParks,
    List<String?>? bikeRentalStations,
    List<String?>? carParks,
    List<String?>? routes,
    List<String?>? stations,
    List<String?>? stops,
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
    Object? bikeParks = _undefined,
    Object? bikeRentalStations = _undefined,
    Object? carParks = _undefined,
    Object? routes = _undefined,
    Object? stations = _undefined,
    Object? stops = _undefined,
  }) =>
      _then(Input$InputFilters._({
        ..._instance._$data,
        if (bikeParks != _undefined) 'bikeParks': (bikeParks as List<String?>?),
        if (bikeRentalStations != _undefined)
          'bikeRentalStations': (bikeRentalStations as List<String?>?),
        if (carParks != _undefined) 'carParks': (carParks as List<String?>?),
        if (routes != _undefined) 'routes': (routes as List<String?>?),
        if (stations != _undefined) 'stations': (stations as List<String?>?),
        if (stops != _undefined) 'stops': (stops as List<String?>?),
      }));
}

class _CopyWithStubImpl$Input$InputFilters<TRes>
    implements CopyWith$Input$InputFilters<TRes> {
  _CopyWithStubImpl$Input$InputFilters(this._res);

  TRes _res;

  call({
    List<String?>? bikeParks,
    List<String?>? bikeRentalStations,
    List<String?>? carParks,
    List<String?>? routes,
    List<String?>? stations,
    List<String?>? stops,
  }) =>
      _res;
}

class Input$InputModeWeight {
  factory Input$InputModeWeight({
    double? AIRPLANE,
    double? BUS,
    double? CABLE_CAR,
    double? CARPOOL,
    double? COACH,
    double? FERRY,
    double? FUNICULAR,
    double? GONDOLA,
    double? MONORAIL,
    double? RAIL,
    double? SUBWAY,
    double? TAXI,
    double? TRAM,
    double? TROLLEYBUS,
  }) =>
      Input$InputModeWeight._({
        if (AIRPLANE != null) r'AIRPLANE': AIRPLANE,
        if (BUS != null) r'BUS': BUS,
        if (CABLE_CAR != null) r'CABLE_CAR': CABLE_CAR,
        if (CARPOOL != null) r'CARPOOL': CARPOOL,
        if (COACH != null) r'COACH': COACH,
        if (FERRY != null) r'FERRY': FERRY,
        if (FUNICULAR != null) r'FUNICULAR': FUNICULAR,
        if (GONDOLA != null) r'GONDOLA': GONDOLA,
        if (MONORAIL != null) r'MONORAIL': MONORAIL,
        if (RAIL != null) r'RAIL': RAIL,
        if (SUBWAY != null) r'SUBWAY': SUBWAY,
        if (TAXI != null) r'TAXI': TAXI,
        if (TRAM != null) r'TRAM': TRAM,
        if (TROLLEYBUS != null) r'TROLLEYBUS': TROLLEYBUS,
      });

  Input$InputModeWeight._(this._$data);

  factory Input$InputModeWeight.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('AIRPLANE')) {
      final l$AIRPLANE = data['AIRPLANE'];
      result$data['AIRPLANE'] = (l$AIRPLANE as num?)?.toDouble();
    }
    if (data.containsKey('BUS')) {
      final l$BUS = data['BUS'];
      result$data['BUS'] = (l$BUS as num?)?.toDouble();
    }
    if (data.containsKey('CABLE_CAR')) {
      final l$CABLE_CAR = data['CABLE_CAR'];
      result$data['CABLE_CAR'] = (l$CABLE_CAR as num?)?.toDouble();
    }
    if (data.containsKey('CARPOOL')) {
      final l$CARPOOL = data['CARPOOL'];
      result$data['CARPOOL'] = (l$CARPOOL as num?)?.toDouble();
    }
    if (data.containsKey('COACH')) {
      final l$COACH = data['COACH'];
      result$data['COACH'] = (l$COACH as num?)?.toDouble();
    }
    if (data.containsKey('FERRY')) {
      final l$FERRY = data['FERRY'];
      result$data['FERRY'] = (l$FERRY as num?)?.toDouble();
    }
    if (data.containsKey('FUNICULAR')) {
      final l$FUNICULAR = data['FUNICULAR'];
      result$data['FUNICULAR'] = (l$FUNICULAR as num?)?.toDouble();
    }
    if (data.containsKey('GONDOLA')) {
      final l$GONDOLA = data['GONDOLA'];
      result$data['GONDOLA'] = (l$GONDOLA as num?)?.toDouble();
    }
    if (data.containsKey('MONORAIL')) {
      final l$MONORAIL = data['MONORAIL'];
      result$data['MONORAIL'] = (l$MONORAIL as num?)?.toDouble();
    }
    if (data.containsKey('RAIL')) {
      final l$RAIL = data['RAIL'];
      result$data['RAIL'] = (l$RAIL as num?)?.toDouble();
    }
    if (data.containsKey('SUBWAY')) {
      final l$SUBWAY = data['SUBWAY'];
      result$data['SUBWAY'] = (l$SUBWAY as num?)?.toDouble();
    }
    if (data.containsKey('TAXI')) {
      final l$TAXI = data['TAXI'];
      result$data['TAXI'] = (l$TAXI as num?)?.toDouble();
    }
    if (data.containsKey('TRAM')) {
      final l$TRAM = data['TRAM'];
      result$data['TRAM'] = (l$TRAM as num?)?.toDouble();
    }
    if (data.containsKey('TROLLEYBUS')) {
      final l$TROLLEYBUS = data['TROLLEYBUS'];
      result$data['TROLLEYBUS'] = (l$TROLLEYBUS as num?)?.toDouble();
    }
    return Input$InputModeWeight._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get AIRPLANE => (_$data['AIRPLANE'] as double?);
  double? get BUS => (_$data['BUS'] as double?);
  double? get CABLE_CAR => (_$data['CABLE_CAR'] as double?);
  double? get CARPOOL => (_$data['CARPOOL'] as double?);
  double? get COACH => (_$data['COACH'] as double?);
  double? get FERRY => (_$data['FERRY'] as double?);
  double? get FUNICULAR => (_$data['FUNICULAR'] as double?);
  double? get GONDOLA => (_$data['GONDOLA'] as double?);
  double? get MONORAIL => (_$data['MONORAIL'] as double?);
  double? get RAIL => (_$data['RAIL'] as double?);
  double? get SUBWAY => (_$data['SUBWAY'] as double?);
  double? get TAXI => (_$data['TAXI'] as double?);
  double? get TRAM => (_$data['TRAM'] as double?);
  double? get TROLLEYBUS => (_$data['TROLLEYBUS'] as double?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('AIRPLANE')) {
      final l$AIRPLANE = AIRPLANE;
      result$data['AIRPLANE'] = l$AIRPLANE;
    }
    if (_$data.containsKey('BUS')) {
      final l$BUS = BUS;
      result$data['BUS'] = l$BUS;
    }
    if (_$data.containsKey('CABLE_CAR')) {
      final l$CABLE_CAR = CABLE_CAR;
      result$data['CABLE_CAR'] = l$CABLE_CAR;
    }
    if (_$data.containsKey('CARPOOL')) {
      final l$CARPOOL = CARPOOL;
      result$data['CARPOOL'] = l$CARPOOL;
    }
    if (_$data.containsKey('COACH')) {
      final l$COACH = COACH;
      result$data['COACH'] = l$COACH;
    }
    if (_$data.containsKey('FERRY')) {
      final l$FERRY = FERRY;
      result$data['FERRY'] = l$FERRY;
    }
    if (_$data.containsKey('FUNICULAR')) {
      final l$FUNICULAR = FUNICULAR;
      result$data['FUNICULAR'] = l$FUNICULAR;
    }
    if (_$data.containsKey('GONDOLA')) {
      final l$GONDOLA = GONDOLA;
      result$data['GONDOLA'] = l$GONDOLA;
    }
    if (_$data.containsKey('MONORAIL')) {
      final l$MONORAIL = MONORAIL;
      result$data['MONORAIL'] = l$MONORAIL;
    }
    if (_$data.containsKey('RAIL')) {
      final l$RAIL = RAIL;
      result$data['RAIL'] = l$RAIL;
    }
    if (_$data.containsKey('SUBWAY')) {
      final l$SUBWAY = SUBWAY;
      result$data['SUBWAY'] = l$SUBWAY;
    }
    if (_$data.containsKey('TAXI')) {
      final l$TAXI = TAXI;
      result$data['TAXI'] = l$TAXI;
    }
    if (_$data.containsKey('TRAM')) {
      final l$TRAM = TRAM;
      result$data['TRAM'] = l$TRAM;
    }
    if (_$data.containsKey('TROLLEYBUS')) {
      final l$TROLLEYBUS = TROLLEYBUS;
      result$data['TROLLEYBUS'] = l$TROLLEYBUS;
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
    final l$AIRPLANE = AIRPLANE;
    final lOther$AIRPLANE = other.AIRPLANE;
    if (_$data.containsKey('AIRPLANE') !=
        other._$data.containsKey('AIRPLANE')) {
      return false;
    }
    if (l$AIRPLANE != lOther$AIRPLANE) {
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
    final l$CABLE_CAR = CABLE_CAR;
    final lOther$CABLE_CAR = other.CABLE_CAR;
    if (_$data.containsKey('CABLE_CAR') !=
        other._$data.containsKey('CABLE_CAR')) {
      return false;
    }
    if (l$CABLE_CAR != lOther$CABLE_CAR) {
      return false;
    }
    final l$CARPOOL = CARPOOL;
    final lOther$CARPOOL = other.CARPOOL;
    if (_$data.containsKey('CARPOOL') != other._$data.containsKey('CARPOOL')) {
      return false;
    }
    if (l$CARPOOL != lOther$CARPOOL) {
      return false;
    }
    final l$COACH = COACH;
    final lOther$COACH = other.COACH;
    if (_$data.containsKey('COACH') != other._$data.containsKey('COACH')) {
      return false;
    }
    if (l$COACH != lOther$COACH) {
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
    final l$FUNICULAR = FUNICULAR;
    final lOther$FUNICULAR = other.FUNICULAR;
    if (_$data.containsKey('FUNICULAR') !=
        other._$data.containsKey('FUNICULAR')) {
      return false;
    }
    if (l$FUNICULAR != lOther$FUNICULAR) {
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
    final l$MONORAIL = MONORAIL;
    final lOther$MONORAIL = other.MONORAIL;
    if (_$data.containsKey('MONORAIL') !=
        other._$data.containsKey('MONORAIL')) {
      return false;
    }
    if (l$MONORAIL != lOther$MONORAIL) {
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
    final l$SUBWAY = SUBWAY;
    final lOther$SUBWAY = other.SUBWAY;
    if (_$data.containsKey('SUBWAY') != other._$data.containsKey('SUBWAY')) {
      return false;
    }
    if (l$SUBWAY != lOther$SUBWAY) {
      return false;
    }
    final l$TAXI = TAXI;
    final lOther$TAXI = other.TAXI;
    if (_$data.containsKey('TAXI') != other._$data.containsKey('TAXI')) {
      return false;
    }
    if (l$TAXI != lOther$TAXI) {
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
    final l$TROLLEYBUS = TROLLEYBUS;
    final lOther$TROLLEYBUS = other.TROLLEYBUS;
    if (_$data.containsKey('TROLLEYBUS') !=
        other._$data.containsKey('TROLLEYBUS')) {
      return false;
    }
    if (l$TROLLEYBUS != lOther$TROLLEYBUS) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$AIRPLANE = AIRPLANE;
    final l$BUS = BUS;
    final l$CABLE_CAR = CABLE_CAR;
    final l$CARPOOL = CARPOOL;
    final l$COACH = COACH;
    final l$FERRY = FERRY;
    final l$FUNICULAR = FUNICULAR;
    final l$GONDOLA = GONDOLA;
    final l$MONORAIL = MONORAIL;
    final l$RAIL = RAIL;
    final l$SUBWAY = SUBWAY;
    final l$TAXI = TAXI;
    final l$TRAM = TRAM;
    final l$TROLLEYBUS = TROLLEYBUS;
    return Object.hashAll([
      _$data.containsKey('AIRPLANE') ? l$AIRPLANE : const {},
      _$data.containsKey('BUS') ? l$BUS : const {},
      _$data.containsKey('CABLE_CAR') ? l$CABLE_CAR : const {},
      _$data.containsKey('CARPOOL') ? l$CARPOOL : const {},
      _$data.containsKey('COACH') ? l$COACH : const {},
      _$data.containsKey('FERRY') ? l$FERRY : const {},
      _$data.containsKey('FUNICULAR') ? l$FUNICULAR : const {},
      _$data.containsKey('GONDOLA') ? l$GONDOLA : const {},
      _$data.containsKey('MONORAIL') ? l$MONORAIL : const {},
      _$data.containsKey('RAIL') ? l$RAIL : const {},
      _$data.containsKey('SUBWAY') ? l$SUBWAY : const {},
      _$data.containsKey('TAXI') ? l$TAXI : const {},
      _$data.containsKey('TRAM') ? l$TRAM : const {},
      _$data.containsKey('TROLLEYBUS') ? l$TROLLEYBUS : const {},
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
    double? AIRPLANE,
    double? BUS,
    double? CABLE_CAR,
    double? CARPOOL,
    double? COACH,
    double? FERRY,
    double? FUNICULAR,
    double? GONDOLA,
    double? MONORAIL,
    double? RAIL,
    double? SUBWAY,
    double? TAXI,
    double? TRAM,
    double? TROLLEYBUS,
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
    Object? AIRPLANE = _undefined,
    Object? BUS = _undefined,
    Object? CABLE_CAR = _undefined,
    Object? CARPOOL = _undefined,
    Object? COACH = _undefined,
    Object? FERRY = _undefined,
    Object? FUNICULAR = _undefined,
    Object? GONDOLA = _undefined,
    Object? MONORAIL = _undefined,
    Object? RAIL = _undefined,
    Object? SUBWAY = _undefined,
    Object? TAXI = _undefined,
    Object? TRAM = _undefined,
    Object? TROLLEYBUS = _undefined,
  }) =>
      _then(Input$InputModeWeight._({
        ..._instance._$data,
        if (AIRPLANE != _undefined) 'AIRPLANE': (AIRPLANE as double?),
        if (BUS != _undefined) 'BUS': (BUS as double?),
        if (CABLE_CAR != _undefined) 'CABLE_CAR': (CABLE_CAR as double?),
        if (CARPOOL != _undefined) 'CARPOOL': (CARPOOL as double?),
        if (COACH != _undefined) 'COACH': (COACH as double?),
        if (FERRY != _undefined) 'FERRY': (FERRY as double?),
        if (FUNICULAR != _undefined) 'FUNICULAR': (FUNICULAR as double?),
        if (GONDOLA != _undefined) 'GONDOLA': (GONDOLA as double?),
        if (MONORAIL != _undefined) 'MONORAIL': (MONORAIL as double?),
        if (RAIL != _undefined) 'RAIL': (RAIL as double?),
        if (SUBWAY != _undefined) 'SUBWAY': (SUBWAY as double?),
        if (TAXI != _undefined) 'TAXI': (TAXI as double?),
        if (TRAM != _undefined) 'TRAM': (TRAM as double?),
        if (TROLLEYBUS != _undefined) 'TROLLEYBUS': (TROLLEYBUS as double?),
      }));
}

class _CopyWithStubImpl$Input$InputModeWeight<TRes>
    implements CopyWith$Input$InputModeWeight<TRes> {
  _CopyWithStubImpl$Input$InputModeWeight(this._res);

  TRes _res;

  call({
    double? AIRPLANE,
    double? BUS,
    double? CABLE_CAR,
    double? CARPOOL,
    double? COACH,
    double? FERRY,
    double? FUNICULAR,
    double? GONDOLA,
    double? MONORAIL,
    double? RAIL,
    double? SUBWAY,
    double? TAXI,
    double? TRAM,
    double? TROLLEYBUS,
  }) =>
      _res;
}

class Input$InputPreferred {
  factory Input$InputPreferred({
    String? agencies,
    int? otherThanPreferredRoutesPenalty,
    String? routes,
  }) =>
      Input$InputPreferred._({
        if (agencies != null) r'agencies': agencies,
        if (otherThanPreferredRoutesPenalty != null)
          r'otherThanPreferredRoutesPenalty': otherThanPreferredRoutesPenalty,
        if (routes != null) r'routes': routes,
      });

  Input$InputPreferred._(this._$data);

  factory Input$InputPreferred.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('routes')) {
      final l$routes = data['routes'];
      result$data['routes'] = (l$routes as String?);
    }
    return Input$InputPreferred._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get agencies => (_$data['agencies'] as String?);
  int? get otherThanPreferredRoutesPenalty =>
      (_$data['otherThanPreferredRoutesPenalty'] as int?);
  String? get routes => (_$data['routes'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('agencies')) {
      final l$agencies = agencies;
      result$data['agencies'] = l$agencies;
    }
    if (_$data.containsKey('otherThanPreferredRoutesPenalty')) {
      final l$otherThanPreferredRoutesPenalty = otherThanPreferredRoutesPenalty;
      result$data['otherThanPreferredRoutesPenalty'] =
          l$otherThanPreferredRoutesPenalty;
    }
    if (_$data.containsKey('routes')) {
      final l$routes = routes;
      result$data['routes'] = l$routes;
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
    final l$routes = routes;
    final lOther$routes = other.routes;
    if (_$data.containsKey('routes') != other._$data.containsKey('routes')) {
      return false;
    }
    if (l$routes != lOther$routes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$agencies = agencies;
    final l$otherThanPreferredRoutesPenalty = otherThanPreferredRoutesPenalty;
    final l$routes = routes;
    return Object.hashAll([
      _$data.containsKey('agencies') ? l$agencies : const {},
      _$data.containsKey('otherThanPreferredRoutesPenalty')
          ? l$otherThanPreferredRoutesPenalty
          : const {},
      _$data.containsKey('routes') ? l$routes : const {},
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
    String? agencies,
    int? otherThanPreferredRoutesPenalty,
    String? routes,
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
    Object? agencies = _undefined,
    Object? otherThanPreferredRoutesPenalty = _undefined,
    Object? routes = _undefined,
  }) =>
      _then(Input$InputPreferred._({
        ..._instance._$data,
        if (agencies != _undefined) 'agencies': (agencies as String?),
        if (otherThanPreferredRoutesPenalty != _undefined)
          'otherThanPreferredRoutesPenalty':
              (otherThanPreferredRoutesPenalty as int?),
        if (routes != _undefined) 'routes': (routes as String?),
      }));
}

class _CopyWithStubImpl$Input$InputPreferred<TRes>
    implements CopyWith$Input$InputPreferred<TRes> {
  _CopyWithStubImpl$Input$InputPreferred(this._res);

  TRes _res;

  call({
    String? agencies,
    int? otherThanPreferredRoutesPenalty,
    String? routes,
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
    String? agencies,
    String? routes,
    String? unpreferredCost,
  }) =>
      Input$InputUnpreferred._({
        if (agencies != null) r'agencies': agencies,
        if (routes != null) r'routes': routes,
        if (unpreferredCost != null) r'unpreferredCost': unpreferredCost,
      });

  Input$InputUnpreferred._(this._$data);

  factory Input$InputUnpreferred.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('agencies')) {
      final l$agencies = data['agencies'];
      result$data['agencies'] = (l$agencies as String?);
    }
    if (data.containsKey('routes')) {
      final l$routes = data['routes'];
      result$data['routes'] = (l$routes as String?);
    }
    if (data.containsKey('unpreferredCost')) {
      final l$unpreferredCost = data['unpreferredCost'];
      result$data['unpreferredCost'] = (l$unpreferredCost as String?);
    }
    return Input$InputUnpreferred._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get agencies => (_$data['agencies'] as String?);
  String? get routes => (_$data['routes'] as String?);
  String? get unpreferredCost => (_$data['unpreferredCost'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('agencies')) {
      final l$agencies = agencies;
      result$data['agencies'] = l$agencies;
    }
    if (_$data.containsKey('routes')) {
      final l$routes = routes;
      result$data['routes'] = l$routes;
    }
    if (_$data.containsKey('unpreferredCost')) {
      final l$unpreferredCost = unpreferredCost;
      result$data['unpreferredCost'] = l$unpreferredCost;
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
    final l$agencies = agencies;
    final lOther$agencies = other.agencies;
    if (_$data.containsKey('agencies') !=
        other._$data.containsKey('agencies')) {
      return false;
    }
    if (l$agencies != lOther$agencies) {
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
    final l$unpreferredCost = unpreferredCost;
    final lOther$unpreferredCost = other.unpreferredCost;
    if (_$data.containsKey('unpreferredCost') !=
        other._$data.containsKey('unpreferredCost')) {
      return false;
    }
    if (l$unpreferredCost != lOther$unpreferredCost) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$agencies = agencies;
    final l$routes = routes;
    final l$unpreferredCost = unpreferredCost;
    return Object.hashAll([
      _$data.containsKey('agencies') ? l$agencies : const {},
      _$data.containsKey('routes') ? l$routes : const {},
      _$data.containsKey('unpreferredCost') ? l$unpreferredCost : const {},
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
    String? agencies,
    String? routes,
    String? unpreferredCost,
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
    Object? agencies = _undefined,
    Object? routes = _undefined,
    Object? unpreferredCost = _undefined,
  }) =>
      _then(Input$InputUnpreferred._({
        ..._instance._$data,
        if (agencies != _undefined) 'agencies': (agencies as String?),
        if (routes != _undefined) 'routes': (routes as String?),
        if (unpreferredCost != _undefined)
          'unpreferredCost': (unpreferredCost as String?),
      }));
}

class _CopyWithStubImpl$Input$InputUnpreferred<TRes>
    implements CopyWith$Input$InputUnpreferred<TRes> {
  _CopyWithStubImpl$Input$InputUnpreferred(this._res);

  TRes _res;

  call({
    String? agencies,
    String? routes,
    String? unpreferredCost,
  }) =>
      _res;
}

class Input$LocalDateRangeInput {
  factory Input$LocalDateRangeInput({
    String? end,
    String? start,
  }) =>
      Input$LocalDateRangeInput._({
        if (end != null) r'end': end,
        if (start != null) r'start': start,
      });

  Input$LocalDateRangeInput._(this._$data);

  factory Input$LocalDateRangeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('end')) {
      final l$end = data['end'];
      result$data['end'] = (l$end as String?);
    }
    if (data.containsKey('start')) {
      final l$start = data['start'];
      result$data['start'] = (l$start as String?);
    }
    return Input$LocalDateRangeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get end => (_$data['end'] as String?);
  String? get start => (_$data['start'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('end')) {
      final l$end = end;
      result$data['end'] = l$end;
    }
    if (_$data.containsKey('start')) {
      final l$start = start;
      result$data['start'] = l$start;
    }
    return result$data;
  }

  CopyWith$Input$LocalDateRangeInput<Input$LocalDateRangeInput> get copyWith =>
      CopyWith$Input$LocalDateRangeInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LocalDateRangeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$end = end;
    final lOther$end = other.end;
    if (_$data.containsKey('end') != other._$data.containsKey('end')) {
      return false;
    }
    if (l$end != lOther$end) {
      return false;
    }
    final l$start = start;
    final lOther$start = other.start;
    if (_$data.containsKey('start') != other._$data.containsKey('start')) {
      return false;
    }
    if (l$start != lOther$start) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$end = end;
    final l$start = start;
    return Object.hashAll([
      _$data.containsKey('end') ? l$end : const {},
      _$data.containsKey('start') ? l$start : const {},
    ]);
  }
}

abstract class CopyWith$Input$LocalDateRangeInput<TRes> {
  factory CopyWith$Input$LocalDateRangeInput(
    Input$LocalDateRangeInput instance,
    TRes Function(Input$LocalDateRangeInput) then,
  ) = _CopyWithImpl$Input$LocalDateRangeInput;

  factory CopyWith$Input$LocalDateRangeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LocalDateRangeInput;

  TRes call({
    String? end,
    String? start,
  });
}

class _CopyWithImpl$Input$LocalDateRangeInput<TRes>
    implements CopyWith$Input$LocalDateRangeInput<TRes> {
  _CopyWithImpl$Input$LocalDateRangeInput(
    this._instance,
    this._then,
  );

  final Input$LocalDateRangeInput _instance;

  final TRes Function(Input$LocalDateRangeInput) _then;

  static const _undefined = {};

  TRes call({
    Object? end = _undefined,
    Object? start = _undefined,
  }) =>
      _then(Input$LocalDateRangeInput._({
        ..._instance._$data,
        if (end != _undefined) 'end': (end as String?),
        if (start != _undefined) 'start': (start as String?),
      }));
}

class _CopyWithStubImpl$Input$LocalDateRangeInput<TRes>
    implements CopyWith$Input$LocalDateRangeInput<TRes> {
  _CopyWithStubImpl$Input$LocalDateRangeInput(this._res);

  TRes _res;

  call({
    String? end,
    String? start,
  }) =>
      _res;
}

class Input$ParkingFilter {
  factory Input$ParkingFilter({
    List<Input$ParkingFilterOperation>? not,
    List<Input$ParkingFilterOperation>? select,
  }) =>
      Input$ParkingFilter._({
        if (not != null) r'not': not,
        if (select != null) r'select': select,
      });

  Input$ParkingFilter._(this._$data);

  factory Input$ParkingFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map((e) => Input$ParkingFilterOperation.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('select')) {
      final l$select = data['select'];
      result$data['select'] = (l$select as List<dynamic>?)
          ?.map((e) => Input$ParkingFilterOperation.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ParkingFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ParkingFilterOperation>? get not =>
      (_$data['not'] as List<Input$ParkingFilterOperation>?);
  List<Input$ParkingFilterOperation>? get select =>
      (_$data['select'] as List<Input$ParkingFilterOperation>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('select')) {
      final l$select = select;
      result$data['select'] = l$select?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ParkingFilter<Input$ParkingFilter> get copyWith =>
      CopyWith$Input$ParkingFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ParkingFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != null && lOther$not != null) {
      if (l$not.length != lOther$not.length) {
        return false;
      }
      for (int i = 0; i < l$not.length; i++) {
        final l$not$entry = l$not[i];
        final lOther$not$entry = lOther$not[i];
        if (l$not$entry != lOther$not$entry) {
          return false;
        }
      }
    } else if (l$not != lOther$not) {
      return false;
    }
    final l$select = select;
    final lOther$select = other.select;
    if (_$data.containsKey('select') != other._$data.containsKey('select')) {
      return false;
    }
    if (l$select != null && lOther$select != null) {
      if (l$select.length != lOther$select.length) {
        return false;
      }
      for (int i = 0; i < l$select.length; i++) {
        final l$select$entry = l$select[i];
        final lOther$select$entry = lOther$select[i];
        if (l$select$entry != lOther$select$entry) {
          return false;
        }
      }
    } else if (l$select != lOther$select) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$not = not;
    final l$select = select;
    return Object.hashAll([
      _$data.containsKey('not')
          ? l$not == null
              ? null
              : Object.hashAll(l$not.map((v) => v))
          : const {},
      _$data.containsKey('select')
          ? l$select == null
              ? null
              : Object.hashAll(l$select.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ParkingFilter<TRes> {
  factory CopyWith$Input$ParkingFilter(
    Input$ParkingFilter instance,
    TRes Function(Input$ParkingFilter) then,
  ) = _CopyWithImpl$Input$ParkingFilter;

  factory CopyWith$Input$ParkingFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ParkingFilter;

  TRes call({
    List<Input$ParkingFilterOperation>? not,
    List<Input$ParkingFilterOperation>? select,
  });
  TRes not(
      Iterable<Input$ParkingFilterOperation>? Function(
              Iterable<
                  CopyWith$Input$ParkingFilterOperation<
                      Input$ParkingFilterOperation>>?)
          _fn);
  TRes select(
      Iterable<Input$ParkingFilterOperation>? Function(
              Iterable<
                  CopyWith$Input$ParkingFilterOperation<
                      Input$ParkingFilterOperation>>?)
          _fn);
}

class _CopyWithImpl$Input$ParkingFilter<TRes>
    implements CopyWith$Input$ParkingFilter<TRes> {
  _CopyWithImpl$Input$ParkingFilter(
    this._instance,
    this._then,
  );

  final Input$ParkingFilter _instance;

  final TRes Function(Input$ParkingFilter) _then;

  static const _undefined = {};

  TRes call({
    Object? not = _undefined,
    Object? select = _undefined,
  }) =>
      _then(Input$ParkingFilter._({
        ..._instance._$data,
        if (not != _undefined)
          'not': (not as List<Input$ParkingFilterOperation>?),
        if (select != _undefined)
          'select': (select as List<Input$ParkingFilterOperation>?),
      }));
  TRes not(
          Iterable<Input$ParkingFilterOperation>? Function(
                  Iterable<
                      CopyWith$Input$ParkingFilterOperation<
                          Input$ParkingFilterOperation>>?)
              _fn) =>
      call(
          not: _fn(
              _instance.not?.map((e) => CopyWith$Input$ParkingFilterOperation(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes select(
          Iterable<Input$ParkingFilterOperation>? Function(
                  Iterable<
                      CopyWith$Input$ParkingFilterOperation<
                          Input$ParkingFilterOperation>>?)
              _fn) =>
      call(
          select: _fn(_instance.select
              ?.map((e) => CopyWith$Input$ParkingFilterOperation(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ParkingFilter<TRes>
    implements CopyWith$Input$ParkingFilter<TRes> {
  _CopyWithStubImpl$Input$ParkingFilter(this._res);

  TRes _res;

  call({
    List<Input$ParkingFilterOperation>? not,
    List<Input$ParkingFilterOperation>? select,
  }) =>
      _res;
  not(_fn) => _res;
  select(_fn) => _res;
}

class Input$ParkingFilterOperation {
  factory Input$ParkingFilterOperation({List<String?>? tags}) =>
      Input$ParkingFilterOperation._({
        if (tags != null) r'tags': tags,
      });

  Input$ParkingFilterOperation._(this._$data);

  factory Input$ParkingFilterOperation.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] =
          (l$tags as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    return Input$ParkingFilterOperation._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String?>? get tags => (_$data['tags'] as List<String?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$ParkingFilterOperation<Input$ParkingFilterOperation>
      get copyWith => CopyWith$Input$ParkingFilterOperation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ParkingFilterOperation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$tags = tags;
    return Object.hashAll([
      _$data.containsKey('tags')
          ? l$tags == null
              ? null
              : Object.hashAll(l$tags.map((v) => v))
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$ParkingFilterOperation<TRes> {
  factory CopyWith$Input$ParkingFilterOperation(
    Input$ParkingFilterOperation instance,
    TRes Function(Input$ParkingFilterOperation) then,
  ) = _CopyWithImpl$Input$ParkingFilterOperation;

  factory CopyWith$Input$ParkingFilterOperation.stub(TRes res) =
      _CopyWithStubImpl$Input$ParkingFilterOperation;

  TRes call({List<String?>? tags});
}

class _CopyWithImpl$Input$ParkingFilterOperation<TRes>
    implements CopyWith$Input$ParkingFilterOperation<TRes> {
  _CopyWithImpl$Input$ParkingFilterOperation(
    this._instance,
    this._then,
  );

  final Input$ParkingFilterOperation _instance;

  final TRes Function(Input$ParkingFilterOperation) _then;

  static const _undefined = {};

  TRes call({Object? tags = _undefined}) =>
      _then(Input$ParkingFilterOperation._({
        ..._instance._$data,
        if (tags != _undefined) 'tags': (tags as List<String?>?),
      }));
}

class _CopyWithStubImpl$Input$ParkingFilterOperation<TRes>
    implements CopyWith$Input$ParkingFilterOperation<TRes> {
  _CopyWithStubImpl$Input$ParkingFilterOperation(this._res);

  TRes _res;

  call({List<String?>? tags}) => _res;
}

class Input$PlanCoordinateInput {
  factory Input$PlanCoordinateInput({
    required String latitude,
    required String longitude,
  }) =>
      Input$PlanCoordinateInput._({
        r'latitude': latitude,
        r'longitude': longitude,
      });

  Input$PlanCoordinateInput._(this._$data);

  factory Input$PlanCoordinateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$latitude = data['latitude'];
    result$data['latitude'] = (l$latitude as String);
    final l$longitude = data['longitude'];
    result$data['longitude'] = (l$longitude as String);
    return Input$PlanCoordinateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get latitude => (_$data['latitude'] as String);
  String get longitude => (_$data['longitude'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$latitude = latitude;
    result$data['latitude'] = l$latitude;
    final l$longitude = longitude;
    result$data['longitude'] = l$longitude;
    return result$data;
  }

  CopyWith$Input$PlanCoordinateInput<Input$PlanCoordinateInput> get copyWith =>
      CopyWith$Input$PlanCoordinateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanCoordinateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    return Object.hashAll([
      l$latitude,
      l$longitude,
    ]);
  }
}

abstract class CopyWith$Input$PlanCoordinateInput<TRes> {
  factory CopyWith$Input$PlanCoordinateInput(
    Input$PlanCoordinateInput instance,
    TRes Function(Input$PlanCoordinateInput) then,
  ) = _CopyWithImpl$Input$PlanCoordinateInput;

  factory CopyWith$Input$PlanCoordinateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanCoordinateInput;

  TRes call({
    String? latitude,
    String? longitude,
  });
}

class _CopyWithImpl$Input$PlanCoordinateInput<TRes>
    implements CopyWith$Input$PlanCoordinateInput<TRes> {
  _CopyWithImpl$Input$PlanCoordinateInput(
    this._instance,
    this._then,
  );

  final Input$PlanCoordinateInput _instance;

  final TRes Function(Input$PlanCoordinateInput) _then;

  static const _undefined = {};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
  }) =>
      _then(Input$PlanCoordinateInput._({
        ..._instance._$data,
        if (latitude != _undefined && latitude != null)
          'latitude': (latitude as String),
        if (longitude != _undefined && longitude != null)
          'longitude': (longitude as String),
      }));
}

class _CopyWithStubImpl$Input$PlanCoordinateInput<TRes>
    implements CopyWith$Input$PlanCoordinateInput<TRes> {
  _CopyWithStubImpl$Input$PlanCoordinateInput(this._res);

  TRes _res;

  call({
    String? latitude,
    String? longitude,
  }) =>
      _res;
}

class Input$PlanDateTimeInput {
  factory Input$PlanDateTimeInput({
    String? earliestDeparture,
    String? latestArrival,
  }) =>
      Input$PlanDateTimeInput._({
        if (earliestDeparture != null) r'earliestDeparture': earliestDeparture,
        if (latestArrival != null) r'latestArrival': latestArrival,
      });

  Input$PlanDateTimeInput._(this._$data);

  factory Input$PlanDateTimeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('earliestDeparture')) {
      final l$earliestDeparture = data['earliestDeparture'];
      result$data['earliestDeparture'] = (l$earliestDeparture as String?);
    }
    if (data.containsKey('latestArrival')) {
      final l$latestArrival = data['latestArrival'];
      result$data['latestArrival'] = (l$latestArrival as String?);
    }
    return Input$PlanDateTimeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get earliestDeparture => (_$data['earliestDeparture'] as String?);
  String? get latestArrival => (_$data['latestArrival'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('earliestDeparture')) {
      final l$earliestDeparture = earliestDeparture;
      result$data['earliestDeparture'] = l$earliestDeparture;
    }
    if (_$data.containsKey('latestArrival')) {
      final l$latestArrival = latestArrival;
      result$data['latestArrival'] = l$latestArrival;
    }
    return result$data;
  }

  CopyWith$Input$PlanDateTimeInput<Input$PlanDateTimeInput> get copyWith =>
      CopyWith$Input$PlanDateTimeInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanDateTimeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$earliestDeparture = earliestDeparture;
    final lOther$earliestDeparture = other.earliestDeparture;
    if (_$data.containsKey('earliestDeparture') !=
        other._$data.containsKey('earliestDeparture')) {
      return false;
    }
    if (l$earliestDeparture != lOther$earliestDeparture) {
      return false;
    }
    final l$latestArrival = latestArrival;
    final lOther$latestArrival = other.latestArrival;
    if (_$data.containsKey('latestArrival') !=
        other._$data.containsKey('latestArrival')) {
      return false;
    }
    if (l$latestArrival != lOther$latestArrival) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$earliestDeparture = earliestDeparture;
    final l$latestArrival = latestArrival;
    return Object.hashAll([
      _$data.containsKey('earliestDeparture') ? l$earliestDeparture : const {},
      _$data.containsKey('latestArrival') ? l$latestArrival : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlanDateTimeInput<TRes> {
  factory CopyWith$Input$PlanDateTimeInput(
    Input$PlanDateTimeInput instance,
    TRes Function(Input$PlanDateTimeInput) then,
  ) = _CopyWithImpl$Input$PlanDateTimeInput;

  factory CopyWith$Input$PlanDateTimeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanDateTimeInput;

  TRes call({
    String? earliestDeparture,
    String? latestArrival,
  });
}

class _CopyWithImpl$Input$PlanDateTimeInput<TRes>
    implements CopyWith$Input$PlanDateTimeInput<TRes> {
  _CopyWithImpl$Input$PlanDateTimeInput(
    this._instance,
    this._then,
  );

  final Input$PlanDateTimeInput _instance;

  final TRes Function(Input$PlanDateTimeInput) _then;

  static const _undefined = {};

  TRes call({
    Object? earliestDeparture = _undefined,
    Object? latestArrival = _undefined,
  }) =>
      _then(Input$PlanDateTimeInput._({
        ..._instance._$data,
        if (earliestDeparture != _undefined)
          'earliestDeparture': (earliestDeparture as String?),
        if (latestArrival != _undefined)
          'latestArrival': (latestArrival as String?),
      }));
}

class _CopyWithStubImpl$Input$PlanDateTimeInput<TRes>
    implements CopyWith$Input$PlanDateTimeInput<TRes> {
  _CopyWithStubImpl$Input$PlanDateTimeInput(this._res);

  TRes _res;

  call({
    String? earliestDeparture,
    String? latestArrival,
  }) =>
      _res;
}

class Input$PlanItineraryFilterInput {
  factory Input$PlanItineraryFilterInput({
    String? groupSimilarityKeepOne,
    String? groupSimilarityKeepThree,
    double? groupedOtherThanSameLegsMaxCostMultiplier,
    Enum$ItineraryFilterDebugProfile? itineraryFilterDebugProfile,
  }) =>
      Input$PlanItineraryFilterInput._({
        if (groupSimilarityKeepOne != null)
          r'groupSimilarityKeepOne': groupSimilarityKeepOne,
        if (groupSimilarityKeepThree != null)
          r'groupSimilarityKeepThree': groupSimilarityKeepThree,
        if (groupedOtherThanSameLegsMaxCostMultiplier != null)
          r'groupedOtherThanSameLegsMaxCostMultiplier':
              groupedOtherThanSameLegsMaxCostMultiplier,
        if (itineraryFilterDebugProfile != null)
          r'itineraryFilterDebugProfile': itineraryFilterDebugProfile,
      });

  Input$PlanItineraryFilterInput._(this._$data);

  factory Input$PlanItineraryFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('groupSimilarityKeepOne')) {
      final l$groupSimilarityKeepOne = data['groupSimilarityKeepOne'];
      result$data['groupSimilarityKeepOne'] =
          (l$groupSimilarityKeepOne as String?);
    }
    if (data.containsKey('groupSimilarityKeepThree')) {
      final l$groupSimilarityKeepThree = data['groupSimilarityKeepThree'];
      result$data['groupSimilarityKeepThree'] =
          (l$groupSimilarityKeepThree as String?);
    }
    if (data.containsKey('groupedOtherThanSameLegsMaxCostMultiplier')) {
      final l$groupedOtherThanSameLegsMaxCostMultiplier =
          data['groupedOtherThanSameLegsMaxCostMultiplier'];
      result$data['groupedOtherThanSameLegsMaxCostMultiplier'] =
          (l$groupedOtherThanSameLegsMaxCostMultiplier as num?)?.toDouble();
    }
    if (data.containsKey('itineraryFilterDebugProfile')) {
      final l$itineraryFilterDebugProfile = data['itineraryFilterDebugProfile'];
      result$data['itineraryFilterDebugProfile'] =
          l$itineraryFilterDebugProfile == null
              ? null
              : fromJson$Enum$ItineraryFilterDebugProfile(
                  (l$itineraryFilterDebugProfile as String));
    }
    return Input$PlanItineraryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get groupSimilarityKeepOne =>
      (_$data['groupSimilarityKeepOne'] as String?);
  String? get groupSimilarityKeepThree =>
      (_$data['groupSimilarityKeepThree'] as String?);
  double? get groupedOtherThanSameLegsMaxCostMultiplier =>
      (_$data['groupedOtherThanSameLegsMaxCostMultiplier'] as double?);
  Enum$ItineraryFilterDebugProfile? get itineraryFilterDebugProfile =>
      (_$data['itineraryFilterDebugProfile']
          as Enum$ItineraryFilterDebugProfile?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('groupSimilarityKeepOne')) {
      final l$groupSimilarityKeepOne = groupSimilarityKeepOne;
      result$data['groupSimilarityKeepOne'] = l$groupSimilarityKeepOne;
    }
    if (_$data.containsKey('groupSimilarityKeepThree')) {
      final l$groupSimilarityKeepThree = groupSimilarityKeepThree;
      result$data['groupSimilarityKeepThree'] = l$groupSimilarityKeepThree;
    }
    if (_$data.containsKey('groupedOtherThanSameLegsMaxCostMultiplier')) {
      final l$groupedOtherThanSameLegsMaxCostMultiplier =
          groupedOtherThanSameLegsMaxCostMultiplier;
      result$data['groupedOtherThanSameLegsMaxCostMultiplier'] =
          l$groupedOtherThanSameLegsMaxCostMultiplier;
    }
    if (_$data.containsKey('itineraryFilterDebugProfile')) {
      final l$itineraryFilterDebugProfile = itineraryFilterDebugProfile;
      result$data['itineraryFilterDebugProfile'] =
          l$itineraryFilterDebugProfile == null
              ? null
              : toJson$Enum$ItineraryFilterDebugProfile(
                  l$itineraryFilterDebugProfile);
    }
    return result$data;
  }

  CopyWith$Input$PlanItineraryFilterInput<Input$PlanItineraryFilterInput>
      get copyWith => CopyWith$Input$PlanItineraryFilterInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanItineraryFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupSimilarityKeepOne = groupSimilarityKeepOne;
    final lOther$groupSimilarityKeepOne = other.groupSimilarityKeepOne;
    if (_$data.containsKey('groupSimilarityKeepOne') !=
        other._$data.containsKey('groupSimilarityKeepOne')) {
      return false;
    }
    if (l$groupSimilarityKeepOne != lOther$groupSimilarityKeepOne) {
      return false;
    }
    final l$groupSimilarityKeepThree = groupSimilarityKeepThree;
    final lOther$groupSimilarityKeepThree = other.groupSimilarityKeepThree;
    if (_$data.containsKey('groupSimilarityKeepThree') !=
        other._$data.containsKey('groupSimilarityKeepThree')) {
      return false;
    }
    if (l$groupSimilarityKeepThree != lOther$groupSimilarityKeepThree) {
      return false;
    }
    final l$groupedOtherThanSameLegsMaxCostMultiplier =
        groupedOtherThanSameLegsMaxCostMultiplier;
    final lOther$groupedOtherThanSameLegsMaxCostMultiplier =
        other.groupedOtherThanSameLegsMaxCostMultiplier;
    if (_$data.containsKey('groupedOtherThanSameLegsMaxCostMultiplier') !=
        other._$data.containsKey('groupedOtherThanSameLegsMaxCostMultiplier')) {
      return false;
    }
    if (l$groupedOtherThanSameLegsMaxCostMultiplier !=
        lOther$groupedOtherThanSameLegsMaxCostMultiplier) {
      return false;
    }
    final l$itineraryFilterDebugProfile = itineraryFilterDebugProfile;
    final lOther$itineraryFilterDebugProfile =
        other.itineraryFilterDebugProfile;
    if (_$data.containsKey('itineraryFilterDebugProfile') !=
        other._$data.containsKey('itineraryFilterDebugProfile')) {
      return false;
    }
    if (l$itineraryFilterDebugProfile != lOther$itineraryFilterDebugProfile) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$groupSimilarityKeepOne = groupSimilarityKeepOne;
    final l$groupSimilarityKeepThree = groupSimilarityKeepThree;
    final l$groupedOtherThanSameLegsMaxCostMultiplier =
        groupedOtherThanSameLegsMaxCostMultiplier;
    final l$itineraryFilterDebugProfile = itineraryFilterDebugProfile;
    return Object.hashAll([
      _$data.containsKey('groupSimilarityKeepOne')
          ? l$groupSimilarityKeepOne
          : const {},
      _$data.containsKey('groupSimilarityKeepThree')
          ? l$groupSimilarityKeepThree
          : const {},
      _$data.containsKey('groupedOtherThanSameLegsMaxCostMultiplier')
          ? l$groupedOtherThanSameLegsMaxCostMultiplier
          : const {},
      _$data.containsKey('itineraryFilterDebugProfile')
          ? l$itineraryFilterDebugProfile
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlanItineraryFilterInput<TRes> {
  factory CopyWith$Input$PlanItineraryFilterInput(
    Input$PlanItineraryFilterInput instance,
    TRes Function(Input$PlanItineraryFilterInput) then,
  ) = _CopyWithImpl$Input$PlanItineraryFilterInput;

  factory CopyWith$Input$PlanItineraryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanItineraryFilterInput;

  TRes call({
    String? groupSimilarityKeepOne,
    String? groupSimilarityKeepThree,
    double? groupedOtherThanSameLegsMaxCostMultiplier,
    Enum$ItineraryFilterDebugProfile? itineraryFilterDebugProfile,
  });
}

class _CopyWithImpl$Input$PlanItineraryFilterInput<TRes>
    implements CopyWith$Input$PlanItineraryFilterInput<TRes> {
  _CopyWithImpl$Input$PlanItineraryFilterInput(
    this._instance,
    this._then,
  );

  final Input$PlanItineraryFilterInput _instance;

  final TRes Function(Input$PlanItineraryFilterInput) _then;

  static const _undefined = {};

  TRes call({
    Object? groupSimilarityKeepOne = _undefined,
    Object? groupSimilarityKeepThree = _undefined,
    Object? groupedOtherThanSameLegsMaxCostMultiplier = _undefined,
    Object? itineraryFilterDebugProfile = _undefined,
  }) =>
      _then(Input$PlanItineraryFilterInput._({
        ..._instance._$data,
        if (groupSimilarityKeepOne != _undefined)
          'groupSimilarityKeepOne': (groupSimilarityKeepOne as String?),
        if (groupSimilarityKeepThree != _undefined)
          'groupSimilarityKeepThree': (groupSimilarityKeepThree as String?),
        if (groupedOtherThanSameLegsMaxCostMultiplier != _undefined)
          'groupedOtherThanSameLegsMaxCostMultiplier':
              (groupedOtherThanSameLegsMaxCostMultiplier as double?),
        if (itineraryFilterDebugProfile != _undefined)
          'itineraryFilterDebugProfile': (itineraryFilterDebugProfile
              as Enum$ItineraryFilterDebugProfile?),
      }));
}

class _CopyWithStubImpl$Input$PlanItineraryFilterInput<TRes>
    implements CopyWith$Input$PlanItineraryFilterInput<TRes> {
  _CopyWithStubImpl$Input$PlanItineraryFilterInput(this._res);

  TRes _res;

  call({
    String? groupSimilarityKeepOne,
    String? groupSimilarityKeepThree,
    double? groupedOtherThanSameLegsMaxCostMultiplier,
    Enum$ItineraryFilterDebugProfile? itineraryFilterDebugProfile,
  }) =>
      _res;
}

class Input$PlanLabeledLocationInput {
  factory Input$PlanLabeledLocationInput({
    String? label,
    required Input$PlanLocationInput location,
  }) =>
      Input$PlanLabeledLocationInput._({
        if (label != null) r'label': label,
        r'location': location,
      });

  Input$PlanLabeledLocationInput._(this._$data);

  factory Input$PlanLabeledLocationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = (l$label as String?);
    }
    final l$location = data['location'];
    result$data['location'] =
        Input$PlanLocationInput.fromJson((l$location as Map<String, dynamic>));
    return Input$PlanLabeledLocationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get label => (_$data['label'] as String?);
  Input$PlanLocationInput get location =>
      (_$data['location'] as Input$PlanLocationInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label;
    }
    final l$location = location;
    result$data['location'] = l$location.toJson();
    return result$data;
  }

  CopyWith$Input$PlanLabeledLocationInput<Input$PlanLabeledLocationInput>
      get copyWith => CopyWith$Input$PlanLabeledLocationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanLabeledLocationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$label = label;
    final l$location = location;
    return Object.hashAll([
      _$data.containsKey('label') ? l$label : const {},
      l$location,
    ]);
  }
}

abstract class CopyWith$Input$PlanLabeledLocationInput<TRes> {
  factory CopyWith$Input$PlanLabeledLocationInput(
    Input$PlanLabeledLocationInput instance,
    TRes Function(Input$PlanLabeledLocationInput) then,
  ) = _CopyWithImpl$Input$PlanLabeledLocationInput;

  factory CopyWith$Input$PlanLabeledLocationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanLabeledLocationInput;

  TRes call({
    String? label,
    Input$PlanLocationInput? location,
  });
  CopyWith$Input$PlanLocationInput<TRes> get location;
}

class _CopyWithImpl$Input$PlanLabeledLocationInput<TRes>
    implements CopyWith$Input$PlanLabeledLocationInput<TRes> {
  _CopyWithImpl$Input$PlanLabeledLocationInput(
    this._instance,
    this._then,
  );

  final Input$PlanLabeledLocationInput _instance;

  final TRes Function(Input$PlanLabeledLocationInput) _then;

  static const _undefined = {};

  TRes call({
    Object? label = _undefined,
    Object? location = _undefined,
  }) =>
      _then(Input$PlanLabeledLocationInput._({
        ..._instance._$data,
        if (label != _undefined) 'label': (label as String?),
        if (location != _undefined && location != null)
          'location': (location as Input$PlanLocationInput),
      }));
  CopyWith$Input$PlanLocationInput<TRes> get location {
    final local$location = _instance.location;
    return CopyWith$Input$PlanLocationInput(
        local$location, (e) => call(location: e));
  }
}

class _CopyWithStubImpl$Input$PlanLabeledLocationInput<TRes>
    implements CopyWith$Input$PlanLabeledLocationInput<TRes> {
  _CopyWithStubImpl$Input$PlanLabeledLocationInput(this._res);

  TRes _res;

  call({
    String? label,
    Input$PlanLocationInput? location,
  }) =>
      _res;
  CopyWith$Input$PlanLocationInput<TRes> get location =>
      CopyWith$Input$PlanLocationInput.stub(_res);
}

class Input$PlanLocationInput {
  factory Input$PlanLocationInput({
    Input$PlanCoordinateInput? coordinate,
    Input$PlanStopLocationInput? stopLocation,
  }) =>
      Input$PlanLocationInput._({
        if (coordinate != null) r'coordinate': coordinate,
        if (stopLocation != null) r'stopLocation': stopLocation,
      });

  Input$PlanLocationInput._(this._$data);

  factory Input$PlanLocationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinate')) {
      final l$coordinate = data['coordinate'];
      result$data['coordinate'] = l$coordinate == null
          ? null
          : Input$PlanCoordinateInput.fromJson(
              (l$coordinate as Map<String, dynamic>));
    }
    if (data.containsKey('stopLocation')) {
      final l$stopLocation = data['stopLocation'];
      result$data['stopLocation'] = l$stopLocation == null
          ? null
          : Input$PlanStopLocationInput.fromJson(
              (l$stopLocation as Map<String, dynamic>));
    }
    return Input$PlanLocationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PlanCoordinateInput? get coordinate =>
      (_$data['coordinate'] as Input$PlanCoordinateInput?);
  Input$PlanStopLocationInput? get stopLocation =>
      (_$data['stopLocation'] as Input$PlanStopLocationInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinate')) {
      final l$coordinate = coordinate;
      result$data['coordinate'] = l$coordinate?.toJson();
    }
    if (_$data.containsKey('stopLocation')) {
      final l$stopLocation = stopLocation;
      result$data['stopLocation'] = l$stopLocation?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PlanLocationInput<Input$PlanLocationInput> get copyWith =>
      CopyWith$Input$PlanLocationInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanLocationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinate = coordinate;
    final lOther$coordinate = other.coordinate;
    if (_$data.containsKey('coordinate') !=
        other._$data.containsKey('coordinate')) {
      return false;
    }
    if (l$coordinate != lOther$coordinate) {
      return false;
    }
    final l$stopLocation = stopLocation;
    final lOther$stopLocation = other.stopLocation;
    if (_$data.containsKey('stopLocation') !=
        other._$data.containsKey('stopLocation')) {
      return false;
    }
    if (l$stopLocation != lOther$stopLocation) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinate = coordinate;
    final l$stopLocation = stopLocation;
    return Object.hashAll([
      _$data.containsKey('coordinate') ? l$coordinate : const {},
      _$data.containsKey('stopLocation') ? l$stopLocation : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlanLocationInput<TRes> {
  factory CopyWith$Input$PlanLocationInput(
    Input$PlanLocationInput instance,
    TRes Function(Input$PlanLocationInput) then,
  ) = _CopyWithImpl$Input$PlanLocationInput;

  factory CopyWith$Input$PlanLocationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanLocationInput;

  TRes call({
    Input$PlanCoordinateInput? coordinate,
    Input$PlanStopLocationInput? stopLocation,
  });
  CopyWith$Input$PlanCoordinateInput<TRes> get coordinate;
  CopyWith$Input$PlanStopLocationInput<TRes> get stopLocation;
}

class _CopyWithImpl$Input$PlanLocationInput<TRes>
    implements CopyWith$Input$PlanLocationInput<TRes> {
  _CopyWithImpl$Input$PlanLocationInput(
    this._instance,
    this._then,
  );

  final Input$PlanLocationInput _instance;

  final TRes Function(Input$PlanLocationInput) _then;

  static const _undefined = {};

  TRes call({
    Object? coordinate = _undefined,
    Object? stopLocation = _undefined,
  }) =>
      _then(Input$PlanLocationInput._({
        ..._instance._$data,
        if (coordinate != _undefined)
          'coordinate': (coordinate as Input$PlanCoordinateInput?),
        if (stopLocation != _undefined)
          'stopLocation': (stopLocation as Input$PlanStopLocationInput?),
      }));
  CopyWith$Input$PlanCoordinateInput<TRes> get coordinate {
    final local$coordinate = _instance.coordinate;
    return local$coordinate == null
        ? CopyWith$Input$PlanCoordinateInput.stub(_then(_instance))
        : CopyWith$Input$PlanCoordinateInput(
            local$coordinate, (e) => call(coordinate: e));
  }

  CopyWith$Input$PlanStopLocationInput<TRes> get stopLocation {
    final local$stopLocation = _instance.stopLocation;
    return local$stopLocation == null
        ? CopyWith$Input$PlanStopLocationInput.stub(_then(_instance))
        : CopyWith$Input$PlanStopLocationInput(
            local$stopLocation, (e) => call(stopLocation: e));
  }
}

class _CopyWithStubImpl$Input$PlanLocationInput<TRes>
    implements CopyWith$Input$PlanLocationInput<TRes> {
  _CopyWithStubImpl$Input$PlanLocationInput(this._res);

  TRes _res;

  call({
    Input$PlanCoordinateInput? coordinate,
    Input$PlanStopLocationInput? stopLocation,
  }) =>
      _res;
  CopyWith$Input$PlanCoordinateInput<TRes> get coordinate =>
      CopyWith$Input$PlanCoordinateInput.stub(_res);
  CopyWith$Input$PlanStopLocationInput<TRes> get stopLocation =>
      CopyWith$Input$PlanStopLocationInput.stub(_res);
}

class Input$PlanModesInput {
  factory Input$PlanModesInput({
    List<Enum$PlanDirectMode>? direct,
    bool? directOnly,
    Input$PlanTransitModesInput? transit,
    bool? transitOnly,
  }) =>
      Input$PlanModesInput._({
        if (direct != null) r'direct': direct,
        if (directOnly != null) r'directOnly': directOnly,
        if (transit != null) r'transit': transit,
        if (transitOnly != null) r'transitOnly': transitOnly,
      });

  Input$PlanModesInput._(this._$data);

  factory Input$PlanModesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('direct')) {
      final l$direct = data['direct'];
      result$data['direct'] = (l$direct as List<dynamic>?)
          ?.map((e) => fromJson$Enum$PlanDirectMode((e as String)))
          .toList();
    }
    if (data.containsKey('directOnly')) {
      final l$directOnly = data['directOnly'];
      result$data['directOnly'] = (l$directOnly as bool?);
    }
    if (data.containsKey('transit')) {
      final l$transit = data['transit'];
      result$data['transit'] = l$transit == null
          ? null
          : Input$PlanTransitModesInput.fromJson(
              (l$transit as Map<String, dynamic>));
    }
    if (data.containsKey('transitOnly')) {
      final l$transitOnly = data['transitOnly'];
      result$data['transitOnly'] = (l$transitOnly as bool?);
    }
    return Input$PlanModesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum$PlanDirectMode>? get direct =>
      (_$data['direct'] as List<Enum$PlanDirectMode>?);
  bool? get directOnly => (_$data['directOnly'] as bool?);
  Input$PlanTransitModesInput? get transit =>
      (_$data['transit'] as Input$PlanTransitModesInput?);
  bool? get transitOnly => (_$data['transitOnly'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('direct')) {
      final l$direct = direct;
      result$data['direct'] =
          l$direct?.map((e) => toJson$Enum$PlanDirectMode(e)).toList();
    }
    if (_$data.containsKey('directOnly')) {
      final l$directOnly = directOnly;
      result$data['directOnly'] = l$directOnly;
    }
    if (_$data.containsKey('transit')) {
      final l$transit = transit;
      result$data['transit'] = l$transit?.toJson();
    }
    if (_$data.containsKey('transitOnly')) {
      final l$transitOnly = transitOnly;
      result$data['transitOnly'] = l$transitOnly;
    }
    return result$data;
  }

  CopyWith$Input$PlanModesInput<Input$PlanModesInput> get copyWith =>
      CopyWith$Input$PlanModesInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanModesInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$direct = direct;
    final lOther$direct = other.direct;
    if (_$data.containsKey('direct') != other._$data.containsKey('direct')) {
      return false;
    }
    if (l$direct != null && lOther$direct != null) {
      if (l$direct.length != lOther$direct.length) {
        return false;
      }
      for (int i = 0; i < l$direct.length; i++) {
        final l$direct$entry = l$direct[i];
        final lOther$direct$entry = lOther$direct[i];
        if (l$direct$entry != lOther$direct$entry) {
          return false;
        }
      }
    } else if (l$direct != lOther$direct) {
      return false;
    }
    final l$directOnly = directOnly;
    final lOther$directOnly = other.directOnly;
    if (_$data.containsKey('directOnly') !=
        other._$data.containsKey('directOnly')) {
      return false;
    }
    if (l$directOnly != lOther$directOnly) {
      return false;
    }
    final l$transit = transit;
    final lOther$transit = other.transit;
    if (_$data.containsKey('transit') != other._$data.containsKey('transit')) {
      return false;
    }
    if (l$transit != lOther$transit) {
      return false;
    }
    final l$transitOnly = transitOnly;
    final lOther$transitOnly = other.transitOnly;
    if (_$data.containsKey('transitOnly') !=
        other._$data.containsKey('transitOnly')) {
      return false;
    }
    if (l$transitOnly != lOther$transitOnly) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$direct = direct;
    final l$directOnly = directOnly;
    final l$transit = transit;
    final l$transitOnly = transitOnly;
    return Object.hashAll([
      _$data.containsKey('direct')
          ? l$direct == null
              ? null
              : Object.hashAll(l$direct.map((v) => v))
          : const {},
      _$data.containsKey('directOnly') ? l$directOnly : const {},
      _$data.containsKey('transit') ? l$transit : const {},
      _$data.containsKey('transitOnly') ? l$transitOnly : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlanModesInput<TRes> {
  factory CopyWith$Input$PlanModesInput(
    Input$PlanModesInput instance,
    TRes Function(Input$PlanModesInput) then,
  ) = _CopyWithImpl$Input$PlanModesInput;

  factory CopyWith$Input$PlanModesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanModesInput;

  TRes call({
    List<Enum$PlanDirectMode>? direct,
    bool? directOnly,
    Input$PlanTransitModesInput? transit,
    bool? transitOnly,
  });
  CopyWith$Input$PlanTransitModesInput<TRes> get transit;
}

class _CopyWithImpl$Input$PlanModesInput<TRes>
    implements CopyWith$Input$PlanModesInput<TRes> {
  _CopyWithImpl$Input$PlanModesInput(
    this._instance,
    this._then,
  );

  final Input$PlanModesInput _instance;

  final TRes Function(Input$PlanModesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? direct = _undefined,
    Object? directOnly = _undefined,
    Object? transit = _undefined,
    Object? transitOnly = _undefined,
  }) =>
      _then(Input$PlanModesInput._({
        ..._instance._$data,
        if (direct != _undefined)
          'direct': (direct as List<Enum$PlanDirectMode>?),
        if (directOnly != _undefined) 'directOnly': (directOnly as bool?),
        if (transit != _undefined)
          'transit': (transit as Input$PlanTransitModesInput?),
        if (transitOnly != _undefined) 'transitOnly': (transitOnly as bool?),
      }));
  CopyWith$Input$PlanTransitModesInput<TRes> get transit {
    final local$transit = _instance.transit;
    return local$transit == null
        ? CopyWith$Input$PlanTransitModesInput.stub(_then(_instance))
        : CopyWith$Input$PlanTransitModesInput(
            local$transit, (e) => call(transit: e));
  }
}

class _CopyWithStubImpl$Input$PlanModesInput<TRes>
    implements CopyWith$Input$PlanModesInput<TRes> {
  _CopyWithStubImpl$Input$PlanModesInput(this._res);

  TRes _res;

  call({
    List<Enum$PlanDirectMode>? direct,
    bool? directOnly,
    Input$PlanTransitModesInput? transit,
    bool? transitOnly,
  }) =>
      _res;
  CopyWith$Input$PlanTransitModesInput<TRes> get transit =>
      CopyWith$Input$PlanTransitModesInput.stub(_res);
}

class Input$PlanPassThroughViaLocationInput {
  factory Input$PlanPassThroughViaLocationInput({
    String? label,
    required List<String> stopLocationIds,
  }) =>
      Input$PlanPassThroughViaLocationInput._({
        if (label != null) r'label': label,
        r'stopLocationIds': stopLocationIds,
      });

  Input$PlanPassThroughViaLocationInput._(this._$data);

  factory Input$PlanPassThroughViaLocationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = (l$label as String?);
    }
    final l$stopLocationIds = data['stopLocationIds'];
    result$data['stopLocationIds'] =
        (l$stopLocationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$PlanPassThroughViaLocationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get label => (_$data['label'] as String?);
  List<String> get stopLocationIds =>
      (_$data['stopLocationIds'] as List<String>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label;
    }
    final l$stopLocationIds = stopLocationIds;
    result$data['stopLocationIds'] = l$stopLocationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$PlanPassThroughViaLocationInput<
          Input$PlanPassThroughViaLocationInput>
      get copyWith => CopyWith$Input$PlanPassThroughViaLocationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanPassThroughViaLocationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$stopLocationIds = stopLocationIds;
    final lOther$stopLocationIds = other.stopLocationIds;
    if (l$stopLocationIds.length != lOther$stopLocationIds.length) {
      return false;
    }
    for (int i = 0; i < l$stopLocationIds.length; i++) {
      final l$stopLocationIds$entry = l$stopLocationIds[i];
      final lOther$stopLocationIds$entry = lOther$stopLocationIds[i];
      if (l$stopLocationIds$entry != lOther$stopLocationIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$label = label;
    final l$stopLocationIds = stopLocationIds;
    return Object.hashAll([
      _$data.containsKey('label') ? l$label : const {},
      Object.hashAll(l$stopLocationIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$PlanPassThroughViaLocationInput<TRes> {
  factory CopyWith$Input$PlanPassThroughViaLocationInput(
    Input$PlanPassThroughViaLocationInput instance,
    TRes Function(Input$PlanPassThroughViaLocationInput) then,
  ) = _CopyWithImpl$Input$PlanPassThroughViaLocationInput;

  factory CopyWith$Input$PlanPassThroughViaLocationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanPassThroughViaLocationInput;

  TRes call({
    String? label,
    List<String>? stopLocationIds,
  });
}

class _CopyWithImpl$Input$PlanPassThroughViaLocationInput<TRes>
    implements CopyWith$Input$PlanPassThroughViaLocationInput<TRes> {
  _CopyWithImpl$Input$PlanPassThroughViaLocationInput(
    this._instance,
    this._then,
  );

  final Input$PlanPassThroughViaLocationInput _instance;

  final TRes Function(Input$PlanPassThroughViaLocationInput) _then;

  static const _undefined = {};

  TRes call({
    Object? label = _undefined,
    Object? stopLocationIds = _undefined,
  }) =>
      _then(Input$PlanPassThroughViaLocationInput._({
        ..._instance._$data,
        if (label != _undefined) 'label': (label as String?),
        if (stopLocationIds != _undefined && stopLocationIds != null)
          'stopLocationIds': (stopLocationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$PlanPassThroughViaLocationInput<TRes>
    implements CopyWith$Input$PlanPassThroughViaLocationInput<TRes> {
  _CopyWithStubImpl$Input$PlanPassThroughViaLocationInput(this._res);

  TRes _res;

  call({
    String? label,
    List<String>? stopLocationIds,
  }) =>
      _res;
}

class Input$PlanPreferencesInput {
  factory Input$PlanPreferencesInput({
    Input$AccessibilityPreferencesInput? accessibility,
    Input$PlanStreetPreferencesInput? street,
    Input$TransitPreferencesInput? transit,
  }) =>
      Input$PlanPreferencesInput._({
        if (accessibility != null) r'accessibility': accessibility,
        if (street != null) r'street': street,
        if (transit != null) r'transit': transit,
      });

  Input$PlanPreferencesInput._(this._$data);

  factory Input$PlanPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('accessibility')) {
      final l$accessibility = data['accessibility'];
      result$data['accessibility'] = l$accessibility == null
          ? null
          : Input$AccessibilityPreferencesInput.fromJson(
              (l$accessibility as Map<String, dynamic>));
    }
    if (data.containsKey('street')) {
      final l$street = data['street'];
      result$data['street'] = l$street == null
          ? null
          : Input$PlanStreetPreferencesInput.fromJson(
              (l$street as Map<String, dynamic>));
    }
    if (data.containsKey('transit')) {
      final l$transit = data['transit'];
      result$data['transit'] = l$transit == null
          ? null
          : Input$TransitPreferencesInput.fromJson(
              (l$transit as Map<String, dynamic>));
    }
    return Input$PlanPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AccessibilityPreferencesInput? get accessibility =>
      (_$data['accessibility'] as Input$AccessibilityPreferencesInput?);
  Input$PlanStreetPreferencesInput? get street =>
      (_$data['street'] as Input$PlanStreetPreferencesInput?);
  Input$TransitPreferencesInput? get transit =>
      (_$data['transit'] as Input$TransitPreferencesInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('accessibility')) {
      final l$accessibility = accessibility;
      result$data['accessibility'] = l$accessibility?.toJson();
    }
    if (_$data.containsKey('street')) {
      final l$street = street;
      result$data['street'] = l$street?.toJson();
    }
    if (_$data.containsKey('transit')) {
      final l$transit = transit;
      result$data['transit'] = l$transit?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PlanPreferencesInput<Input$PlanPreferencesInput>
      get copyWith => CopyWith$Input$PlanPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessibility = accessibility;
    final lOther$accessibility = other.accessibility;
    if (_$data.containsKey('accessibility') !=
        other._$data.containsKey('accessibility')) {
      return false;
    }
    if (l$accessibility != lOther$accessibility) {
      return false;
    }
    final l$street = street;
    final lOther$street = other.street;
    if (_$data.containsKey('street') != other._$data.containsKey('street')) {
      return false;
    }
    if (l$street != lOther$street) {
      return false;
    }
    final l$transit = transit;
    final lOther$transit = other.transit;
    if (_$data.containsKey('transit') != other._$data.containsKey('transit')) {
      return false;
    }
    if (l$transit != lOther$transit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessibility = accessibility;
    final l$street = street;
    final l$transit = transit;
    return Object.hashAll([
      _$data.containsKey('accessibility') ? l$accessibility : const {},
      _$data.containsKey('street') ? l$street : const {},
      _$data.containsKey('transit') ? l$transit : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlanPreferencesInput<TRes> {
  factory CopyWith$Input$PlanPreferencesInput(
    Input$PlanPreferencesInput instance,
    TRes Function(Input$PlanPreferencesInput) then,
  ) = _CopyWithImpl$Input$PlanPreferencesInput;

  factory CopyWith$Input$PlanPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanPreferencesInput;

  TRes call({
    Input$AccessibilityPreferencesInput? accessibility,
    Input$PlanStreetPreferencesInput? street,
    Input$TransitPreferencesInput? transit,
  });
  CopyWith$Input$AccessibilityPreferencesInput<TRes> get accessibility;
  CopyWith$Input$PlanStreetPreferencesInput<TRes> get street;
  CopyWith$Input$TransitPreferencesInput<TRes> get transit;
}

class _CopyWithImpl$Input$PlanPreferencesInput<TRes>
    implements CopyWith$Input$PlanPreferencesInput<TRes> {
  _CopyWithImpl$Input$PlanPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$PlanPreferencesInput _instance;

  final TRes Function(Input$PlanPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? accessibility = _undefined,
    Object? street = _undefined,
    Object? transit = _undefined,
  }) =>
      _then(Input$PlanPreferencesInput._({
        ..._instance._$data,
        if (accessibility != _undefined)
          'accessibility':
              (accessibility as Input$AccessibilityPreferencesInput?),
        if (street != _undefined)
          'street': (street as Input$PlanStreetPreferencesInput?),
        if (transit != _undefined)
          'transit': (transit as Input$TransitPreferencesInput?),
      }));
  CopyWith$Input$AccessibilityPreferencesInput<TRes> get accessibility {
    final local$accessibility = _instance.accessibility;
    return local$accessibility == null
        ? CopyWith$Input$AccessibilityPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$AccessibilityPreferencesInput(
            local$accessibility, (e) => call(accessibility: e));
  }

  CopyWith$Input$PlanStreetPreferencesInput<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith$Input$PlanStreetPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$PlanStreetPreferencesInput(
            local$street, (e) => call(street: e));
  }

  CopyWith$Input$TransitPreferencesInput<TRes> get transit {
    final local$transit = _instance.transit;
    return local$transit == null
        ? CopyWith$Input$TransitPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$TransitPreferencesInput(
            local$transit, (e) => call(transit: e));
  }
}

class _CopyWithStubImpl$Input$PlanPreferencesInput<TRes>
    implements CopyWith$Input$PlanPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$PlanPreferencesInput(this._res);

  TRes _res;

  call({
    Input$AccessibilityPreferencesInput? accessibility,
    Input$PlanStreetPreferencesInput? street,
    Input$TransitPreferencesInput? transit,
  }) =>
      _res;
  CopyWith$Input$AccessibilityPreferencesInput<TRes> get accessibility =>
      CopyWith$Input$AccessibilityPreferencesInput.stub(_res);
  CopyWith$Input$PlanStreetPreferencesInput<TRes> get street =>
      CopyWith$Input$PlanStreetPreferencesInput.stub(_res);
  CopyWith$Input$TransitPreferencesInput<TRes> get transit =>
      CopyWith$Input$TransitPreferencesInput.stub(_res);
}

class Input$PlanStopLocationInput {
  factory Input$PlanStopLocationInput({required String stopLocationId}) =>
      Input$PlanStopLocationInput._({
        r'stopLocationId': stopLocationId,
      });

  Input$PlanStopLocationInput._(this._$data);

  factory Input$PlanStopLocationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$stopLocationId = data['stopLocationId'];
    result$data['stopLocationId'] = (l$stopLocationId as String);
    return Input$PlanStopLocationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get stopLocationId => (_$data['stopLocationId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$stopLocationId = stopLocationId;
    result$data['stopLocationId'] = l$stopLocationId;
    return result$data;
  }

  CopyWith$Input$PlanStopLocationInput<Input$PlanStopLocationInput>
      get copyWith => CopyWith$Input$PlanStopLocationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanStopLocationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stopLocationId = stopLocationId;
    final lOther$stopLocationId = other.stopLocationId;
    if (l$stopLocationId != lOther$stopLocationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$stopLocationId = stopLocationId;
    return Object.hashAll([l$stopLocationId]);
  }
}

abstract class CopyWith$Input$PlanStopLocationInput<TRes> {
  factory CopyWith$Input$PlanStopLocationInput(
    Input$PlanStopLocationInput instance,
    TRes Function(Input$PlanStopLocationInput) then,
  ) = _CopyWithImpl$Input$PlanStopLocationInput;

  factory CopyWith$Input$PlanStopLocationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanStopLocationInput;

  TRes call({String? stopLocationId});
}

class _CopyWithImpl$Input$PlanStopLocationInput<TRes>
    implements CopyWith$Input$PlanStopLocationInput<TRes> {
  _CopyWithImpl$Input$PlanStopLocationInput(
    this._instance,
    this._then,
  );

  final Input$PlanStopLocationInput _instance;

  final TRes Function(Input$PlanStopLocationInput) _then;

  static const _undefined = {};

  TRes call({Object? stopLocationId = _undefined}) =>
      _then(Input$PlanStopLocationInput._({
        ..._instance._$data,
        if (stopLocationId != _undefined && stopLocationId != null)
          'stopLocationId': (stopLocationId as String),
      }));
}

class _CopyWithStubImpl$Input$PlanStopLocationInput<TRes>
    implements CopyWith$Input$PlanStopLocationInput<TRes> {
  _CopyWithStubImpl$Input$PlanStopLocationInput(this._res);

  TRes _res;

  call({String? stopLocationId}) => _res;
}

class Input$PlanStreetPreferencesInput {
  factory Input$PlanStreetPreferencesInput({
    Input$BicyclePreferencesInput? bicycle,
    Input$CarPreferencesInput? car,
    Input$ScooterPreferencesInput? scooter,
    Input$WalkPreferencesInput? walk,
  }) =>
      Input$PlanStreetPreferencesInput._({
        if (bicycle != null) r'bicycle': bicycle,
        if (car != null) r'car': car,
        if (scooter != null) r'scooter': scooter,
        if (walk != null) r'walk': walk,
      });

  Input$PlanStreetPreferencesInput._(this._$data);

  factory Input$PlanStreetPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bicycle')) {
      final l$bicycle = data['bicycle'];
      result$data['bicycle'] = l$bicycle == null
          ? null
          : Input$BicyclePreferencesInput.fromJson(
              (l$bicycle as Map<String, dynamic>));
    }
    if (data.containsKey('car')) {
      final l$car = data['car'];
      result$data['car'] = l$car == null
          ? null
          : Input$CarPreferencesInput.fromJson((l$car as Map<String, dynamic>));
    }
    if (data.containsKey('scooter')) {
      final l$scooter = data['scooter'];
      result$data['scooter'] = l$scooter == null
          ? null
          : Input$ScooterPreferencesInput.fromJson(
              (l$scooter as Map<String, dynamic>));
    }
    if (data.containsKey('walk')) {
      final l$walk = data['walk'];
      result$data['walk'] = l$walk == null
          ? null
          : Input$WalkPreferencesInput.fromJson(
              (l$walk as Map<String, dynamic>));
    }
    return Input$PlanStreetPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BicyclePreferencesInput? get bicycle =>
      (_$data['bicycle'] as Input$BicyclePreferencesInput?);
  Input$CarPreferencesInput? get car =>
      (_$data['car'] as Input$CarPreferencesInput?);
  Input$ScooterPreferencesInput? get scooter =>
      (_$data['scooter'] as Input$ScooterPreferencesInput?);
  Input$WalkPreferencesInput? get walk =>
      (_$data['walk'] as Input$WalkPreferencesInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bicycle')) {
      final l$bicycle = bicycle;
      result$data['bicycle'] = l$bicycle?.toJson();
    }
    if (_$data.containsKey('car')) {
      final l$car = car;
      result$data['car'] = l$car?.toJson();
    }
    if (_$data.containsKey('scooter')) {
      final l$scooter = scooter;
      result$data['scooter'] = l$scooter?.toJson();
    }
    if (_$data.containsKey('walk')) {
      final l$walk = walk;
      result$data['walk'] = l$walk?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PlanStreetPreferencesInput<Input$PlanStreetPreferencesInput>
      get copyWith => CopyWith$Input$PlanStreetPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanStreetPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bicycle = bicycle;
    final lOther$bicycle = other.bicycle;
    if (_$data.containsKey('bicycle') != other._$data.containsKey('bicycle')) {
      return false;
    }
    if (l$bicycle != lOther$bicycle) {
      return false;
    }
    final l$car = car;
    final lOther$car = other.car;
    if (_$data.containsKey('car') != other._$data.containsKey('car')) {
      return false;
    }
    if (l$car != lOther$car) {
      return false;
    }
    final l$scooter = scooter;
    final lOther$scooter = other.scooter;
    if (_$data.containsKey('scooter') != other._$data.containsKey('scooter')) {
      return false;
    }
    if (l$scooter != lOther$scooter) {
      return false;
    }
    final l$walk = walk;
    final lOther$walk = other.walk;
    if (_$data.containsKey('walk') != other._$data.containsKey('walk')) {
      return false;
    }
    if (l$walk != lOther$walk) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bicycle = bicycle;
    final l$car = car;
    final l$scooter = scooter;
    final l$walk = walk;
    return Object.hashAll([
      _$data.containsKey('bicycle') ? l$bicycle : const {},
      _$data.containsKey('car') ? l$car : const {},
      _$data.containsKey('scooter') ? l$scooter : const {},
      _$data.containsKey('walk') ? l$walk : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlanStreetPreferencesInput<TRes> {
  factory CopyWith$Input$PlanStreetPreferencesInput(
    Input$PlanStreetPreferencesInput instance,
    TRes Function(Input$PlanStreetPreferencesInput) then,
  ) = _CopyWithImpl$Input$PlanStreetPreferencesInput;

  factory CopyWith$Input$PlanStreetPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanStreetPreferencesInput;

  TRes call({
    Input$BicyclePreferencesInput? bicycle,
    Input$CarPreferencesInput? car,
    Input$ScooterPreferencesInput? scooter,
    Input$WalkPreferencesInput? walk,
  });
  CopyWith$Input$BicyclePreferencesInput<TRes> get bicycle;
  CopyWith$Input$CarPreferencesInput<TRes> get car;
  CopyWith$Input$ScooterPreferencesInput<TRes> get scooter;
  CopyWith$Input$WalkPreferencesInput<TRes> get walk;
}

class _CopyWithImpl$Input$PlanStreetPreferencesInput<TRes>
    implements CopyWith$Input$PlanStreetPreferencesInput<TRes> {
  _CopyWithImpl$Input$PlanStreetPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$PlanStreetPreferencesInput _instance;

  final TRes Function(Input$PlanStreetPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? bicycle = _undefined,
    Object? car = _undefined,
    Object? scooter = _undefined,
    Object? walk = _undefined,
  }) =>
      _then(Input$PlanStreetPreferencesInput._({
        ..._instance._$data,
        if (bicycle != _undefined)
          'bicycle': (bicycle as Input$BicyclePreferencesInput?),
        if (car != _undefined) 'car': (car as Input$CarPreferencesInput?),
        if (scooter != _undefined)
          'scooter': (scooter as Input$ScooterPreferencesInput?),
        if (walk != _undefined) 'walk': (walk as Input$WalkPreferencesInput?),
      }));
  CopyWith$Input$BicyclePreferencesInput<TRes> get bicycle {
    final local$bicycle = _instance.bicycle;
    return local$bicycle == null
        ? CopyWith$Input$BicyclePreferencesInput.stub(_then(_instance))
        : CopyWith$Input$BicyclePreferencesInput(
            local$bicycle, (e) => call(bicycle: e));
  }

  CopyWith$Input$CarPreferencesInput<TRes> get car {
    final local$car = _instance.car;
    return local$car == null
        ? CopyWith$Input$CarPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$CarPreferencesInput(local$car, (e) => call(car: e));
  }

  CopyWith$Input$ScooterPreferencesInput<TRes> get scooter {
    final local$scooter = _instance.scooter;
    return local$scooter == null
        ? CopyWith$Input$ScooterPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$ScooterPreferencesInput(
            local$scooter, (e) => call(scooter: e));
  }

  CopyWith$Input$WalkPreferencesInput<TRes> get walk {
    final local$walk = _instance.walk;
    return local$walk == null
        ? CopyWith$Input$WalkPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$WalkPreferencesInput(local$walk, (e) => call(walk: e));
  }
}

class _CopyWithStubImpl$Input$PlanStreetPreferencesInput<TRes>
    implements CopyWith$Input$PlanStreetPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$PlanStreetPreferencesInput(this._res);

  TRes _res;

  call({
    Input$BicyclePreferencesInput? bicycle,
    Input$CarPreferencesInput? car,
    Input$ScooterPreferencesInput? scooter,
    Input$WalkPreferencesInput? walk,
  }) =>
      _res;
  CopyWith$Input$BicyclePreferencesInput<TRes> get bicycle =>
      CopyWith$Input$BicyclePreferencesInput.stub(_res);
  CopyWith$Input$CarPreferencesInput<TRes> get car =>
      CopyWith$Input$CarPreferencesInput.stub(_res);
  CopyWith$Input$ScooterPreferencesInput<TRes> get scooter =>
      CopyWith$Input$ScooterPreferencesInput.stub(_res);
  CopyWith$Input$WalkPreferencesInput<TRes> get walk =>
      CopyWith$Input$WalkPreferencesInput.stub(_res);
}

class Input$PlanTransitModePreferenceInput {
  factory Input$PlanTransitModePreferenceInput({
    Input$TransitModePreferenceCostInput? cost,
    required Enum$TransitMode mode,
  }) =>
      Input$PlanTransitModePreferenceInput._({
        if (cost != null) r'cost': cost,
        r'mode': mode,
      });

  Input$PlanTransitModePreferenceInput._(this._$data);

  factory Input$PlanTransitModePreferenceInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cost')) {
      final l$cost = data['cost'];
      result$data['cost'] = l$cost == null
          ? null
          : Input$TransitModePreferenceCostInput.fromJson(
              (l$cost as Map<String, dynamic>));
    }
    final l$mode = data['mode'];
    result$data['mode'] = fromJson$Enum$TransitMode((l$mode as String));
    return Input$PlanTransitModePreferenceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransitModePreferenceCostInput? get cost =>
      (_$data['cost'] as Input$TransitModePreferenceCostInput?);
  Enum$TransitMode get mode => (_$data['mode'] as Enum$TransitMode);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cost')) {
      final l$cost = cost;
      result$data['cost'] = l$cost?.toJson();
    }
    final l$mode = mode;
    result$data['mode'] = toJson$Enum$TransitMode(l$mode);
    return result$data;
  }

  CopyWith$Input$PlanTransitModePreferenceInput<
          Input$PlanTransitModePreferenceInput>
      get copyWith => CopyWith$Input$PlanTransitModePreferenceInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanTransitModePreferenceInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cost = cost;
    final lOther$cost = other.cost;
    if (_$data.containsKey('cost') != other._$data.containsKey('cost')) {
      return false;
    }
    if (l$cost != lOther$cost) {
      return false;
    }
    final l$mode = mode;
    final lOther$mode = other.mode;
    if (l$mode != lOther$mode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cost = cost;
    final l$mode = mode;
    return Object.hashAll([
      _$data.containsKey('cost') ? l$cost : const {},
      l$mode,
    ]);
  }
}

abstract class CopyWith$Input$PlanTransitModePreferenceInput<TRes> {
  factory CopyWith$Input$PlanTransitModePreferenceInput(
    Input$PlanTransitModePreferenceInput instance,
    TRes Function(Input$PlanTransitModePreferenceInput) then,
  ) = _CopyWithImpl$Input$PlanTransitModePreferenceInput;

  factory CopyWith$Input$PlanTransitModePreferenceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanTransitModePreferenceInput;

  TRes call({
    Input$TransitModePreferenceCostInput? cost,
    Enum$TransitMode? mode,
  });
  CopyWith$Input$TransitModePreferenceCostInput<TRes> get cost;
}

class _CopyWithImpl$Input$PlanTransitModePreferenceInput<TRes>
    implements CopyWith$Input$PlanTransitModePreferenceInput<TRes> {
  _CopyWithImpl$Input$PlanTransitModePreferenceInput(
    this._instance,
    this._then,
  );

  final Input$PlanTransitModePreferenceInput _instance;

  final TRes Function(Input$PlanTransitModePreferenceInput) _then;

  static const _undefined = {};

  TRes call({
    Object? cost = _undefined,
    Object? mode = _undefined,
  }) =>
      _then(Input$PlanTransitModePreferenceInput._({
        ..._instance._$data,
        if (cost != _undefined)
          'cost': (cost as Input$TransitModePreferenceCostInput?),
        if (mode != _undefined && mode != null)
          'mode': (mode as Enum$TransitMode),
      }));
  CopyWith$Input$TransitModePreferenceCostInput<TRes> get cost {
    final local$cost = _instance.cost;
    return local$cost == null
        ? CopyWith$Input$TransitModePreferenceCostInput.stub(_then(_instance))
        : CopyWith$Input$TransitModePreferenceCostInput(
            local$cost, (e) => call(cost: e));
  }
}

class _CopyWithStubImpl$Input$PlanTransitModePreferenceInput<TRes>
    implements CopyWith$Input$PlanTransitModePreferenceInput<TRes> {
  _CopyWithStubImpl$Input$PlanTransitModePreferenceInput(this._res);

  TRes _res;

  call({
    Input$TransitModePreferenceCostInput? cost,
    Enum$TransitMode? mode,
  }) =>
      _res;
  CopyWith$Input$TransitModePreferenceCostInput<TRes> get cost =>
      CopyWith$Input$TransitModePreferenceCostInput.stub(_res);
}

class Input$PlanTransitModesInput {
  factory Input$PlanTransitModesInput({
    List<Enum$PlanAccessMode>? access,
    List<Enum$PlanEgressMode>? egress,
    List<Enum$PlanTransferMode>? transfer,
    List<Input$PlanTransitModePreferenceInput>? transit,
  }) =>
      Input$PlanTransitModesInput._({
        if (access != null) r'access': access,
        if (egress != null) r'egress': egress,
        if (transfer != null) r'transfer': transfer,
        if (transit != null) r'transit': transit,
      });

  Input$PlanTransitModesInput._(this._$data);

  factory Input$PlanTransitModesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('access')) {
      final l$access = data['access'];
      result$data['access'] = (l$access as List<dynamic>?)
          ?.map((e) => fromJson$Enum$PlanAccessMode((e as String)))
          .toList();
    }
    if (data.containsKey('egress')) {
      final l$egress = data['egress'];
      result$data['egress'] = (l$egress as List<dynamic>?)
          ?.map((e) => fromJson$Enum$PlanEgressMode((e as String)))
          .toList();
    }
    if (data.containsKey('transfer')) {
      final l$transfer = data['transfer'];
      result$data['transfer'] = (l$transfer as List<dynamic>?)
          ?.map((e) => fromJson$Enum$PlanTransferMode((e as String)))
          .toList();
    }
    if (data.containsKey('transit')) {
      final l$transit = data['transit'];
      result$data['transit'] = (l$transit as List<dynamic>?)
          ?.map((e) => Input$PlanTransitModePreferenceInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$PlanTransitModesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum$PlanAccessMode>? get access =>
      (_$data['access'] as List<Enum$PlanAccessMode>?);
  List<Enum$PlanEgressMode>? get egress =>
      (_$data['egress'] as List<Enum$PlanEgressMode>?);
  List<Enum$PlanTransferMode>? get transfer =>
      (_$data['transfer'] as List<Enum$PlanTransferMode>?);
  List<Input$PlanTransitModePreferenceInput>? get transit =>
      (_$data['transit'] as List<Input$PlanTransitModePreferenceInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('access')) {
      final l$access = access;
      result$data['access'] =
          l$access?.map((e) => toJson$Enum$PlanAccessMode(e)).toList();
    }
    if (_$data.containsKey('egress')) {
      final l$egress = egress;
      result$data['egress'] =
          l$egress?.map((e) => toJson$Enum$PlanEgressMode(e)).toList();
    }
    if (_$data.containsKey('transfer')) {
      final l$transfer = transfer;
      result$data['transfer'] =
          l$transfer?.map((e) => toJson$Enum$PlanTransferMode(e)).toList();
    }
    if (_$data.containsKey('transit')) {
      final l$transit = transit;
      result$data['transit'] = l$transit?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$PlanTransitModesInput<Input$PlanTransitModesInput>
      get copyWith => CopyWith$Input$PlanTransitModesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanTransitModesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$access = access;
    final lOther$access = other.access;
    if (_$data.containsKey('access') != other._$data.containsKey('access')) {
      return false;
    }
    if (l$access != null && lOther$access != null) {
      if (l$access.length != lOther$access.length) {
        return false;
      }
      for (int i = 0; i < l$access.length; i++) {
        final l$access$entry = l$access[i];
        final lOther$access$entry = lOther$access[i];
        if (l$access$entry != lOther$access$entry) {
          return false;
        }
      }
    } else if (l$access != lOther$access) {
      return false;
    }
    final l$egress = egress;
    final lOther$egress = other.egress;
    if (_$data.containsKey('egress') != other._$data.containsKey('egress')) {
      return false;
    }
    if (l$egress != null && lOther$egress != null) {
      if (l$egress.length != lOther$egress.length) {
        return false;
      }
      for (int i = 0; i < l$egress.length; i++) {
        final l$egress$entry = l$egress[i];
        final lOther$egress$entry = lOther$egress[i];
        if (l$egress$entry != lOther$egress$entry) {
          return false;
        }
      }
    } else if (l$egress != lOther$egress) {
      return false;
    }
    final l$transfer = transfer;
    final lOther$transfer = other.transfer;
    if (_$data.containsKey('transfer') !=
        other._$data.containsKey('transfer')) {
      return false;
    }
    if (l$transfer != null && lOther$transfer != null) {
      if (l$transfer.length != lOther$transfer.length) {
        return false;
      }
      for (int i = 0; i < l$transfer.length; i++) {
        final l$transfer$entry = l$transfer[i];
        final lOther$transfer$entry = lOther$transfer[i];
        if (l$transfer$entry != lOther$transfer$entry) {
          return false;
        }
      }
    } else if (l$transfer != lOther$transfer) {
      return false;
    }
    final l$transit = transit;
    final lOther$transit = other.transit;
    if (_$data.containsKey('transit') != other._$data.containsKey('transit')) {
      return false;
    }
    if (l$transit != null && lOther$transit != null) {
      if (l$transit.length != lOther$transit.length) {
        return false;
      }
      for (int i = 0; i < l$transit.length; i++) {
        final l$transit$entry = l$transit[i];
        final lOther$transit$entry = lOther$transit[i];
        if (l$transit$entry != lOther$transit$entry) {
          return false;
        }
      }
    } else if (l$transit != lOther$transit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$access = access;
    final l$egress = egress;
    final l$transfer = transfer;
    final l$transit = transit;
    return Object.hashAll([
      _$data.containsKey('access')
          ? l$access == null
              ? null
              : Object.hashAll(l$access.map((v) => v))
          : const {},
      _$data.containsKey('egress')
          ? l$egress == null
              ? null
              : Object.hashAll(l$egress.map((v) => v))
          : const {},
      _$data.containsKey('transfer')
          ? l$transfer == null
              ? null
              : Object.hashAll(l$transfer.map((v) => v))
          : const {},
      _$data.containsKey('transit')
          ? l$transit == null
              ? null
              : Object.hashAll(l$transit.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlanTransitModesInput<TRes> {
  factory CopyWith$Input$PlanTransitModesInput(
    Input$PlanTransitModesInput instance,
    TRes Function(Input$PlanTransitModesInput) then,
  ) = _CopyWithImpl$Input$PlanTransitModesInput;

  factory CopyWith$Input$PlanTransitModesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanTransitModesInput;

  TRes call({
    List<Enum$PlanAccessMode>? access,
    List<Enum$PlanEgressMode>? egress,
    List<Enum$PlanTransferMode>? transfer,
    List<Input$PlanTransitModePreferenceInput>? transit,
  });
  TRes transit(
      Iterable<Input$PlanTransitModePreferenceInput>? Function(
              Iterable<
                  CopyWith$Input$PlanTransitModePreferenceInput<
                      Input$PlanTransitModePreferenceInput>>?)
          _fn);
}

class _CopyWithImpl$Input$PlanTransitModesInput<TRes>
    implements CopyWith$Input$PlanTransitModesInput<TRes> {
  _CopyWithImpl$Input$PlanTransitModesInput(
    this._instance,
    this._then,
  );

  final Input$PlanTransitModesInput _instance;

  final TRes Function(Input$PlanTransitModesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? access = _undefined,
    Object? egress = _undefined,
    Object? transfer = _undefined,
    Object? transit = _undefined,
  }) =>
      _then(Input$PlanTransitModesInput._({
        ..._instance._$data,
        if (access != _undefined)
          'access': (access as List<Enum$PlanAccessMode>?),
        if (egress != _undefined)
          'egress': (egress as List<Enum$PlanEgressMode>?),
        if (transfer != _undefined)
          'transfer': (transfer as List<Enum$PlanTransferMode>?),
        if (transit != _undefined)
          'transit': (transit as List<Input$PlanTransitModePreferenceInput>?),
      }));
  TRes transit(
          Iterable<Input$PlanTransitModePreferenceInput>? Function(
                  Iterable<
                      CopyWith$Input$PlanTransitModePreferenceInput<
                          Input$PlanTransitModePreferenceInput>>?)
              _fn) =>
      call(
          transit: _fn(_instance.transit
              ?.map((e) => CopyWith$Input$PlanTransitModePreferenceInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$PlanTransitModesInput<TRes>
    implements CopyWith$Input$PlanTransitModesInput<TRes> {
  _CopyWithStubImpl$Input$PlanTransitModesInput(this._res);

  TRes _res;

  call({
    List<Enum$PlanAccessMode>? access,
    List<Enum$PlanEgressMode>? egress,
    List<Enum$PlanTransferMode>? transfer,
    List<Input$PlanTransitModePreferenceInput>? transit,
  }) =>
      _res;
  transit(_fn) => _res;
}

class Input$PlanViaLocationInput {
  factory Input$PlanViaLocationInput({
    Input$PlanPassThroughViaLocationInput? passThrough,
    Input$PlanVisitViaLocationInput? visit,
  }) =>
      Input$PlanViaLocationInput._({
        if (passThrough != null) r'passThrough': passThrough,
        if (visit != null) r'visit': visit,
      });

  Input$PlanViaLocationInput._(this._$data);

  factory Input$PlanViaLocationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('passThrough')) {
      final l$passThrough = data['passThrough'];
      result$data['passThrough'] = l$passThrough == null
          ? null
          : Input$PlanPassThroughViaLocationInput.fromJson(
              (l$passThrough as Map<String, dynamic>));
    }
    if (data.containsKey('visit')) {
      final l$visit = data['visit'];
      result$data['visit'] = l$visit == null
          ? null
          : Input$PlanVisitViaLocationInput.fromJson(
              (l$visit as Map<String, dynamic>));
    }
    return Input$PlanViaLocationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PlanPassThroughViaLocationInput? get passThrough =>
      (_$data['passThrough'] as Input$PlanPassThroughViaLocationInput?);
  Input$PlanVisitViaLocationInput? get visit =>
      (_$data['visit'] as Input$PlanVisitViaLocationInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('passThrough')) {
      final l$passThrough = passThrough;
      result$data['passThrough'] = l$passThrough?.toJson();
    }
    if (_$data.containsKey('visit')) {
      final l$visit = visit;
      result$data['visit'] = l$visit?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PlanViaLocationInput<Input$PlanViaLocationInput>
      get copyWith => CopyWith$Input$PlanViaLocationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanViaLocationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$passThrough = passThrough;
    final lOther$passThrough = other.passThrough;
    if (_$data.containsKey('passThrough') !=
        other._$data.containsKey('passThrough')) {
      return false;
    }
    if (l$passThrough != lOther$passThrough) {
      return false;
    }
    final l$visit = visit;
    final lOther$visit = other.visit;
    if (_$data.containsKey('visit') != other._$data.containsKey('visit')) {
      return false;
    }
    if (l$visit != lOther$visit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$passThrough = passThrough;
    final l$visit = visit;
    return Object.hashAll([
      _$data.containsKey('passThrough') ? l$passThrough : const {},
      _$data.containsKey('visit') ? l$visit : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlanViaLocationInput<TRes> {
  factory CopyWith$Input$PlanViaLocationInput(
    Input$PlanViaLocationInput instance,
    TRes Function(Input$PlanViaLocationInput) then,
  ) = _CopyWithImpl$Input$PlanViaLocationInput;

  factory CopyWith$Input$PlanViaLocationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanViaLocationInput;

  TRes call({
    Input$PlanPassThroughViaLocationInput? passThrough,
    Input$PlanVisitViaLocationInput? visit,
  });
  CopyWith$Input$PlanPassThroughViaLocationInput<TRes> get passThrough;
  CopyWith$Input$PlanVisitViaLocationInput<TRes> get visit;
}

class _CopyWithImpl$Input$PlanViaLocationInput<TRes>
    implements CopyWith$Input$PlanViaLocationInput<TRes> {
  _CopyWithImpl$Input$PlanViaLocationInput(
    this._instance,
    this._then,
  );

  final Input$PlanViaLocationInput _instance;

  final TRes Function(Input$PlanViaLocationInput) _then;

  static const _undefined = {};

  TRes call({
    Object? passThrough = _undefined,
    Object? visit = _undefined,
  }) =>
      _then(Input$PlanViaLocationInput._({
        ..._instance._$data,
        if (passThrough != _undefined)
          'passThrough':
              (passThrough as Input$PlanPassThroughViaLocationInput?),
        if (visit != _undefined)
          'visit': (visit as Input$PlanVisitViaLocationInput?),
      }));
  CopyWith$Input$PlanPassThroughViaLocationInput<TRes> get passThrough {
    final local$passThrough = _instance.passThrough;
    return local$passThrough == null
        ? CopyWith$Input$PlanPassThroughViaLocationInput.stub(_then(_instance))
        : CopyWith$Input$PlanPassThroughViaLocationInput(
            local$passThrough, (e) => call(passThrough: e));
  }

  CopyWith$Input$PlanVisitViaLocationInput<TRes> get visit {
    final local$visit = _instance.visit;
    return local$visit == null
        ? CopyWith$Input$PlanVisitViaLocationInput.stub(_then(_instance))
        : CopyWith$Input$PlanVisitViaLocationInput(
            local$visit, (e) => call(visit: e));
  }
}

class _CopyWithStubImpl$Input$PlanViaLocationInput<TRes>
    implements CopyWith$Input$PlanViaLocationInput<TRes> {
  _CopyWithStubImpl$Input$PlanViaLocationInput(this._res);

  TRes _res;

  call({
    Input$PlanPassThroughViaLocationInput? passThrough,
    Input$PlanVisitViaLocationInput? visit,
  }) =>
      _res;
  CopyWith$Input$PlanPassThroughViaLocationInput<TRes> get passThrough =>
      CopyWith$Input$PlanPassThroughViaLocationInput.stub(_res);
  CopyWith$Input$PlanVisitViaLocationInput<TRes> get visit =>
      CopyWith$Input$PlanVisitViaLocationInput.stub(_res);
}

class Input$PlanVisitViaLocationInput {
  factory Input$PlanVisitViaLocationInput({
    Input$PlanCoordinateInput? coordinate,
    String? label,
    String? minimumWaitTime,
    List<String>? stopLocationIds,
  }) =>
      Input$PlanVisitViaLocationInput._({
        if (coordinate != null) r'coordinate': coordinate,
        if (label != null) r'label': label,
        if (minimumWaitTime != null) r'minimumWaitTime': minimumWaitTime,
        if (stopLocationIds != null) r'stopLocationIds': stopLocationIds,
      });

  Input$PlanVisitViaLocationInput._(this._$data);

  factory Input$PlanVisitViaLocationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinate')) {
      final l$coordinate = data['coordinate'];
      result$data['coordinate'] = l$coordinate == null
          ? null
          : Input$PlanCoordinateInput.fromJson(
              (l$coordinate as Map<String, dynamic>));
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = (l$label as String?);
    }
    if (data.containsKey('minimumWaitTime')) {
      final l$minimumWaitTime = data['minimumWaitTime'];
      result$data['minimumWaitTime'] = (l$minimumWaitTime as String?);
    }
    if (data.containsKey('stopLocationIds')) {
      final l$stopLocationIds = data['stopLocationIds'];
      result$data['stopLocationIds'] = (l$stopLocationIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Input$PlanVisitViaLocationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PlanCoordinateInput? get coordinate =>
      (_$data['coordinate'] as Input$PlanCoordinateInput?);
  String? get label => (_$data['label'] as String?);
  String? get minimumWaitTime => (_$data['minimumWaitTime'] as String?);
  List<String>? get stopLocationIds =>
      (_$data['stopLocationIds'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinate')) {
      final l$coordinate = coordinate;
      result$data['coordinate'] = l$coordinate?.toJson();
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label;
    }
    if (_$data.containsKey('minimumWaitTime')) {
      final l$minimumWaitTime = minimumWaitTime;
      result$data['minimumWaitTime'] = l$minimumWaitTime;
    }
    if (_$data.containsKey('stopLocationIds')) {
      final l$stopLocationIds = stopLocationIds;
      result$data['stopLocationIds'] =
          l$stopLocationIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$PlanVisitViaLocationInput<Input$PlanVisitViaLocationInput>
      get copyWith => CopyWith$Input$PlanVisitViaLocationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PlanVisitViaLocationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinate = coordinate;
    final lOther$coordinate = other.coordinate;
    if (_$data.containsKey('coordinate') !=
        other._$data.containsKey('coordinate')) {
      return false;
    }
    if (l$coordinate != lOther$coordinate) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$minimumWaitTime = minimumWaitTime;
    final lOther$minimumWaitTime = other.minimumWaitTime;
    if (_$data.containsKey('minimumWaitTime') !=
        other._$data.containsKey('minimumWaitTime')) {
      return false;
    }
    if (l$minimumWaitTime != lOther$minimumWaitTime) {
      return false;
    }
    final l$stopLocationIds = stopLocationIds;
    final lOther$stopLocationIds = other.stopLocationIds;
    if (_$data.containsKey('stopLocationIds') !=
        other._$data.containsKey('stopLocationIds')) {
      return false;
    }
    if (l$stopLocationIds != null && lOther$stopLocationIds != null) {
      if (l$stopLocationIds.length != lOther$stopLocationIds.length) {
        return false;
      }
      for (int i = 0; i < l$stopLocationIds.length; i++) {
        final l$stopLocationIds$entry = l$stopLocationIds[i];
        final lOther$stopLocationIds$entry = lOther$stopLocationIds[i];
        if (l$stopLocationIds$entry != lOther$stopLocationIds$entry) {
          return false;
        }
      }
    } else if (l$stopLocationIds != lOther$stopLocationIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinate = coordinate;
    final l$label = label;
    final l$minimumWaitTime = minimumWaitTime;
    final l$stopLocationIds = stopLocationIds;
    return Object.hashAll([
      _$data.containsKey('coordinate') ? l$coordinate : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('minimumWaitTime') ? l$minimumWaitTime : const {},
      _$data.containsKey('stopLocationIds')
          ? l$stopLocationIds == null
              ? null
              : Object.hashAll(l$stopLocationIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$PlanVisitViaLocationInput<TRes> {
  factory CopyWith$Input$PlanVisitViaLocationInput(
    Input$PlanVisitViaLocationInput instance,
    TRes Function(Input$PlanVisitViaLocationInput) then,
  ) = _CopyWithImpl$Input$PlanVisitViaLocationInput;

  factory CopyWith$Input$PlanVisitViaLocationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PlanVisitViaLocationInput;

  TRes call({
    Input$PlanCoordinateInput? coordinate,
    String? label,
    String? minimumWaitTime,
    List<String>? stopLocationIds,
  });
  CopyWith$Input$PlanCoordinateInput<TRes> get coordinate;
}

class _CopyWithImpl$Input$PlanVisitViaLocationInput<TRes>
    implements CopyWith$Input$PlanVisitViaLocationInput<TRes> {
  _CopyWithImpl$Input$PlanVisitViaLocationInput(
    this._instance,
    this._then,
  );

  final Input$PlanVisitViaLocationInput _instance;

  final TRes Function(Input$PlanVisitViaLocationInput) _then;

  static const _undefined = {};

  TRes call({
    Object? coordinate = _undefined,
    Object? label = _undefined,
    Object? minimumWaitTime = _undefined,
    Object? stopLocationIds = _undefined,
  }) =>
      _then(Input$PlanVisitViaLocationInput._({
        ..._instance._$data,
        if (coordinate != _undefined)
          'coordinate': (coordinate as Input$PlanCoordinateInput?),
        if (label != _undefined) 'label': (label as String?),
        if (minimumWaitTime != _undefined)
          'minimumWaitTime': (minimumWaitTime as String?),
        if (stopLocationIds != _undefined)
          'stopLocationIds': (stopLocationIds as List<String>?),
      }));
  CopyWith$Input$PlanCoordinateInput<TRes> get coordinate {
    final local$coordinate = _instance.coordinate;
    return local$coordinate == null
        ? CopyWith$Input$PlanCoordinateInput.stub(_then(_instance))
        : CopyWith$Input$PlanCoordinateInput(
            local$coordinate, (e) => call(coordinate: e));
  }
}

class _CopyWithStubImpl$Input$PlanVisitViaLocationInput<TRes>
    implements CopyWith$Input$PlanVisitViaLocationInput<TRes> {
  _CopyWithStubImpl$Input$PlanVisitViaLocationInput(this._res);

  TRes _res;

  call({
    Input$PlanCoordinateInput? coordinate,
    String? label,
    String? minimumWaitTime,
    List<String>? stopLocationIds,
  }) =>
      _res;
  CopyWith$Input$PlanCoordinateInput<TRes> get coordinate =>
      CopyWith$Input$PlanCoordinateInput.stub(_res);
}

class Input$ScooterOptimizationInput {
  factory Input$ScooterOptimizationInput({
    Input$TriangleScooterFactorsInput? triangle,
    Enum$ScooterOptimizationType? type,
  }) =>
      Input$ScooterOptimizationInput._({
        if (triangle != null) r'triangle': triangle,
        if (type != null) r'type': type,
      });

  Input$ScooterOptimizationInput._(this._$data);

  factory Input$ScooterOptimizationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('triangle')) {
      final l$triangle = data['triangle'];
      result$data['triangle'] = l$triangle == null
          ? null
          : Input$TriangleScooterFactorsInput.fromJson(
              (l$triangle as Map<String, dynamic>));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$ScooterOptimizationType((l$type as String));
    }
    return Input$ScooterOptimizationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TriangleScooterFactorsInput? get triangle =>
      (_$data['triangle'] as Input$TriangleScooterFactorsInput?);
  Enum$ScooterOptimizationType? get type =>
      (_$data['type'] as Enum$ScooterOptimizationType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('triangle')) {
      final l$triangle = triangle;
      result$data['triangle'] = l$triangle?.toJson();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$ScooterOptimizationType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$ScooterOptimizationInput<Input$ScooterOptimizationInput>
      get copyWith => CopyWith$Input$ScooterOptimizationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ScooterOptimizationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$triangle = triangle;
    final lOther$triangle = other.triangle;
    if (_$data.containsKey('triangle') !=
        other._$data.containsKey('triangle')) {
      return false;
    }
    if (l$triangle != lOther$triangle) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$triangle = triangle;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('triangle') ? l$triangle : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$ScooterOptimizationInput<TRes> {
  factory CopyWith$Input$ScooterOptimizationInput(
    Input$ScooterOptimizationInput instance,
    TRes Function(Input$ScooterOptimizationInput) then,
  ) = _CopyWithImpl$Input$ScooterOptimizationInput;

  factory CopyWith$Input$ScooterOptimizationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ScooterOptimizationInput;

  TRes call({
    Input$TriangleScooterFactorsInput? triangle,
    Enum$ScooterOptimizationType? type,
  });
  CopyWith$Input$TriangleScooterFactorsInput<TRes> get triangle;
}

class _CopyWithImpl$Input$ScooterOptimizationInput<TRes>
    implements CopyWith$Input$ScooterOptimizationInput<TRes> {
  _CopyWithImpl$Input$ScooterOptimizationInput(
    this._instance,
    this._then,
  );

  final Input$ScooterOptimizationInput _instance;

  final TRes Function(Input$ScooterOptimizationInput) _then;

  static const _undefined = {};

  TRes call({
    Object? triangle = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$ScooterOptimizationInput._({
        ..._instance._$data,
        if (triangle != _undefined)
          'triangle': (triangle as Input$TriangleScooterFactorsInput?),
        if (type != _undefined) 'type': (type as Enum$ScooterOptimizationType?),
      }));
  CopyWith$Input$TriangleScooterFactorsInput<TRes> get triangle {
    final local$triangle = _instance.triangle;
    return local$triangle == null
        ? CopyWith$Input$TriangleScooterFactorsInput.stub(_then(_instance))
        : CopyWith$Input$TriangleScooterFactorsInput(
            local$triangle, (e) => call(triangle: e));
  }
}

class _CopyWithStubImpl$Input$ScooterOptimizationInput<TRes>
    implements CopyWith$Input$ScooterOptimizationInput<TRes> {
  _CopyWithStubImpl$Input$ScooterOptimizationInput(this._res);

  TRes _res;

  call({
    Input$TriangleScooterFactorsInput? triangle,
    Enum$ScooterOptimizationType? type,
  }) =>
      _res;
  CopyWith$Input$TriangleScooterFactorsInput<TRes> get triangle =>
      CopyWith$Input$TriangleScooterFactorsInput.stub(_res);
}

class Input$ScooterPreferencesInput {
  factory Input$ScooterPreferencesInput({
    Input$ScooterOptimizationInput? optimization,
    String? reluctance,
    Input$ScooterRentalPreferencesInput? rental,
    String? speed,
  }) =>
      Input$ScooterPreferencesInput._({
        if (optimization != null) r'optimization': optimization,
        if (reluctance != null) r'reluctance': reluctance,
        if (rental != null) r'rental': rental,
        if (speed != null) r'speed': speed,
      });

  Input$ScooterPreferencesInput._(this._$data);

  factory Input$ScooterPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('optimization')) {
      final l$optimization = data['optimization'];
      result$data['optimization'] = l$optimization == null
          ? null
          : Input$ScooterOptimizationInput.fromJson(
              (l$optimization as Map<String, dynamic>));
    }
    if (data.containsKey('reluctance')) {
      final l$reluctance = data['reluctance'];
      result$data['reluctance'] = (l$reluctance as String?);
    }
    if (data.containsKey('rental')) {
      final l$rental = data['rental'];
      result$data['rental'] = l$rental == null
          ? null
          : Input$ScooterRentalPreferencesInput.fromJson(
              (l$rental as Map<String, dynamic>));
    }
    if (data.containsKey('speed')) {
      final l$speed = data['speed'];
      result$data['speed'] = (l$speed as String?);
    }
    return Input$ScooterPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ScooterOptimizationInput? get optimization =>
      (_$data['optimization'] as Input$ScooterOptimizationInput?);
  String? get reluctance => (_$data['reluctance'] as String?);
  Input$ScooterRentalPreferencesInput? get rental =>
      (_$data['rental'] as Input$ScooterRentalPreferencesInput?);
  String? get speed => (_$data['speed'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('optimization')) {
      final l$optimization = optimization;
      result$data['optimization'] = l$optimization?.toJson();
    }
    if (_$data.containsKey('reluctance')) {
      final l$reluctance = reluctance;
      result$data['reluctance'] = l$reluctance;
    }
    if (_$data.containsKey('rental')) {
      final l$rental = rental;
      result$data['rental'] = l$rental?.toJson();
    }
    if (_$data.containsKey('speed')) {
      final l$speed = speed;
      result$data['speed'] = l$speed;
    }
    return result$data;
  }

  CopyWith$Input$ScooterPreferencesInput<Input$ScooterPreferencesInput>
      get copyWith => CopyWith$Input$ScooterPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ScooterPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$optimization = optimization;
    final lOther$optimization = other.optimization;
    if (_$data.containsKey('optimization') !=
        other._$data.containsKey('optimization')) {
      return false;
    }
    if (l$optimization != lOther$optimization) {
      return false;
    }
    final l$reluctance = reluctance;
    final lOther$reluctance = other.reluctance;
    if (_$data.containsKey('reluctance') !=
        other._$data.containsKey('reluctance')) {
      return false;
    }
    if (l$reluctance != lOther$reluctance) {
      return false;
    }
    final l$rental = rental;
    final lOther$rental = other.rental;
    if (_$data.containsKey('rental') != other._$data.containsKey('rental')) {
      return false;
    }
    if (l$rental != lOther$rental) {
      return false;
    }
    final l$speed = speed;
    final lOther$speed = other.speed;
    if (_$data.containsKey('speed') != other._$data.containsKey('speed')) {
      return false;
    }
    if (l$speed != lOther$speed) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$optimization = optimization;
    final l$reluctance = reluctance;
    final l$rental = rental;
    final l$speed = speed;
    return Object.hashAll([
      _$data.containsKey('optimization') ? l$optimization : const {},
      _$data.containsKey('reluctance') ? l$reluctance : const {},
      _$data.containsKey('rental') ? l$rental : const {},
      _$data.containsKey('speed') ? l$speed : const {},
    ]);
  }
}

abstract class CopyWith$Input$ScooterPreferencesInput<TRes> {
  factory CopyWith$Input$ScooterPreferencesInput(
    Input$ScooterPreferencesInput instance,
    TRes Function(Input$ScooterPreferencesInput) then,
  ) = _CopyWithImpl$Input$ScooterPreferencesInput;

  factory CopyWith$Input$ScooterPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ScooterPreferencesInput;

  TRes call({
    Input$ScooterOptimizationInput? optimization,
    String? reluctance,
    Input$ScooterRentalPreferencesInput? rental,
    String? speed,
  });
  CopyWith$Input$ScooterOptimizationInput<TRes> get optimization;
  CopyWith$Input$ScooterRentalPreferencesInput<TRes> get rental;
}

class _CopyWithImpl$Input$ScooterPreferencesInput<TRes>
    implements CopyWith$Input$ScooterPreferencesInput<TRes> {
  _CopyWithImpl$Input$ScooterPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$ScooterPreferencesInput _instance;

  final TRes Function(Input$ScooterPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? optimization = _undefined,
    Object? reluctance = _undefined,
    Object? rental = _undefined,
    Object? speed = _undefined,
  }) =>
      _then(Input$ScooterPreferencesInput._({
        ..._instance._$data,
        if (optimization != _undefined)
          'optimization': (optimization as Input$ScooterOptimizationInput?),
        if (reluctance != _undefined) 'reluctance': (reluctance as String?),
        if (rental != _undefined)
          'rental': (rental as Input$ScooterRentalPreferencesInput?),
        if (speed != _undefined) 'speed': (speed as String?),
      }));
  CopyWith$Input$ScooterOptimizationInput<TRes> get optimization {
    final local$optimization = _instance.optimization;
    return local$optimization == null
        ? CopyWith$Input$ScooterOptimizationInput.stub(_then(_instance))
        : CopyWith$Input$ScooterOptimizationInput(
            local$optimization, (e) => call(optimization: e));
  }

  CopyWith$Input$ScooterRentalPreferencesInput<TRes> get rental {
    final local$rental = _instance.rental;
    return local$rental == null
        ? CopyWith$Input$ScooterRentalPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$ScooterRentalPreferencesInput(
            local$rental, (e) => call(rental: e));
  }
}

class _CopyWithStubImpl$Input$ScooterPreferencesInput<TRes>
    implements CopyWith$Input$ScooterPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$ScooterPreferencesInput(this._res);

  TRes _res;

  call({
    Input$ScooterOptimizationInput? optimization,
    String? reluctance,
    Input$ScooterRentalPreferencesInput? rental,
    String? speed,
  }) =>
      _res;
  CopyWith$Input$ScooterOptimizationInput<TRes> get optimization =>
      CopyWith$Input$ScooterOptimizationInput.stub(_res);
  CopyWith$Input$ScooterRentalPreferencesInput<TRes> get rental =>
      CopyWith$Input$ScooterRentalPreferencesInput.stub(_res);
}

class Input$ScooterRentalPreferencesInput {
  factory Input$ScooterRentalPreferencesInput({
    List<String>? allowedNetworks,
    List<String>? bannedNetworks,
    Input$DestinationScooterPolicyInput? destinationScooterPolicy,
  }) =>
      Input$ScooterRentalPreferencesInput._({
        if (allowedNetworks != null) r'allowedNetworks': allowedNetworks,
        if (bannedNetworks != null) r'bannedNetworks': bannedNetworks,
        if (destinationScooterPolicy != null)
          r'destinationScooterPolicy': destinationScooterPolicy,
      });

  Input$ScooterRentalPreferencesInput._(this._$data);

  factory Input$ScooterRentalPreferencesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('allowedNetworks')) {
      final l$allowedNetworks = data['allowedNetworks'];
      result$data['allowedNetworks'] = (l$allowedNetworks as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('bannedNetworks')) {
      final l$bannedNetworks = data['bannedNetworks'];
      result$data['bannedNetworks'] = (l$bannedNetworks as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('destinationScooterPolicy')) {
      final l$destinationScooterPolicy = data['destinationScooterPolicy'];
      result$data['destinationScooterPolicy'] =
          l$destinationScooterPolicy == null
              ? null
              : Input$DestinationScooterPolicyInput.fromJson(
                  (l$destinationScooterPolicy as Map<String, dynamic>));
    }
    return Input$ScooterRentalPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get allowedNetworks =>
      (_$data['allowedNetworks'] as List<String>?);
  List<String>? get bannedNetworks =>
      (_$data['bannedNetworks'] as List<String>?);
  Input$DestinationScooterPolicyInput? get destinationScooterPolicy =>
      (_$data['destinationScooterPolicy']
          as Input$DestinationScooterPolicyInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('allowedNetworks')) {
      final l$allowedNetworks = allowedNetworks;
      result$data['allowedNetworks'] =
          l$allowedNetworks?.map((e) => e).toList();
    }
    if (_$data.containsKey('bannedNetworks')) {
      final l$bannedNetworks = bannedNetworks;
      result$data['bannedNetworks'] = l$bannedNetworks?.map((e) => e).toList();
    }
    if (_$data.containsKey('destinationScooterPolicy')) {
      final l$destinationScooterPolicy = destinationScooterPolicy;
      result$data['destinationScooterPolicy'] =
          l$destinationScooterPolicy?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ScooterRentalPreferencesInput<
          Input$ScooterRentalPreferencesInput>
      get copyWith => CopyWith$Input$ScooterRentalPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ScooterRentalPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allowedNetworks = allowedNetworks;
    final lOther$allowedNetworks = other.allowedNetworks;
    if (_$data.containsKey('allowedNetworks') !=
        other._$data.containsKey('allowedNetworks')) {
      return false;
    }
    if (l$allowedNetworks != null && lOther$allowedNetworks != null) {
      if (l$allowedNetworks.length != lOther$allowedNetworks.length) {
        return false;
      }
      for (int i = 0; i < l$allowedNetworks.length; i++) {
        final l$allowedNetworks$entry = l$allowedNetworks[i];
        final lOther$allowedNetworks$entry = lOther$allowedNetworks[i];
        if (l$allowedNetworks$entry != lOther$allowedNetworks$entry) {
          return false;
        }
      }
    } else if (l$allowedNetworks != lOther$allowedNetworks) {
      return false;
    }
    final l$bannedNetworks = bannedNetworks;
    final lOther$bannedNetworks = other.bannedNetworks;
    if (_$data.containsKey('bannedNetworks') !=
        other._$data.containsKey('bannedNetworks')) {
      return false;
    }
    if (l$bannedNetworks != null && lOther$bannedNetworks != null) {
      if (l$bannedNetworks.length != lOther$bannedNetworks.length) {
        return false;
      }
      for (int i = 0; i < l$bannedNetworks.length; i++) {
        final l$bannedNetworks$entry = l$bannedNetworks[i];
        final lOther$bannedNetworks$entry = lOther$bannedNetworks[i];
        if (l$bannedNetworks$entry != lOther$bannedNetworks$entry) {
          return false;
        }
      }
    } else if (l$bannedNetworks != lOther$bannedNetworks) {
      return false;
    }
    final l$destinationScooterPolicy = destinationScooterPolicy;
    final lOther$destinationScooterPolicy = other.destinationScooterPolicy;
    if (_$data.containsKey('destinationScooterPolicy') !=
        other._$data.containsKey('destinationScooterPolicy')) {
      return false;
    }
    if (l$destinationScooterPolicy != lOther$destinationScooterPolicy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$allowedNetworks = allowedNetworks;
    final l$bannedNetworks = bannedNetworks;
    final l$destinationScooterPolicy = destinationScooterPolicy;
    return Object.hashAll([
      _$data.containsKey('allowedNetworks')
          ? l$allowedNetworks == null
              ? null
              : Object.hashAll(l$allowedNetworks.map((v) => v))
          : const {},
      _$data.containsKey('bannedNetworks')
          ? l$bannedNetworks == null
              ? null
              : Object.hashAll(l$bannedNetworks.map((v) => v))
          : const {},
      _$data.containsKey('destinationScooterPolicy')
          ? l$destinationScooterPolicy
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ScooterRentalPreferencesInput<TRes> {
  factory CopyWith$Input$ScooterRentalPreferencesInput(
    Input$ScooterRentalPreferencesInput instance,
    TRes Function(Input$ScooterRentalPreferencesInput) then,
  ) = _CopyWithImpl$Input$ScooterRentalPreferencesInput;

  factory CopyWith$Input$ScooterRentalPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ScooterRentalPreferencesInput;

  TRes call({
    List<String>? allowedNetworks,
    List<String>? bannedNetworks,
    Input$DestinationScooterPolicyInput? destinationScooterPolicy,
  });
  CopyWith$Input$DestinationScooterPolicyInput<TRes>
      get destinationScooterPolicy;
}

class _CopyWithImpl$Input$ScooterRentalPreferencesInput<TRes>
    implements CopyWith$Input$ScooterRentalPreferencesInput<TRes> {
  _CopyWithImpl$Input$ScooterRentalPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$ScooterRentalPreferencesInput _instance;

  final TRes Function(Input$ScooterRentalPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? allowedNetworks = _undefined,
    Object? bannedNetworks = _undefined,
    Object? destinationScooterPolicy = _undefined,
  }) =>
      _then(Input$ScooterRentalPreferencesInput._({
        ..._instance._$data,
        if (allowedNetworks != _undefined)
          'allowedNetworks': (allowedNetworks as List<String>?),
        if (bannedNetworks != _undefined)
          'bannedNetworks': (bannedNetworks as List<String>?),
        if (destinationScooterPolicy != _undefined)
          'destinationScooterPolicy': (destinationScooterPolicy
              as Input$DestinationScooterPolicyInput?),
      }));
  CopyWith$Input$DestinationScooterPolicyInput<TRes>
      get destinationScooterPolicy {
    final local$destinationScooterPolicy = _instance.destinationScooterPolicy;
    return local$destinationScooterPolicy == null
        ? CopyWith$Input$DestinationScooterPolicyInput.stub(_then(_instance))
        : CopyWith$Input$DestinationScooterPolicyInput(
            local$destinationScooterPolicy,
            (e) => call(destinationScooterPolicy: e));
  }
}

class _CopyWithStubImpl$Input$ScooterRentalPreferencesInput<TRes>
    implements CopyWith$Input$ScooterRentalPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$ScooterRentalPreferencesInput(this._res);

  TRes _res;

  call({
    List<String>? allowedNetworks,
    List<String>? bannedNetworks,
    Input$DestinationScooterPolicyInput? destinationScooterPolicy,
  }) =>
      _res;
  CopyWith$Input$DestinationScooterPolicyInput<TRes>
      get destinationScooterPolicy =>
          CopyWith$Input$DestinationScooterPolicyInput.stub(_res);
}

class Input$TimetablePreferencesInput {
  factory Input$TimetablePreferencesInput({
    bool? excludeRealTimeUpdates,
    bool? includePlannedCancellations,
    bool? includeRealTimeCancellations,
  }) =>
      Input$TimetablePreferencesInput._({
        if (excludeRealTimeUpdates != null)
          r'excludeRealTimeUpdates': excludeRealTimeUpdates,
        if (includePlannedCancellations != null)
          r'includePlannedCancellations': includePlannedCancellations,
        if (includeRealTimeCancellations != null)
          r'includeRealTimeCancellations': includeRealTimeCancellations,
      });

  Input$TimetablePreferencesInput._(this._$data);

  factory Input$TimetablePreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('excludeRealTimeUpdates')) {
      final l$excludeRealTimeUpdates = data['excludeRealTimeUpdates'];
      result$data['excludeRealTimeUpdates'] =
          (l$excludeRealTimeUpdates as bool?);
    }
    if (data.containsKey('includePlannedCancellations')) {
      final l$includePlannedCancellations = data['includePlannedCancellations'];
      result$data['includePlannedCancellations'] =
          (l$includePlannedCancellations as bool?);
    }
    if (data.containsKey('includeRealTimeCancellations')) {
      final l$includeRealTimeCancellations =
          data['includeRealTimeCancellations'];
      result$data['includeRealTimeCancellations'] =
          (l$includeRealTimeCancellations as bool?);
    }
    return Input$TimetablePreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get excludeRealTimeUpdates =>
      (_$data['excludeRealTimeUpdates'] as bool?);
  bool? get includePlannedCancellations =>
      (_$data['includePlannedCancellations'] as bool?);
  bool? get includeRealTimeCancellations =>
      (_$data['includeRealTimeCancellations'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('excludeRealTimeUpdates')) {
      final l$excludeRealTimeUpdates = excludeRealTimeUpdates;
      result$data['excludeRealTimeUpdates'] = l$excludeRealTimeUpdates;
    }
    if (_$data.containsKey('includePlannedCancellations')) {
      final l$includePlannedCancellations = includePlannedCancellations;
      result$data['includePlannedCancellations'] =
          l$includePlannedCancellations;
    }
    if (_$data.containsKey('includeRealTimeCancellations')) {
      final l$includeRealTimeCancellations = includeRealTimeCancellations;
      result$data['includeRealTimeCancellations'] =
          l$includeRealTimeCancellations;
    }
    return result$data;
  }

  CopyWith$Input$TimetablePreferencesInput<Input$TimetablePreferencesInput>
      get copyWith => CopyWith$Input$TimetablePreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TimetablePreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$excludeRealTimeUpdates = excludeRealTimeUpdates;
    final lOther$excludeRealTimeUpdates = other.excludeRealTimeUpdates;
    if (_$data.containsKey('excludeRealTimeUpdates') !=
        other._$data.containsKey('excludeRealTimeUpdates')) {
      return false;
    }
    if (l$excludeRealTimeUpdates != lOther$excludeRealTimeUpdates) {
      return false;
    }
    final l$includePlannedCancellations = includePlannedCancellations;
    final lOther$includePlannedCancellations =
        other.includePlannedCancellations;
    if (_$data.containsKey('includePlannedCancellations') !=
        other._$data.containsKey('includePlannedCancellations')) {
      return false;
    }
    if (l$includePlannedCancellations != lOther$includePlannedCancellations) {
      return false;
    }
    final l$includeRealTimeCancellations = includeRealTimeCancellations;
    final lOther$includeRealTimeCancellations =
        other.includeRealTimeCancellations;
    if (_$data.containsKey('includeRealTimeCancellations') !=
        other._$data.containsKey('includeRealTimeCancellations')) {
      return false;
    }
    if (l$includeRealTimeCancellations != lOther$includeRealTimeCancellations) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$excludeRealTimeUpdates = excludeRealTimeUpdates;
    final l$includePlannedCancellations = includePlannedCancellations;
    final l$includeRealTimeCancellations = includeRealTimeCancellations;
    return Object.hashAll([
      _$data.containsKey('excludeRealTimeUpdates')
          ? l$excludeRealTimeUpdates
          : const {},
      _$data.containsKey('includePlannedCancellations')
          ? l$includePlannedCancellations
          : const {},
      _$data.containsKey('includeRealTimeCancellations')
          ? l$includeRealTimeCancellations
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$TimetablePreferencesInput<TRes> {
  factory CopyWith$Input$TimetablePreferencesInput(
    Input$TimetablePreferencesInput instance,
    TRes Function(Input$TimetablePreferencesInput) then,
  ) = _CopyWithImpl$Input$TimetablePreferencesInput;

  factory CopyWith$Input$TimetablePreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TimetablePreferencesInput;

  TRes call({
    bool? excludeRealTimeUpdates,
    bool? includePlannedCancellations,
    bool? includeRealTimeCancellations,
  });
}

class _CopyWithImpl$Input$TimetablePreferencesInput<TRes>
    implements CopyWith$Input$TimetablePreferencesInput<TRes> {
  _CopyWithImpl$Input$TimetablePreferencesInput(
    this._instance,
    this._then,
  );

  final Input$TimetablePreferencesInput _instance;

  final TRes Function(Input$TimetablePreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? excludeRealTimeUpdates = _undefined,
    Object? includePlannedCancellations = _undefined,
    Object? includeRealTimeCancellations = _undefined,
  }) =>
      _then(Input$TimetablePreferencesInput._({
        ..._instance._$data,
        if (excludeRealTimeUpdates != _undefined)
          'excludeRealTimeUpdates': (excludeRealTimeUpdates as bool?),
        if (includePlannedCancellations != _undefined)
          'includePlannedCancellations': (includePlannedCancellations as bool?),
        if (includeRealTimeCancellations != _undefined)
          'includeRealTimeCancellations':
              (includeRealTimeCancellations as bool?),
      }));
}

class _CopyWithStubImpl$Input$TimetablePreferencesInput<TRes>
    implements CopyWith$Input$TimetablePreferencesInput<TRes> {
  _CopyWithStubImpl$Input$TimetablePreferencesInput(this._res);

  TRes _res;

  call({
    bool? excludeRealTimeUpdates,
    bool? includePlannedCancellations,
    bool? includeRealTimeCancellations,
  }) =>
      _res;
}

class Input$TransferPreferencesInput {
  factory Input$TransferPreferencesInput({
    String? cost,
    int? maximumAdditionalTransfers,
    int? maximumTransfers,
    String? slack,
  }) =>
      Input$TransferPreferencesInput._({
        if (cost != null) r'cost': cost,
        if (maximumAdditionalTransfers != null)
          r'maximumAdditionalTransfers': maximumAdditionalTransfers,
        if (maximumTransfers != null) r'maximumTransfers': maximumTransfers,
        if (slack != null) r'slack': slack,
      });

  Input$TransferPreferencesInput._(this._$data);

  factory Input$TransferPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cost')) {
      final l$cost = data['cost'];
      result$data['cost'] = (l$cost as String?);
    }
    if (data.containsKey('maximumAdditionalTransfers')) {
      final l$maximumAdditionalTransfers = data['maximumAdditionalTransfers'];
      result$data['maximumAdditionalTransfers'] =
          (l$maximumAdditionalTransfers as int?);
    }
    if (data.containsKey('maximumTransfers')) {
      final l$maximumTransfers = data['maximumTransfers'];
      result$data['maximumTransfers'] = (l$maximumTransfers as int?);
    }
    if (data.containsKey('slack')) {
      final l$slack = data['slack'];
      result$data['slack'] = (l$slack as String?);
    }
    return Input$TransferPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get cost => (_$data['cost'] as String?);
  int? get maximumAdditionalTransfers =>
      (_$data['maximumAdditionalTransfers'] as int?);
  int? get maximumTransfers => (_$data['maximumTransfers'] as int?);
  String? get slack => (_$data['slack'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cost')) {
      final l$cost = cost;
      result$data['cost'] = l$cost;
    }
    if (_$data.containsKey('maximumAdditionalTransfers')) {
      final l$maximumAdditionalTransfers = maximumAdditionalTransfers;
      result$data['maximumAdditionalTransfers'] = l$maximumAdditionalTransfers;
    }
    if (_$data.containsKey('maximumTransfers')) {
      final l$maximumTransfers = maximumTransfers;
      result$data['maximumTransfers'] = l$maximumTransfers;
    }
    if (_$data.containsKey('slack')) {
      final l$slack = slack;
      result$data['slack'] = l$slack;
    }
    return result$data;
  }

  CopyWith$Input$TransferPreferencesInput<Input$TransferPreferencesInput>
      get copyWith => CopyWith$Input$TransferPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransferPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cost = cost;
    final lOther$cost = other.cost;
    if (_$data.containsKey('cost') != other._$data.containsKey('cost')) {
      return false;
    }
    if (l$cost != lOther$cost) {
      return false;
    }
    final l$maximumAdditionalTransfers = maximumAdditionalTransfers;
    final lOther$maximumAdditionalTransfers = other.maximumAdditionalTransfers;
    if (_$data.containsKey('maximumAdditionalTransfers') !=
        other._$data.containsKey('maximumAdditionalTransfers')) {
      return false;
    }
    if (l$maximumAdditionalTransfers != lOther$maximumAdditionalTransfers) {
      return false;
    }
    final l$maximumTransfers = maximumTransfers;
    final lOther$maximumTransfers = other.maximumTransfers;
    if (_$data.containsKey('maximumTransfers') !=
        other._$data.containsKey('maximumTransfers')) {
      return false;
    }
    if (l$maximumTransfers != lOther$maximumTransfers) {
      return false;
    }
    final l$slack = slack;
    final lOther$slack = other.slack;
    if (_$data.containsKey('slack') != other._$data.containsKey('slack')) {
      return false;
    }
    if (l$slack != lOther$slack) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cost = cost;
    final l$maximumAdditionalTransfers = maximumAdditionalTransfers;
    final l$maximumTransfers = maximumTransfers;
    final l$slack = slack;
    return Object.hashAll([
      _$data.containsKey('cost') ? l$cost : const {},
      _$data.containsKey('maximumAdditionalTransfers')
          ? l$maximumAdditionalTransfers
          : const {},
      _$data.containsKey('maximumTransfers') ? l$maximumTransfers : const {},
      _$data.containsKey('slack') ? l$slack : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransferPreferencesInput<TRes> {
  factory CopyWith$Input$TransferPreferencesInput(
    Input$TransferPreferencesInput instance,
    TRes Function(Input$TransferPreferencesInput) then,
  ) = _CopyWithImpl$Input$TransferPreferencesInput;

  factory CopyWith$Input$TransferPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransferPreferencesInput;

  TRes call({
    String? cost,
    int? maximumAdditionalTransfers,
    int? maximumTransfers,
    String? slack,
  });
}

class _CopyWithImpl$Input$TransferPreferencesInput<TRes>
    implements CopyWith$Input$TransferPreferencesInput<TRes> {
  _CopyWithImpl$Input$TransferPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$TransferPreferencesInput _instance;

  final TRes Function(Input$TransferPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? cost = _undefined,
    Object? maximumAdditionalTransfers = _undefined,
    Object? maximumTransfers = _undefined,
    Object? slack = _undefined,
  }) =>
      _then(Input$TransferPreferencesInput._({
        ..._instance._$data,
        if (cost != _undefined) 'cost': (cost as String?),
        if (maximumAdditionalTransfers != _undefined)
          'maximumAdditionalTransfers': (maximumAdditionalTransfers as int?),
        if (maximumTransfers != _undefined)
          'maximumTransfers': (maximumTransfers as int?),
        if (slack != _undefined) 'slack': (slack as String?),
      }));
}

class _CopyWithStubImpl$Input$TransferPreferencesInput<TRes>
    implements CopyWith$Input$TransferPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$TransferPreferencesInput(this._res);

  TRes _res;

  call({
    String? cost,
    int? maximumAdditionalTransfers,
    int? maximumTransfers,
    String? slack,
  }) =>
      _res;
}

class Input$TransitModePreferenceCostInput {
  factory Input$TransitModePreferenceCostInput({required String reluctance}) =>
      Input$TransitModePreferenceCostInput._({
        r'reluctance': reluctance,
      });

  Input$TransitModePreferenceCostInput._(this._$data);

  factory Input$TransitModePreferenceCostInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$reluctance = data['reluctance'];
    result$data['reluctance'] = (l$reluctance as String);
    return Input$TransitModePreferenceCostInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get reluctance => (_$data['reluctance'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$reluctance = reluctance;
    result$data['reluctance'] = l$reluctance;
    return result$data;
  }

  CopyWith$Input$TransitModePreferenceCostInput<
          Input$TransitModePreferenceCostInput>
      get copyWith => CopyWith$Input$TransitModePreferenceCostInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransitModePreferenceCostInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reluctance = reluctance;
    final lOther$reluctance = other.reluctance;
    if (l$reluctance != lOther$reluctance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reluctance = reluctance;
    return Object.hashAll([l$reluctance]);
  }
}

abstract class CopyWith$Input$TransitModePreferenceCostInput<TRes> {
  factory CopyWith$Input$TransitModePreferenceCostInput(
    Input$TransitModePreferenceCostInput instance,
    TRes Function(Input$TransitModePreferenceCostInput) then,
  ) = _CopyWithImpl$Input$TransitModePreferenceCostInput;

  factory CopyWith$Input$TransitModePreferenceCostInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransitModePreferenceCostInput;

  TRes call({String? reluctance});
}

class _CopyWithImpl$Input$TransitModePreferenceCostInput<TRes>
    implements CopyWith$Input$TransitModePreferenceCostInput<TRes> {
  _CopyWithImpl$Input$TransitModePreferenceCostInput(
    this._instance,
    this._then,
  );

  final Input$TransitModePreferenceCostInput _instance;

  final TRes Function(Input$TransitModePreferenceCostInput) _then;

  static const _undefined = {};

  TRes call({Object? reluctance = _undefined}) =>
      _then(Input$TransitModePreferenceCostInput._({
        ..._instance._$data,
        if (reluctance != _undefined && reluctance != null)
          'reluctance': (reluctance as String),
      }));
}

class _CopyWithStubImpl$Input$TransitModePreferenceCostInput<TRes>
    implements CopyWith$Input$TransitModePreferenceCostInput<TRes> {
  _CopyWithStubImpl$Input$TransitModePreferenceCostInput(this._res);

  TRes _res;

  call({String? reluctance}) => _res;
}

class Input$TransitPreferencesInput {
  factory Input$TransitPreferencesInput({
    Input$AlightPreferencesInput? alight,
    Input$BoardPreferencesInput? board,
    Input$TimetablePreferencesInput? timetable,
    Input$TransferPreferencesInput? transfer,
  }) =>
      Input$TransitPreferencesInput._({
        if (alight != null) r'alight': alight,
        if (board != null) r'board': board,
        if (timetable != null) r'timetable': timetable,
        if (transfer != null) r'transfer': transfer,
      });

  Input$TransitPreferencesInput._(this._$data);

  factory Input$TransitPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('alight')) {
      final l$alight = data['alight'];
      result$data['alight'] = l$alight == null
          ? null
          : Input$AlightPreferencesInput.fromJson(
              (l$alight as Map<String, dynamic>));
    }
    if (data.containsKey('board')) {
      final l$board = data['board'];
      result$data['board'] = l$board == null
          ? null
          : Input$BoardPreferencesInput.fromJson(
              (l$board as Map<String, dynamic>));
    }
    if (data.containsKey('timetable')) {
      final l$timetable = data['timetable'];
      result$data['timetable'] = l$timetable == null
          ? null
          : Input$TimetablePreferencesInput.fromJson(
              (l$timetable as Map<String, dynamic>));
    }
    if (data.containsKey('transfer')) {
      final l$transfer = data['transfer'];
      result$data['transfer'] = l$transfer == null
          ? null
          : Input$TransferPreferencesInput.fromJson(
              (l$transfer as Map<String, dynamic>));
    }
    return Input$TransitPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AlightPreferencesInput? get alight =>
      (_$data['alight'] as Input$AlightPreferencesInput?);
  Input$BoardPreferencesInput? get board =>
      (_$data['board'] as Input$BoardPreferencesInput?);
  Input$TimetablePreferencesInput? get timetable =>
      (_$data['timetable'] as Input$TimetablePreferencesInput?);
  Input$TransferPreferencesInput? get transfer =>
      (_$data['transfer'] as Input$TransferPreferencesInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('alight')) {
      final l$alight = alight;
      result$data['alight'] = l$alight?.toJson();
    }
    if (_$data.containsKey('board')) {
      final l$board = board;
      result$data['board'] = l$board?.toJson();
    }
    if (_$data.containsKey('timetable')) {
      final l$timetable = timetable;
      result$data['timetable'] = l$timetable?.toJson();
    }
    if (_$data.containsKey('transfer')) {
      final l$transfer = transfer;
      result$data['transfer'] = l$transfer?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TransitPreferencesInput<Input$TransitPreferencesInput>
      get copyWith => CopyWith$Input$TransitPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransitPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$alight = alight;
    final lOther$alight = other.alight;
    if (_$data.containsKey('alight') != other._$data.containsKey('alight')) {
      return false;
    }
    if (l$alight != lOther$alight) {
      return false;
    }
    final l$board = board;
    final lOther$board = other.board;
    if (_$data.containsKey('board') != other._$data.containsKey('board')) {
      return false;
    }
    if (l$board != lOther$board) {
      return false;
    }
    final l$timetable = timetable;
    final lOther$timetable = other.timetable;
    if (_$data.containsKey('timetable') !=
        other._$data.containsKey('timetable')) {
      return false;
    }
    if (l$timetable != lOther$timetable) {
      return false;
    }
    final l$transfer = transfer;
    final lOther$transfer = other.transfer;
    if (_$data.containsKey('transfer') !=
        other._$data.containsKey('transfer')) {
      return false;
    }
    if (l$transfer != lOther$transfer) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$alight = alight;
    final l$board = board;
    final l$timetable = timetable;
    final l$transfer = transfer;
    return Object.hashAll([
      _$data.containsKey('alight') ? l$alight : const {},
      _$data.containsKey('board') ? l$board : const {},
      _$data.containsKey('timetable') ? l$timetable : const {},
      _$data.containsKey('transfer') ? l$transfer : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransitPreferencesInput<TRes> {
  factory CopyWith$Input$TransitPreferencesInput(
    Input$TransitPreferencesInput instance,
    TRes Function(Input$TransitPreferencesInput) then,
  ) = _CopyWithImpl$Input$TransitPreferencesInput;

  factory CopyWith$Input$TransitPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransitPreferencesInput;

  TRes call({
    Input$AlightPreferencesInput? alight,
    Input$BoardPreferencesInput? board,
    Input$TimetablePreferencesInput? timetable,
    Input$TransferPreferencesInput? transfer,
  });
  CopyWith$Input$AlightPreferencesInput<TRes> get alight;
  CopyWith$Input$BoardPreferencesInput<TRes> get board;
  CopyWith$Input$TimetablePreferencesInput<TRes> get timetable;
  CopyWith$Input$TransferPreferencesInput<TRes> get transfer;
}

class _CopyWithImpl$Input$TransitPreferencesInput<TRes>
    implements CopyWith$Input$TransitPreferencesInput<TRes> {
  _CopyWithImpl$Input$TransitPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$TransitPreferencesInput _instance;

  final TRes Function(Input$TransitPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? alight = _undefined,
    Object? board = _undefined,
    Object? timetable = _undefined,
    Object? transfer = _undefined,
  }) =>
      _then(Input$TransitPreferencesInput._({
        ..._instance._$data,
        if (alight != _undefined)
          'alight': (alight as Input$AlightPreferencesInput?),
        if (board != _undefined)
          'board': (board as Input$BoardPreferencesInput?),
        if (timetable != _undefined)
          'timetable': (timetable as Input$TimetablePreferencesInput?),
        if (transfer != _undefined)
          'transfer': (transfer as Input$TransferPreferencesInput?),
      }));
  CopyWith$Input$AlightPreferencesInput<TRes> get alight {
    final local$alight = _instance.alight;
    return local$alight == null
        ? CopyWith$Input$AlightPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$AlightPreferencesInput(
            local$alight, (e) => call(alight: e));
  }

  CopyWith$Input$BoardPreferencesInput<TRes> get board {
    final local$board = _instance.board;
    return local$board == null
        ? CopyWith$Input$BoardPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$BoardPreferencesInput(
            local$board, (e) => call(board: e));
  }

  CopyWith$Input$TimetablePreferencesInput<TRes> get timetable {
    final local$timetable = _instance.timetable;
    return local$timetable == null
        ? CopyWith$Input$TimetablePreferencesInput.stub(_then(_instance))
        : CopyWith$Input$TimetablePreferencesInput(
            local$timetable, (e) => call(timetable: e));
  }

  CopyWith$Input$TransferPreferencesInput<TRes> get transfer {
    final local$transfer = _instance.transfer;
    return local$transfer == null
        ? CopyWith$Input$TransferPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$TransferPreferencesInput(
            local$transfer, (e) => call(transfer: e));
  }
}

class _CopyWithStubImpl$Input$TransitPreferencesInput<TRes>
    implements CopyWith$Input$TransitPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$TransitPreferencesInput(this._res);

  TRes _res;

  call({
    Input$AlightPreferencesInput? alight,
    Input$BoardPreferencesInput? board,
    Input$TimetablePreferencesInput? timetable,
    Input$TransferPreferencesInput? transfer,
  }) =>
      _res;
  CopyWith$Input$AlightPreferencesInput<TRes> get alight =>
      CopyWith$Input$AlightPreferencesInput.stub(_res);
  CopyWith$Input$BoardPreferencesInput<TRes> get board =>
      CopyWith$Input$BoardPreferencesInput.stub(_res);
  CopyWith$Input$TimetablePreferencesInput<TRes> get timetable =>
      CopyWith$Input$TimetablePreferencesInput.stub(_res);
  CopyWith$Input$TransferPreferencesInput<TRes> get transfer =>
      CopyWith$Input$TransferPreferencesInput.stub(_res);
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

class Input$TriangleCyclingFactorsInput {
  factory Input$TriangleCyclingFactorsInput({
    required String flatness,
    required String safety,
    required String time,
  }) =>
      Input$TriangleCyclingFactorsInput._({
        r'flatness': flatness,
        r'safety': safety,
        r'time': time,
      });

  Input$TriangleCyclingFactorsInput._(this._$data);

  factory Input$TriangleCyclingFactorsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$flatness = data['flatness'];
    result$data['flatness'] = (l$flatness as String);
    final l$safety = data['safety'];
    result$data['safety'] = (l$safety as String);
    final l$time = data['time'];
    result$data['time'] = (l$time as String);
    return Input$TriangleCyclingFactorsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get flatness => (_$data['flatness'] as String);
  String get safety => (_$data['safety'] as String);
  String get time => (_$data['time'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$flatness = flatness;
    result$data['flatness'] = l$flatness;
    final l$safety = safety;
    result$data['safety'] = l$safety;
    final l$time = time;
    result$data['time'] = l$time;
    return result$data;
  }

  CopyWith$Input$TriangleCyclingFactorsInput<Input$TriangleCyclingFactorsInput>
      get copyWith => CopyWith$Input$TriangleCyclingFactorsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TriangleCyclingFactorsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$flatness = flatness;
    final lOther$flatness = other.flatness;
    if (l$flatness != lOther$flatness) {
      return false;
    }
    final l$safety = safety;
    final lOther$safety = other.safety;
    if (l$safety != lOther$safety) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$flatness = flatness;
    final l$safety = safety;
    final l$time = time;
    return Object.hashAll([
      l$flatness,
      l$safety,
      l$time,
    ]);
  }
}

abstract class CopyWith$Input$TriangleCyclingFactorsInput<TRes> {
  factory CopyWith$Input$TriangleCyclingFactorsInput(
    Input$TriangleCyclingFactorsInput instance,
    TRes Function(Input$TriangleCyclingFactorsInput) then,
  ) = _CopyWithImpl$Input$TriangleCyclingFactorsInput;

  factory CopyWith$Input$TriangleCyclingFactorsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TriangleCyclingFactorsInput;

  TRes call({
    String? flatness,
    String? safety,
    String? time,
  });
}

class _CopyWithImpl$Input$TriangleCyclingFactorsInput<TRes>
    implements CopyWith$Input$TriangleCyclingFactorsInput<TRes> {
  _CopyWithImpl$Input$TriangleCyclingFactorsInput(
    this._instance,
    this._then,
  );

  final Input$TriangleCyclingFactorsInput _instance;

  final TRes Function(Input$TriangleCyclingFactorsInput) _then;

  static const _undefined = {};

  TRes call({
    Object? flatness = _undefined,
    Object? safety = _undefined,
    Object? time = _undefined,
  }) =>
      _then(Input$TriangleCyclingFactorsInput._({
        ..._instance._$data,
        if (flatness != _undefined && flatness != null)
          'flatness': (flatness as String),
        if (safety != _undefined && safety != null)
          'safety': (safety as String),
        if (time != _undefined && time != null) 'time': (time as String),
      }));
}

class _CopyWithStubImpl$Input$TriangleCyclingFactorsInput<TRes>
    implements CopyWith$Input$TriangleCyclingFactorsInput<TRes> {
  _CopyWithStubImpl$Input$TriangleCyclingFactorsInput(this._res);

  TRes _res;

  call({
    String? flatness,
    String? safety,
    String? time,
  }) =>
      _res;
}

class Input$TriangleScooterFactorsInput {
  factory Input$TriangleScooterFactorsInput({
    required String flatness,
    required String safety,
    required String time,
  }) =>
      Input$TriangleScooterFactorsInput._({
        r'flatness': flatness,
        r'safety': safety,
        r'time': time,
      });

  Input$TriangleScooterFactorsInput._(this._$data);

  factory Input$TriangleScooterFactorsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$flatness = data['flatness'];
    result$data['flatness'] = (l$flatness as String);
    final l$safety = data['safety'];
    result$data['safety'] = (l$safety as String);
    final l$time = data['time'];
    result$data['time'] = (l$time as String);
    return Input$TriangleScooterFactorsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get flatness => (_$data['flatness'] as String);
  String get safety => (_$data['safety'] as String);
  String get time => (_$data['time'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$flatness = flatness;
    result$data['flatness'] = l$flatness;
    final l$safety = safety;
    result$data['safety'] = l$safety;
    final l$time = time;
    result$data['time'] = l$time;
    return result$data;
  }

  CopyWith$Input$TriangleScooterFactorsInput<Input$TriangleScooterFactorsInput>
      get copyWith => CopyWith$Input$TriangleScooterFactorsInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TriangleScooterFactorsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$flatness = flatness;
    final lOther$flatness = other.flatness;
    if (l$flatness != lOther$flatness) {
      return false;
    }
    final l$safety = safety;
    final lOther$safety = other.safety;
    if (l$safety != lOther$safety) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$flatness = flatness;
    final l$safety = safety;
    final l$time = time;
    return Object.hashAll([
      l$flatness,
      l$safety,
      l$time,
    ]);
  }
}

abstract class CopyWith$Input$TriangleScooterFactorsInput<TRes> {
  factory CopyWith$Input$TriangleScooterFactorsInput(
    Input$TriangleScooterFactorsInput instance,
    TRes Function(Input$TriangleScooterFactorsInput) then,
  ) = _CopyWithImpl$Input$TriangleScooterFactorsInput;

  factory CopyWith$Input$TriangleScooterFactorsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TriangleScooterFactorsInput;

  TRes call({
    String? flatness,
    String? safety,
    String? time,
  });
}

class _CopyWithImpl$Input$TriangleScooterFactorsInput<TRes>
    implements CopyWith$Input$TriangleScooterFactorsInput<TRes> {
  _CopyWithImpl$Input$TriangleScooterFactorsInput(
    this._instance,
    this._then,
  );

  final Input$TriangleScooterFactorsInput _instance;

  final TRes Function(Input$TriangleScooterFactorsInput) _then;

  static const _undefined = {};

  TRes call({
    Object? flatness = _undefined,
    Object? safety = _undefined,
    Object? time = _undefined,
  }) =>
      _then(Input$TriangleScooterFactorsInput._({
        ..._instance._$data,
        if (flatness != _undefined && flatness != null)
          'flatness': (flatness as String),
        if (safety != _undefined && safety != null)
          'safety': (safety as String),
        if (time != _undefined && time != null) 'time': (time as String),
      }));
}

class _CopyWithStubImpl$Input$TriangleScooterFactorsInput<TRes>
    implements CopyWith$Input$TriangleScooterFactorsInput<TRes> {
  _CopyWithStubImpl$Input$TriangleScooterFactorsInput(this._res);

  TRes _res;

  call({
    String? flatness,
    String? safety,
    String? time,
  }) =>
      _res;
}

class Input$VehicleParkingInput {
  factory Input$VehicleParkingInput({
    List<Input$ParkingFilter?>? filters,
    List<Input$ParkingFilter?>? preferred,
    int? unpreferredCost,
  }) =>
      Input$VehicleParkingInput._({
        if (filters != null) r'filters': filters,
        if (preferred != null) r'preferred': preferred,
        if (unpreferredCost != null) r'unpreferredCost': unpreferredCost,
      });

  Input$VehicleParkingInput._(this._$data);

  factory Input$VehicleParkingInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filters')) {
      final l$filters = data['filters'];
      result$data['filters'] = (l$filters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$ParkingFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('preferred')) {
      final l$preferred = data['preferred'];
      result$data['preferred'] = (l$preferred as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$ParkingFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('unpreferredCost')) {
      final l$unpreferredCost = data['unpreferredCost'];
      result$data['unpreferredCost'] = (l$unpreferredCost as int?);
    }
    return Input$VehicleParkingInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ParkingFilter?>? get filters =>
      (_$data['filters'] as List<Input$ParkingFilter?>?);
  List<Input$ParkingFilter?>? get preferred =>
      (_$data['preferred'] as List<Input$ParkingFilter?>?);
  int? get unpreferredCost => (_$data['unpreferredCost'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filters')) {
      final l$filters = filters;
      result$data['filters'] = l$filters?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('preferred')) {
      final l$preferred = preferred;
      result$data['preferred'] = l$preferred?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('unpreferredCost')) {
      final l$unpreferredCost = unpreferredCost;
      result$data['unpreferredCost'] = l$unpreferredCost;
    }
    return result$data;
  }

  CopyWith$Input$VehicleParkingInput<Input$VehicleParkingInput> get copyWith =>
      CopyWith$Input$VehicleParkingInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$VehicleParkingInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filters = filters;
    final lOther$filters = other.filters;
    if (_$data.containsKey('filters') != other._$data.containsKey('filters')) {
      return false;
    }
    if (l$filters != null && lOther$filters != null) {
      if (l$filters.length != lOther$filters.length) {
        return false;
      }
      for (int i = 0; i < l$filters.length; i++) {
        final l$filters$entry = l$filters[i];
        final lOther$filters$entry = lOther$filters[i];
        if (l$filters$entry != lOther$filters$entry) {
          return false;
        }
      }
    } else if (l$filters != lOther$filters) {
      return false;
    }
    final l$preferred = preferred;
    final lOther$preferred = other.preferred;
    if (_$data.containsKey('preferred') !=
        other._$data.containsKey('preferred')) {
      return false;
    }
    if (l$preferred != null && lOther$preferred != null) {
      if (l$preferred.length != lOther$preferred.length) {
        return false;
      }
      for (int i = 0; i < l$preferred.length; i++) {
        final l$preferred$entry = l$preferred[i];
        final lOther$preferred$entry = lOther$preferred[i];
        if (l$preferred$entry != lOther$preferred$entry) {
          return false;
        }
      }
    } else if (l$preferred != lOther$preferred) {
      return false;
    }
    final l$unpreferredCost = unpreferredCost;
    final lOther$unpreferredCost = other.unpreferredCost;
    if (_$data.containsKey('unpreferredCost') !=
        other._$data.containsKey('unpreferredCost')) {
      return false;
    }
    if (l$unpreferredCost != lOther$unpreferredCost) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filters = filters;
    final l$preferred = preferred;
    final l$unpreferredCost = unpreferredCost;
    return Object.hashAll([
      _$data.containsKey('filters')
          ? l$filters == null
              ? null
              : Object.hashAll(l$filters.map((v) => v))
          : const {},
      _$data.containsKey('preferred')
          ? l$preferred == null
              ? null
              : Object.hashAll(l$preferred.map((v) => v))
          : const {},
      _$data.containsKey('unpreferredCost') ? l$unpreferredCost : const {},
    ]);
  }
}

abstract class CopyWith$Input$VehicleParkingInput<TRes> {
  factory CopyWith$Input$VehicleParkingInput(
    Input$VehicleParkingInput instance,
    TRes Function(Input$VehicleParkingInput) then,
  ) = _CopyWithImpl$Input$VehicleParkingInput;

  factory CopyWith$Input$VehicleParkingInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VehicleParkingInput;

  TRes call({
    List<Input$ParkingFilter?>? filters,
    List<Input$ParkingFilter?>? preferred,
    int? unpreferredCost,
  });
  TRes filters(
      Iterable<Input$ParkingFilter?>? Function(
              Iterable<CopyWith$Input$ParkingFilter<Input$ParkingFilter>?>?)
          _fn);
  TRes preferred(
      Iterable<Input$ParkingFilter?>? Function(
              Iterable<CopyWith$Input$ParkingFilter<Input$ParkingFilter>?>?)
          _fn);
}

class _CopyWithImpl$Input$VehicleParkingInput<TRes>
    implements CopyWith$Input$VehicleParkingInput<TRes> {
  _CopyWithImpl$Input$VehicleParkingInput(
    this._instance,
    this._then,
  );

  final Input$VehicleParkingInput _instance;

  final TRes Function(Input$VehicleParkingInput) _then;

  static const _undefined = {};

  TRes call({
    Object? filters = _undefined,
    Object? preferred = _undefined,
    Object? unpreferredCost = _undefined,
  }) =>
      _then(Input$VehicleParkingInput._({
        ..._instance._$data,
        if (filters != _undefined)
          'filters': (filters as List<Input$ParkingFilter?>?),
        if (preferred != _undefined)
          'preferred': (preferred as List<Input$ParkingFilter?>?),
        if (unpreferredCost != _undefined)
          'unpreferredCost': (unpreferredCost as int?),
      }));
  TRes filters(
          Iterable<Input$ParkingFilter?>? Function(
                  Iterable<CopyWith$Input$ParkingFilter<Input$ParkingFilter>?>?)
              _fn) =>
      call(
          filters: _fn(_instance.filters?.map((e) => e == null
              ? null
              : CopyWith$Input$ParkingFilter(
                  e,
                  (i) => i,
                )))?.toList());
  TRes preferred(
          Iterable<Input$ParkingFilter?>? Function(
                  Iterable<CopyWith$Input$ParkingFilter<Input$ParkingFilter>?>?)
              _fn) =>
      call(
          preferred: _fn(_instance.preferred?.map((e) => e == null
              ? null
              : CopyWith$Input$ParkingFilter(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$VehicleParkingInput<TRes>
    implements CopyWith$Input$VehicleParkingInput<TRes> {
  _CopyWithStubImpl$Input$VehicleParkingInput(this._res);

  TRes _res;

  call({
    List<Input$ParkingFilter?>? filters,
    List<Input$ParkingFilter?>? preferred,
    int? unpreferredCost,
  }) =>
      _res;
  filters(_fn) => _res;
  preferred(_fn) => _res;
}

class Input$WalkPreferencesInput {
  factory Input$WalkPreferencesInput({
    String? boardCost,
    String? reluctance,
    String? safetyFactor,
    String? speed,
  }) =>
      Input$WalkPreferencesInput._({
        if (boardCost != null) r'boardCost': boardCost,
        if (reluctance != null) r'reluctance': reluctance,
        if (safetyFactor != null) r'safetyFactor': safetyFactor,
        if (speed != null) r'speed': speed,
      });

  Input$WalkPreferencesInput._(this._$data);

  factory Input$WalkPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('boardCost')) {
      final l$boardCost = data['boardCost'];
      result$data['boardCost'] = (l$boardCost as String?);
    }
    if (data.containsKey('reluctance')) {
      final l$reluctance = data['reluctance'];
      result$data['reluctance'] = (l$reluctance as String?);
    }
    if (data.containsKey('safetyFactor')) {
      final l$safetyFactor = data['safetyFactor'];
      result$data['safetyFactor'] = (l$safetyFactor as String?);
    }
    if (data.containsKey('speed')) {
      final l$speed = data['speed'];
      result$data['speed'] = (l$speed as String?);
    }
    return Input$WalkPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get boardCost => (_$data['boardCost'] as String?);
  String? get reluctance => (_$data['reluctance'] as String?);
  String? get safetyFactor => (_$data['safetyFactor'] as String?);
  String? get speed => (_$data['speed'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('boardCost')) {
      final l$boardCost = boardCost;
      result$data['boardCost'] = l$boardCost;
    }
    if (_$data.containsKey('reluctance')) {
      final l$reluctance = reluctance;
      result$data['reluctance'] = l$reluctance;
    }
    if (_$data.containsKey('safetyFactor')) {
      final l$safetyFactor = safetyFactor;
      result$data['safetyFactor'] = l$safetyFactor;
    }
    if (_$data.containsKey('speed')) {
      final l$speed = speed;
      result$data['speed'] = l$speed;
    }
    return result$data;
  }

  CopyWith$Input$WalkPreferencesInput<Input$WalkPreferencesInput>
      get copyWith => CopyWith$Input$WalkPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$WalkPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$boardCost = boardCost;
    final lOther$boardCost = other.boardCost;
    if (_$data.containsKey('boardCost') !=
        other._$data.containsKey('boardCost')) {
      return false;
    }
    if (l$boardCost != lOther$boardCost) {
      return false;
    }
    final l$reluctance = reluctance;
    final lOther$reluctance = other.reluctance;
    if (_$data.containsKey('reluctance') !=
        other._$data.containsKey('reluctance')) {
      return false;
    }
    if (l$reluctance != lOther$reluctance) {
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
    final l$speed = speed;
    final lOther$speed = other.speed;
    if (_$data.containsKey('speed') != other._$data.containsKey('speed')) {
      return false;
    }
    if (l$speed != lOther$speed) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$boardCost = boardCost;
    final l$reluctance = reluctance;
    final l$safetyFactor = safetyFactor;
    final l$speed = speed;
    return Object.hashAll([
      _$data.containsKey('boardCost') ? l$boardCost : const {},
      _$data.containsKey('reluctance') ? l$reluctance : const {},
      _$data.containsKey('safetyFactor') ? l$safetyFactor : const {},
      _$data.containsKey('speed') ? l$speed : const {},
    ]);
  }
}

abstract class CopyWith$Input$WalkPreferencesInput<TRes> {
  factory CopyWith$Input$WalkPreferencesInput(
    Input$WalkPreferencesInput instance,
    TRes Function(Input$WalkPreferencesInput) then,
  ) = _CopyWithImpl$Input$WalkPreferencesInput;

  factory CopyWith$Input$WalkPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$WalkPreferencesInput;

  TRes call({
    String? boardCost,
    String? reluctance,
    String? safetyFactor,
    String? speed,
  });
}

class _CopyWithImpl$Input$WalkPreferencesInput<TRes>
    implements CopyWith$Input$WalkPreferencesInput<TRes> {
  _CopyWithImpl$Input$WalkPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$WalkPreferencesInput _instance;

  final TRes Function(Input$WalkPreferencesInput) _then;

  static const _undefined = {};

  TRes call({
    Object? boardCost = _undefined,
    Object? reluctance = _undefined,
    Object? safetyFactor = _undefined,
    Object? speed = _undefined,
  }) =>
      _then(Input$WalkPreferencesInput._({
        ..._instance._$data,
        if (boardCost != _undefined) 'boardCost': (boardCost as String?),
        if (reluctance != _undefined) 'reluctance': (reluctance as String?),
        if (safetyFactor != _undefined)
          'safetyFactor': (safetyFactor as String?),
        if (speed != _undefined) 'speed': (speed as String?),
      }));
}

class _CopyWithStubImpl$Input$WalkPreferencesInput<TRes>
    implements CopyWith$Input$WalkPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$WalkPreferencesInput(this._res);

  TRes _res;

  call({
    String? boardCost,
    String? reluctance,
    String? safetyFactor,
    String? speed,
  }) =>
      _res;
}

class Input$WheelchairPreferencesInput {
  factory Input$WheelchairPreferencesInput({bool? enabled}) =>
      Input$WheelchairPreferencesInput._({
        if (enabled != null) r'enabled': enabled,
      });

  Input$WheelchairPreferencesInput._(this._$data);

  factory Input$WheelchairPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('enabled')) {
      final l$enabled = data['enabled'];
      result$data['enabled'] = (l$enabled as bool?);
    }
    return Input$WheelchairPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get enabled => (_$data['enabled'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('enabled')) {
      final l$enabled = enabled;
      result$data['enabled'] = l$enabled;
    }
    return result$data;
  }

  CopyWith$Input$WheelchairPreferencesInput<Input$WheelchairPreferencesInput>
      get copyWith => CopyWith$Input$WheelchairPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$WheelchairPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (_$data.containsKey('enabled') != other._$data.containsKey('enabled')) {
      return false;
    }
    if (l$enabled != lOther$enabled) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    return Object.hashAll(
        [_$data.containsKey('enabled') ? l$enabled : const {}]);
  }
}

abstract class CopyWith$Input$WheelchairPreferencesInput<TRes> {
  factory CopyWith$Input$WheelchairPreferencesInput(
    Input$WheelchairPreferencesInput instance,
    TRes Function(Input$WheelchairPreferencesInput) then,
  ) = _CopyWithImpl$Input$WheelchairPreferencesInput;

  factory CopyWith$Input$WheelchairPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$WheelchairPreferencesInput;

  TRes call({bool? enabled});
}

class _CopyWithImpl$Input$WheelchairPreferencesInput<TRes>
    implements CopyWith$Input$WheelchairPreferencesInput<TRes> {
  _CopyWithImpl$Input$WheelchairPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$WheelchairPreferencesInput _instance;

  final TRes Function(Input$WheelchairPreferencesInput) _then;

  static const _undefined = {};

  TRes call({Object? enabled = _undefined}) =>
      _then(Input$WheelchairPreferencesInput._({
        ..._instance._$data,
        if (enabled != _undefined) 'enabled': (enabled as bool?),
      }));
}

class _CopyWithStubImpl$Input$WheelchairPreferencesInput<TRes>
    implements CopyWith$Input$WheelchairPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$WheelchairPreferencesInput(this._res);

  TRes _res;

  call({bool? enabled}) => _res;
}

enum Enum$AbsoluteDirection {
  EAST,
  NORTH,
  NORTHEAST,
  NORTHWEST,
  SOUTH,
  SOUTHEAST,
  SOUTHWEST,
  WEST,
  $unknown
}

String toJson$Enum$AbsoluteDirection(Enum$AbsoluteDirection e) {
  switch (e) {
    case Enum$AbsoluteDirection.EAST:
      return r'EAST';
    case Enum$AbsoluteDirection.NORTH:
      return r'NORTH';
    case Enum$AbsoluteDirection.NORTHEAST:
      return r'NORTHEAST';
    case Enum$AbsoluteDirection.NORTHWEST:
      return r'NORTHWEST';
    case Enum$AbsoluteDirection.SOUTH:
      return r'SOUTH';
    case Enum$AbsoluteDirection.SOUTHEAST:
      return r'SOUTHEAST';
    case Enum$AbsoluteDirection.SOUTHWEST:
      return r'SOUTHWEST';
    case Enum$AbsoluteDirection.WEST:
      return r'WEST';
    case Enum$AbsoluteDirection.$unknown:
      return r'$unknown';
  }
}

Enum$AbsoluteDirection fromJson$Enum$AbsoluteDirection(String value) {
  switch (value) {
    case r'EAST':
      return Enum$AbsoluteDirection.EAST;
    case r'NORTH':
      return Enum$AbsoluteDirection.NORTH;
    case r'NORTHEAST':
      return Enum$AbsoluteDirection.NORTHEAST;
    case r'NORTHWEST':
      return Enum$AbsoluteDirection.NORTHWEST;
    case r'SOUTH':
      return Enum$AbsoluteDirection.SOUTH;
    case r'SOUTHEAST':
      return Enum$AbsoluteDirection.SOUTHEAST;
    case r'SOUTHWEST':
      return Enum$AbsoluteDirection.SOUTHWEST;
    case r'WEST':
      return Enum$AbsoluteDirection.WEST;
    default:
      return Enum$AbsoluteDirection.$unknown;
  }
}

enum Enum$AgencyAlertType { AGENCY, ROUTES, ROUTE_TYPES, $unknown }

String toJson$Enum$AgencyAlertType(Enum$AgencyAlertType e) {
  switch (e) {
    case Enum$AgencyAlertType.AGENCY:
      return r'AGENCY';
    case Enum$AgencyAlertType.ROUTES:
      return r'ROUTES';
    case Enum$AgencyAlertType.ROUTE_TYPES:
      return r'ROUTE_TYPES';
    case Enum$AgencyAlertType.$unknown:
      return r'$unknown';
  }
}

Enum$AgencyAlertType fromJson$Enum$AgencyAlertType(String value) {
  switch (value) {
    case r'AGENCY':
      return Enum$AgencyAlertType.AGENCY;
    case r'ROUTES':
      return Enum$AgencyAlertType.ROUTES;
    case r'ROUTE_TYPES':
      return Enum$AgencyAlertType.ROUTE_TYPES;
    default:
      return Enum$AgencyAlertType.$unknown;
  }
}

enum Enum$AlertCauseType {
  ACCIDENT,
  CONSTRUCTION,
  DEMONSTRATION,
  HOLIDAY,
  MAINTENANCE,
  MEDICAL_EMERGENCY,
  OTHER_CAUSE,
  POLICE_ACTIVITY,
  STRIKE,
  TECHNICAL_PROBLEM,
  UNKNOWN_CAUSE,
  WEATHER,
  $unknown
}

String toJson$Enum$AlertCauseType(Enum$AlertCauseType e) {
  switch (e) {
    case Enum$AlertCauseType.ACCIDENT:
      return r'ACCIDENT';
    case Enum$AlertCauseType.CONSTRUCTION:
      return r'CONSTRUCTION';
    case Enum$AlertCauseType.DEMONSTRATION:
      return r'DEMONSTRATION';
    case Enum$AlertCauseType.HOLIDAY:
      return r'HOLIDAY';
    case Enum$AlertCauseType.MAINTENANCE:
      return r'MAINTENANCE';
    case Enum$AlertCauseType.MEDICAL_EMERGENCY:
      return r'MEDICAL_EMERGENCY';
    case Enum$AlertCauseType.OTHER_CAUSE:
      return r'OTHER_CAUSE';
    case Enum$AlertCauseType.POLICE_ACTIVITY:
      return r'POLICE_ACTIVITY';
    case Enum$AlertCauseType.STRIKE:
      return r'STRIKE';
    case Enum$AlertCauseType.TECHNICAL_PROBLEM:
      return r'TECHNICAL_PROBLEM';
    case Enum$AlertCauseType.UNKNOWN_CAUSE:
      return r'UNKNOWN_CAUSE';
    case Enum$AlertCauseType.WEATHER:
      return r'WEATHER';
    case Enum$AlertCauseType.$unknown:
      return r'$unknown';
  }
}

Enum$AlertCauseType fromJson$Enum$AlertCauseType(String value) {
  switch (value) {
    case r'ACCIDENT':
      return Enum$AlertCauseType.ACCIDENT;
    case r'CONSTRUCTION':
      return Enum$AlertCauseType.CONSTRUCTION;
    case r'DEMONSTRATION':
      return Enum$AlertCauseType.DEMONSTRATION;
    case r'HOLIDAY':
      return Enum$AlertCauseType.HOLIDAY;
    case r'MAINTENANCE':
      return Enum$AlertCauseType.MAINTENANCE;
    case r'MEDICAL_EMERGENCY':
      return Enum$AlertCauseType.MEDICAL_EMERGENCY;
    case r'OTHER_CAUSE':
      return Enum$AlertCauseType.OTHER_CAUSE;
    case r'POLICE_ACTIVITY':
      return Enum$AlertCauseType.POLICE_ACTIVITY;
    case r'STRIKE':
      return Enum$AlertCauseType.STRIKE;
    case r'TECHNICAL_PROBLEM':
      return Enum$AlertCauseType.TECHNICAL_PROBLEM;
    case r'UNKNOWN_CAUSE':
      return Enum$AlertCauseType.UNKNOWN_CAUSE;
    case r'WEATHER':
      return Enum$AlertCauseType.WEATHER;
    default:
      return Enum$AlertCauseType.$unknown;
  }
}

enum Enum$AlertEffectType {
  ACCESSIBILITY_ISSUE,
  ADDITIONAL_SERVICE,
  DETOUR,
  MODIFIED_SERVICE,
  NO_EFFECT,
  NO_SERVICE,
  OTHER_EFFECT,
  REDUCED_SERVICE,
  SIGNIFICANT_DELAYS,
  STOP_MOVED,
  UNKNOWN_EFFECT,
  $unknown
}

String toJson$Enum$AlertEffectType(Enum$AlertEffectType e) {
  switch (e) {
    case Enum$AlertEffectType.ACCESSIBILITY_ISSUE:
      return r'ACCESSIBILITY_ISSUE';
    case Enum$AlertEffectType.ADDITIONAL_SERVICE:
      return r'ADDITIONAL_SERVICE';
    case Enum$AlertEffectType.DETOUR:
      return r'DETOUR';
    case Enum$AlertEffectType.MODIFIED_SERVICE:
      return r'MODIFIED_SERVICE';
    case Enum$AlertEffectType.NO_EFFECT:
      return r'NO_EFFECT';
    case Enum$AlertEffectType.NO_SERVICE:
      return r'NO_SERVICE';
    case Enum$AlertEffectType.OTHER_EFFECT:
      return r'OTHER_EFFECT';
    case Enum$AlertEffectType.REDUCED_SERVICE:
      return r'REDUCED_SERVICE';
    case Enum$AlertEffectType.SIGNIFICANT_DELAYS:
      return r'SIGNIFICANT_DELAYS';
    case Enum$AlertEffectType.STOP_MOVED:
      return r'STOP_MOVED';
    case Enum$AlertEffectType.UNKNOWN_EFFECT:
      return r'UNKNOWN_EFFECT';
    case Enum$AlertEffectType.$unknown:
      return r'$unknown';
  }
}

Enum$AlertEffectType fromJson$Enum$AlertEffectType(String value) {
  switch (value) {
    case r'ACCESSIBILITY_ISSUE':
      return Enum$AlertEffectType.ACCESSIBILITY_ISSUE;
    case r'ADDITIONAL_SERVICE':
      return Enum$AlertEffectType.ADDITIONAL_SERVICE;
    case r'DETOUR':
      return Enum$AlertEffectType.DETOUR;
    case r'MODIFIED_SERVICE':
      return Enum$AlertEffectType.MODIFIED_SERVICE;
    case r'NO_EFFECT':
      return Enum$AlertEffectType.NO_EFFECT;
    case r'NO_SERVICE':
      return Enum$AlertEffectType.NO_SERVICE;
    case r'OTHER_EFFECT':
      return Enum$AlertEffectType.OTHER_EFFECT;
    case r'REDUCED_SERVICE':
      return Enum$AlertEffectType.REDUCED_SERVICE;
    case r'SIGNIFICANT_DELAYS':
      return Enum$AlertEffectType.SIGNIFICANT_DELAYS;
    case r'STOP_MOVED':
      return Enum$AlertEffectType.STOP_MOVED;
    case r'UNKNOWN_EFFECT':
      return Enum$AlertEffectType.UNKNOWN_EFFECT;
    default:
      return Enum$AlertEffectType.$unknown;
  }
}

enum Enum$AlertSeverityLevelType {
  INFO,
  SEVERE,
  UNKNOWN_SEVERITY,
  WARNING,
  $unknown
}

String toJson$Enum$AlertSeverityLevelType(Enum$AlertSeverityLevelType e) {
  switch (e) {
    case Enum$AlertSeverityLevelType.INFO:
      return r'INFO';
    case Enum$AlertSeverityLevelType.SEVERE:
      return r'SEVERE';
    case Enum$AlertSeverityLevelType.UNKNOWN_SEVERITY:
      return r'UNKNOWN_SEVERITY';
    case Enum$AlertSeverityLevelType.WARNING:
      return r'WARNING';
    case Enum$AlertSeverityLevelType.$unknown:
      return r'$unknown';
  }
}

Enum$AlertSeverityLevelType fromJson$Enum$AlertSeverityLevelType(String value) {
  switch (value) {
    case r'INFO':
      return Enum$AlertSeverityLevelType.INFO;
    case r'SEVERE':
      return Enum$AlertSeverityLevelType.SEVERE;
    case r'UNKNOWN_SEVERITY':
      return Enum$AlertSeverityLevelType.UNKNOWN_SEVERITY;
    case r'WARNING':
      return Enum$AlertSeverityLevelType.WARNING;
    default:
      return Enum$AlertSeverityLevelType.$unknown;
  }
}

enum Enum$BikesAllowed { ALLOWED, NOT_ALLOWED, NO_INFORMATION, $unknown }

String toJson$Enum$BikesAllowed(Enum$BikesAllowed e) {
  switch (e) {
    case Enum$BikesAllowed.ALLOWED:
      return r'ALLOWED';
    case Enum$BikesAllowed.NOT_ALLOWED:
      return r'NOT_ALLOWED';
    case Enum$BikesAllowed.NO_INFORMATION:
      return r'NO_INFORMATION';
    case Enum$BikesAllowed.$unknown:
      return r'$unknown';
  }
}

Enum$BikesAllowed fromJson$Enum$BikesAllowed(String value) {
  switch (value) {
    case r'ALLOWED':
      return Enum$BikesAllowed.ALLOWED;
    case r'NOT_ALLOWED':
      return Enum$BikesAllowed.NOT_ALLOWED;
    case r'NO_INFORMATION':
      return Enum$BikesAllowed.NO_INFORMATION;
    default:
      return Enum$BikesAllowed.$unknown;
  }
}

enum Enum$CyclingOptimizationType {
  FLAT_STREETS,
  SAFEST_STREETS,
  SAFE_STREETS,
  SHORTEST_DURATION,
  $unknown
}

String toJson$Enum$CyclingOptimizationType(Enum$CyclingOptimizationType e) {
  switch (e) {
    case Enum$CyclingOptimizationType.FLAT_STREETS:
      return r'FLAT_STREETS';
    case Enum$CyclingOptimizationType.SAFEST_STREETS:
      return r'SAFEST_STREETS';
    case Enum$CyclingOptimizationType.SAFE_STREETS:
      return r'SAFE_STREETS';
    case Enum$CyclingOptimizationType.SHORTEST_DURATION:
      return r'SHORTEST_DURATION';
    case Enum$CyclingOptimizationType.$unknown:
      return r'$unknown';
  }
}

Enum$CyclingOptimizationType fromJson$Enum$CyclingOptimizationType(
    String value) {
  switch (value) {
    case r'FLAT_STREETS':
      return Enum$CyclingOptimizationType.FLAT_STREETS;
    case r'SAFEST_STREETS':
      return Enum$CyclingOptimizationType.SAFEST_STREETS;
    case r'SAFE_STREETS':
      return Enum$CyclingOptimizationType.SAFE_STREETS;
    case r'SHORTEST_DURATION':
      return Enum$CyclingOptimizationType.SHORTEST_DURATION;
    default:
      return Enum$CyclingOptimizationType.$unknown;
  }
}

enum Enum$FeedAlertType { AGENCIES, ROUTE_TYPES, $unknown }

String toJson$Enum$FeedAlertType(Enum$FeedAlertType e) {
  switch (e) {
    case Enum$FeedAlertType.AGENCIES:
      return r'AGENCIES';
    case Enum$FeedAlertType.ROUTE_TYPES:
      return r'ROUTE_TYPES';
    case Enum$FeedAlertType.$unknown:
      return r'$unknown';
  }
}

Enum$FeedAlertType fromJson$Enum$FeedAlertType(String value) {
  switch (value) {
    case r'AGENCIES':
      return Enum$FeedAlertType.AGENCIES;
    case r'ROUTE_TYPES':
      return Enum$FeedAlertType.ROUTE_TYPES;
    default:
      return Enum$FeedAlertType.$unknown;
  }
}

enum Enum$FilterPlaceType {
  BICYCLE_RENT,
  BIKE_PARK,
  CAR_PARK,
  DEPARTURE_ROW,
  STATION,
  STOP,
  VEHICLE_RENT,
  $unknown
}

String toJson$Enum$FilterPlaceType(Enum$FilterPlaceType e) {
  switch (e) {
    case Enum$FilterPlaceType.BICYCLE_RENT:
      return r'BICYCLE_RENT';
    case Enum$FilterPlaceType.BIKE_PARK:
      return r'BIKE_PARK';
    case Enum$FilterPlaceType.CAR_PARK:
      return r'CAR_PARK';
    case Enum$FilterPlaceType.DEPARTURE_ROW:
      return r'DEPARTURE_ROW';
    case Enum$FilterPlaceType.STATION:
      return r'STATION';
    case Enum$FilterPlaceType.STOP:
      return r'STOP';
    case Enum$FilterPlaceType.VEHICLE_RENT:
      return r'VEHICLE_RENT';
    case Enum$FilterPlaceType.$unknown:
      return r'$unknown';
  }
}

Enum$FilterPlaceType fromJson$Enum$FilterPlaceType(String value) {
  switch (value) {
    case r'BICYCLE_RENT':
      return Enum$FilterPlaceType.BICYCLE_RENT;
    case r'BIKE_PARK':
      return Enum$FilterPlaceType.BIKE_PARK;
    case r'CAR_PARK':
      return Enum$FilterPlaceType.CAR_PARK;
    case r'DEPARTURE_ROW':
      return Enum$FilterPlaceType.DEPARTURE_ROW;
    case r'STATION':
      return Enum$FilterPlaceType.STATION;
    case r'STOP':
      return Enum$FilterPlaceType.STOP;
    case r'VEHICLE_RENT':
      return Enum$FilterPlaceType.VEHICLE_RENT;
    default:
      return Enum$FilterPlaceType.$unknown;
  }
}

enum Enum$FormFactor {
  BICYCLE,
  CAR,
  CARGO_BICYCLE,
  MOPED,
  OTHER,
  SCOOTER,
  SCOOTER_SEATED,
  SCOOTER_STANDING,
  $unknown
}

String toJson$Enum$FormFactor(Enum$FormFactor e) {
  switch (e) {
    case Enum$FormFactor.BICYCLE:
      return r'BICYCLE';
    case Enum$FormFactor.CAR:
      return r'CAR';
    case Enum$FormFactor.CARGO_BICYCLE:
      return r'CARGO_BICYCLE';
    case Enum$FormFactor.MOPED:
      return r'MOPED';
    case Enum$FormFactor.OTHER:
      return r'OTHER';
    case Enum$FormFactor.SCOOTER:
      return r'SCOOTER';
    case Enum$FormFactor.SCOOTER_SEATED:
      return r'SCOOTER_SEATED';
    case Enum$FormFactor.SCOOTER_STANDING:
      return r'SCOOTER_STANDING';
    case Enum$FormFactor.$unknown:
      return r'$unknown';
  }
}

Enum$FormFactor fromJson$Enum$FormFactor(String value) {
  switch (value) {
    case r'BICYCLE':
      return Enum$FormFactor.BICYCLE;
    case r'CAR':
      return Enum$FormFactor.CAR;
    case r'CARGO_BICYCLE':
      return Enum$FormFactor.CARGO_BICYCLE;
    case r'MOPED':
      return Enum$FormFactor.MOPED;
    case r'OTHER':
      return Enum$FormFactor.OTHER;
    case r'SCOOTER':
      return Enum$FormFactor.SCOOTER;
    case r'SCOOTER_SEATED':
      return Enum$FormFactor.SCOOTER_SEATED;
    case r'SCOOTER_STANDING':
      return Enum$FormFactor.SCOOTER_STANDING;
    default:
      return Enum$FormFactor.$unknown;
  }
}

enum Enum$InputField { DATE_TIME, FROM, TO, $unknown }

String toJson$Enum$InputField(Enum$InputField e) {
  switch (e) {
    case Enum$InputField.DATE_TIME:
      return r'DATE_TIME';
    case Enum$InputField.FROM:
      return r'FROM';
    case Enum$InputField.TO:
      return r'TO';
    case Enum$InputField.$unknown:
      return r'$unknown';
  }
}

Enum$InputField fromJson$Enum$InputField(String value) {
  switch (value) {
    case r'DATE_TIME':
      return Enum$InputField.DATE_TIME;
    case r'FROM':
      return Enum$InputField.FROM;
    case r'TO':
      return Enum$InputField.TO;
    default:
      return Enum$InputField.$unknown;
  }
}

enum Enum$ItineraryFilterDebugProfile {
  LIMIT_TO_NUMBER_OF_ITINERARIES,
  LIMIT_TO_SEARCH_WINDOW,
  LIST_ALL,
  OFF,
  $unknown
}

String toJson$Enum$ItineraryFilterDebugProfile(
    Enum$ItineraryFilterDebugProfile e) {
  switch (e) {
    case Enum$ItineraryFilterDebugProfile.LIMIT_TO_NUMBER_OF_ITINERARIES:
      return r'LIMIT_TO_NUMBER_OF_ITINERARIES';
    case Enum$ItineraryFilterDebugProfile.LIMIT_TO_SEARCH_WINDOW:
      return r'LIMIT_TO_SEARCH_WINDOW';
    case Enum$ItineraryFilterDebugProfile.LIST_ALL:
      return r'LIST_ALL';
    case Enum$ItineraryFilterDebugProfile.OFF:
      return r'OFF';
    case Enum$ItineraryFilterDebugProfile.$unknown:
      return r'$unknown';
  }
}

Enum$ItineraryFilterDebugProfile fromJson$Enum$ItineraryFilterDebugProfile(
    String value) {
  switch (value) {
    case r'LIMIT_TO_NUMBER_OF_ITINERARIES':
      return Enum$ItineraryFilterDebugProfile.LIMIT_TO_NUMBER_OF_ITINERARIES;
    case r'LIMIT_TO_SEARCH_WINDOW':
      return Enum$ItineraryFilterDebugProfile.LIMIT_TO_SEARCH_WINDOW;
    case r'LIST_ALL':
      return Enum$ItineraryFilterDebugProfile.LIST_ALL;
    case r'OFF':
      return Enum$ItineraryFilterDebugProfile.OFF;
    default:
      return Enum$ItineraryFilterDebugProfile.$unknown;
  }
}

enum Enum$LocationType { ENTRANCE, STATION, STOP, $unknown }

String toJson$Enum$LocationType(Enum$LocationType e) {
  switch (e) {
    case Enum$LocationType.ENTRANCE:
      return r'ENTRANCE';
    case Enum$LocationType.STATION:
      return r'STATION';
    case Enum$LocationType.STOP:
      return r'STOP';
    case Enum$LocationType.$unknown:
      return r'$unknown';
  }
}

Enum$LocationType fromJson$Enum$LocationType(String value) {
  switch (value) {
    case r'ENTRANCE':
      return Enum$LocationType.ENTRANCE;
    case r'STATION':
      return Enum$LocationType.STATION;
    case r'STOP':
      return Enum$LocationType.STOP;
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
  CARPOOL,
  COACH,
  FERRY,
  FLEX,
  FLEXIBLE,
  FUNICULAR,
  GONDOLA,
  LEG_SWITCH,
  MONORAIL,
  RAIL,
  SCOOTER,
  SUBWAY,
  TAXI,
  TRAM,
  TRANSIT,
  TROLLEYBUS,
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
    case Enum$Mode.CARPOOL:
      return r'CARPOOL';
    case Enum$Mode.COACH:
      return r'COACH';
    case Enum$Mode.FERRY:
      return r'FERRY';
    case Enum$Mode.FLEX:
      return r'FLEX';
    case Enum$Mode.FLEXIBLE:
      return r'FLEXIBLE';
    case Enum$Mode.FUNICULAR:
      return r'FUNICULAR';
    case Enum$Mode.GONDOLA:
      return r'GONDOLA';
    case Enum$Mode.LEG_SWITCH:
      return r'LEG_SWITCH';
    case Enum$Mode.MONORAIL:
      return r'MONORAIL';
    case Enum$Mode.RAIL:
      return r'RAIL';
    case Enum$Mode.SCOOTER:
      return r'SCOOTER';
    case Enum$Mode.SUBWAY:
      return r'SUBWAY';
    case Enum$Mode.TAXI:
      return r'TAXI';
    case Enum$Mode.TRAM:
      return r'TRAM';
    case Enum$Mode.TRANSIT:
      return r'TRANSIT';
    case Enum$Mode.TROLLEYBUS:
      return r'TROLLEYBUS';
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
    case r'CARPOOL':
      return Enum$Mode.CARPOOL;
    case r'COACH':
      return Enum$Mode.COACH;
    case r'FERRY':
      return Enum$Mode.FERRY;
    case r'FLEX':
      return Enum$Mode.FLEX;
    case r'FLEXIBLE':
      return Enum$Mode.FLEXIBLE;
    case r'FUNICULAR':
      return Enum$Mode.FUNICULAR;
    case r'GONDOLA':
      return Enum$Mode.GONDOLA;
    case r'LEG_SWITCH':
      return Enum$Mode.LEG_SWITCH;
    case r'MONORAIL':
      return Enum$Mode.MONORAIL;
    case r'RAIL':
      return Enum$Mode.RAIL;
    case r'SCOOTER':
      return Enum$Mode.SCOOTER;
    case r'SUBWAY':
      return Enum$Mode.SUBWAY;
    case r'TAXI':
      return Enum$Mode.TAXI;
    case r'TRAM':
      return Enum$Mode.TRAM;
    case r'TRANSIT':
      return Enum$Mode.TRANSIT;
    case r'TROLLEYBUS':
      return Enum$Mode.TROLLEYBUS;
    case r'WALK':
      return Enum$Mode.WALK;
    default:
      return Enum$Mode.$unknown;
  }
}

enum Enum$OccupancyStatus {
  CRUSHED_STANDING_ROOM_ONLY,
  EMPTY,
  FEW_SEATS_AVAILABLE,
  FULL,
  MANY_SEATS_AVAILABLE,
  NOT_ACCEPTING_PASSENGERS,
  NO_DATA_AVAILABLE,
  STANDING_ROOM_ONLY,
  $unknown
}

String toJson$Enum$OccupancyStatus(Enum$OccupancyStatus e) {
  switch (e) {
    case Enum$OccupancyStatus.CRUSHED_STANDING_ROOM_ONLY:
      return r'CRUSHED_STANDING_ROOM_ONLY';
    case Enum$OccupancyStatus.EMPTY:
      return r'EMPTY';
    case Enum$OccupancyStatus.FEW_SEATS_AVAILABLE:
      return r'FEW_SEATS_AVAILABLE';
    case Enum$OccupancyStatus.FULL:
      return r'FULL';
    case Enum$OccupancyStatus.MANY_SEATS_AVAILABLE:
      return r'MANY_SEATS_AVAILABLE';
    case Enum$OccupancyStatus.NOT_ACCEPTING_PASSENGERS:
      return r'NOT_ACCEPTING_PASSENGERS';
    case Enum$OccupancyStatus.NO_DATA_AVAILABLE:
      return r'NO_DATA_AVAILABLE';
    case Enum$OccupancyStatus.STANDING_ROOM_ONLY:
      return r'STANDING_ROOM_ONLY';
    case Enum$OccupancyStatus.$unknown:
      return r'$unknown';
  }
}

Enum$OccupancyStatus fromJson$Enum$OccupancyStatus(String value) {
  switch (value) {
    case r'CRUSHED_STANDING_ROOM_ONLY':
      return Enum$OccupancyStatus.CRUSHED_STANDING_ROOM_ONLY;
    case r'EMPTY':
      return Enum$OccupancyStatus.EMPTY;
    case r'FEW_SEATS_AVAILABLE':
      return Enum$OccupancyStatus.FEW_SEATS_AVAILABLE;
    case r'FULL':
      return Enum$OccupancyStatus.FULL;
    case r'MANY_SEATS_AVAILABLE':
      return Enum$OccupancyStatus.MANY_SEATS_AVAILABLE;
    case r'NOT_ACCEPTING_PASSENGERS':
      return Enum$OccupancyStatus.NOT_ACCEPTING_PASSENGERS;
    case r'NO_DATA_AVAILABLE':
      return Enum$OccupancyStatus.NO_DATA_AVAILABLE;
    case r'STANDING_ROOM_ONLY':
      return Enum$OccupancyStatus.STANDING_ROOM_ONLY;
    default:
      return Enum$OccupancyStatus.$unknown;
  }
}

enum Enum$OptimizeType { FLAT, GREENWAYS, QUICK, SAFE, TRIANGLE, $unknown }

String toJson$Enum$OptimizeType(Enum$OptimizeType e) {
  switch (e) {
    case Enum$OptimizeType.FLAT:
      return r'FLAT';
    case Enum$OptimizeType.GREENWAYS:
      return r'GREENWAYS';
    case Enum$OptimizeType.QUICK:
      return r'QUICK';
    case Enum$OptimizeType.SAFE:
      return r'SAFE';
    case Enum$OptimizeType.TRIANGLE:
      return r'TRIANGLE';
    case Enum$OptimizeType.$unknown:
      return r'$unknown';
  }
}

Enum$OptimizeType fromJson$Enum$OptimizeType(String value) {
  switch (value) {
    case r'FLAT':
      return Enum$OptimizeType.FLAT;
    case r'GREENWAYS':
      return Enum$OptimizeType.GREENWAYS;
    case r'QUICK':
      return Enum$OptimizeType.QUICK;
    case r'SAFE':
      return Enum$OptimizeType.SAFE;
    case r'TRIANGLE':
      return Enum$OptimizeType.TRIANGLE;
    default:
      return Enum$OptimizeType.$unknown;
  }
}

enum Enum$PatternAlertType {
  AGENCY,
  PATTERN,
  ROUTE,
  ROUTE_TYPE,
  STOPS_ON_PATTERN,
  STOPS_ON_TRIPS,
  TRIPS,
  $unknown
}

String toJson$Enum$PatternAlertType(Enum$PatternAlertType e) {
  switch (e) {
    case Enum$PatternAlertType.AGENCY:
      return r'AGENCY';
    case Enum$PatternAlertType.PATTERN:
      return r'PATTERN';
    case Enum$PatternAlertType.ROUTE:
      return r'ROUTE';
    case Enum$PatternAlertType.ROUTE_TYPE:
      return r'ROUTE_TYPE';
    case Enum$PatternAlertType.STOPS_ON_PATTERN:
      return r'STOPS_ON_PATTERN';
    case Enum$PatternAlertType.STOPS_ON_TRIPS:
      return r'STOPS_ON_TRIPS';
    case Enum$PatternAlertType.TRIPS:
      return r'TRIPS';
    case Enum$PatternAlertType.$unknown:
      return r'$unknown';
  }
}

Enum$PatternAlertType fromJson$Enum$PatternAlertType(String value) {
  switch (value) {
    case r'AGENCY':
      return Enum$PatternAlertType.AGENCY;
    case r'PATTERN':
      return Enum$PatternAlertType.PATTERN;
    case r'ROUTE':
      return Enum$PatternAlertType.ROUTE;
    case r'ROUTE_TYPE':
      return Enum$PatternAlertType.ROUTE_TYPE;
    case r'STOPS_ON_PATTERN':
      return Enum$PatternAlertType.STOPS_ON_PATTERN;
    case r'STOPS_ON_TRIPS':
      return Enum$PatternAlertType.STOPS_ON_TRIPS;
    case r'TRIPS':
      return Enum$PatternAlertType.TRIPS;
    default:
      return Enum$PatternAlertType.$unknown;
  }
}

enum Enum$PickupDropoffType {
  CALL_AGENCY,
  COORDINATE_WITH_DRIVER,
  NONE,
  SCHEDULED,
  $unknown
}

String toJson$Enum$PickupDropoffType(Enum$PickupDropoffType e) {
  switch (e) {
    case Enum$PickupDropoffType.CALL_AGENCY:
      return r'CALL_AGENCY';
    case Enum$PickupDropoffType.COORDINATE_WITH_DRIVER:
      return r'COORDINATE_WITH_DRIVER';
    case Enum$PickupDropoffType.NONE:
      return r'NONE';
    case Enum$PickupDropoffType.SCHEDULED:
      return r'SCHEDULED';
    case Enum$PickupDropoffType.$unknown:
      return r'$unknown';
  }
}

Enum$PickupDropoffType fromJson$Enum$PickupDropoffType(String value) {
  switch (value) {
    case r'CALL_AGENCY':
      return Enum$PickupDropoffType.CALL_AGENCY;
    case r'COORDINATE_WITH_DRIVER':
      return Enum$PickupDropoffType.COORDINATE_WITH_DRIVER;
    case r'NONE':
      return Enum$PickupDropoffType.NONE;
    case r'SCHEDULED':
      return Enum$PickupDropoffType.SCHEDULED;
    default:
      return Enum$PickupDropoffType.$unknown;
  }
}

enum Enum$PlanAccessMode {
  BICYCLE,
  BICYCLE_PARKING,
  BICYCLE_RENTAL,
  CAR,
  CAR_DROP_OFF,
  CAR_PARKING,
  CAR_RENTAL,
  FLEX,
  SCOOTER_RENTAL,
  WALK,
  $unknown
}

String toJson$Enum$PlanAccessMode(Enum$PlanAccessMode e) {
  switch (e) {
    case Enum$PlanAccessMode.BICYCLE:
      return r'BICYCLE';
    case Enum$PlanAccessMode.BICYCLE_PARKING:
      return r'BICYCLE_PARKING';
    case Enum$PlanAccessMode.BICYCLE_RENTAL:
      return r'BICYCLE_RENTAL';
    case Enum$PlanAccessMode.CAR:
      return r'CAR';
    case Enum$PlanAccessMode.CAR_DROP_OFF:
      return r'CAR_DROP_OFF';
    case Enum$PlanAccessMode.CAR_PARKING:
      return r'CAR_PARKING';
    case Enum$PlanAccessMode.CAR_RENTAL:
      return r'CAR_RENTAL';
    case Enum$PlanAccessMode.FLEX:
      return r'FLEX';
    case Enum$PlanAccessMode.SCOOTER_RENTAL:
      return r'SCOOTER_RENTAL';
    case Enum$PlanAccessMode.WALK:
      return r'WALK';
    case Enum$PlanAccessMode.$unknown:
      return r'$unknown';
  }
}

Enum$PlanAccessMode fromJson$Enum$PlanAccessMode(String value) {
  switch (value) {
    case r'BICYCLE':
      return Enum$PlanAccessMode.BICYCLE;
    case r'BICYCLE_PARKING':
      return Enum$PlanAccessMode.BICYCLE_PARKING;
    case r'BICYCLE_RENTAL':
      return Enum$PlanAccessMode.BICYCLE_RENTAL;
    case r'CAR':
      return Enum$PlanAccessMode.CAR;
    case r'CAR_DROP_OFF':
      return Enum$PlanAccessMode.CAR_DROP_OFF;
    case r'CAR_PARKING':
      return Enum$PlanAccessMode.CAR_PARKING;
    case r'CAR_RENTAL':
      return Enum$PlanAccessMode.CAR_RENTAL;
    case r'FLEX':
      return Enum$PlanAccessMode.FLEX;
    case r'SCOOTER_RENTAL':
      return Enum$PlanAccessMode.SCOOTER_RENTAL;
    case r'WALK':
      return Enum$PlanAccessMode.WALK;
    default:
      return Enum$PlanAccessMode.$unknown;
  }
}

enum Enum$PlanDirectMode {
  BICYCLE,
  BICYCLE_PARKING,
  BICYCLE_RENTAL,
  CAR,
  CAR_PARKING,
  CAR_RENTAL,
  FLEX,
  SCOOTER_RENTAL,
  WALK,
  $unknown
}

String toJson$Enum$PlanDirectMode(Enum$PlanDirectMode e) {
  switch (e) {
    case Enum$PlanDirectMode.BICYCLE:
      return r'BICYCLE';
    case Enum$PlanDirectMode.BICYCLE_PARKING:
      return r'BICYCLE_PARKING';
    case Enum$PlanDirectMode.BICYCLE_RENTAL:
      return r'BICYCLE_RENTAL';
    case Enum$PlanDirectMode.CAR:
      return r'CAR';
    case Enum$PlanDirectMode.CAR_PARKING:
      return r'CAR_PARKING';
    case Enum$PlanDirectMode.CAR_RENTAL:
      return r'CAR_RENTAL';
    case Enum$PlanDirectMode.FLEX:
      return r'FLEX';
    case Enum$PlanDirectMode.SCOOTER_RENTAL:
      return r'SCOOTER_RENTAL';
    case Enum$PlanDirectMode.WALK:
      return r'WALK';
    case Enum$PlanDirectMode.$unknown:
      return r'$unknown';
  }
}

Enum$PlanDirectMode fromJson$Enum$PlanDirectMode(String value) {
  switch (value) {
    case r'BICYCLE':
      return Enum$PlanDirectMode.BICYCLE;
    case r'BICYCLE_PARKING':
      return Enum$PlanDirectMode.BICYCLE_PARKING;
    case r'BICYCLE_RENTAL':
      return Enum$PlanDirectMode.BICYCLE_RENTAL;
    case r'CAR':
      return Enum$PlanDirectMode.CAR;
    case r'CAR_PARKING':
      return Enum$PlanDirectMode.CAR_PARKING;
    case r'CAR_RENTAL':
      return Enum$PlanDirectMode.CAR_RENTAL;
    case r'FLEX':
      return Enum$PlanDirectMode.FLEX;
    case r'SCOOTER_RENTAL':
      return Enum$PlanDirectMode.SCOOTER_RENTAL;
    case r'WALK':
      return Enum$PlanDirectMode.WALK;
    default:
      return Enum$PlanDirectMode.$unknown;
  }
}

enum Enum$PlanEgressMode {
  BICYCLE,
  BICYCLE_RENTAL,
  CAR,
  CAR_PICKUP,
  CAR_RENTAL,
  FLEX,
  SCOOTER_RENTAL,
  WALK,
  $unknown
}

String toJson$Enum$PlanEgressMode(Enum$PlanEgressMode e) {
  switch (e) {
    case Enum$PlanEgressMode.BICYCLE:
      return r'BICYCLE';
    case Enum$PlanEgressMode.BICYCLE_RENTAL:
      return r'BICYCLE_RENTAL';
    case Enum$PlanEgressMode.CAR:
      return r'CAR';
    case Enum$PlanEgressMode.CAR_PICKUP:
      return r'CAR_PICKUP';
    case Enum$PlanEgressMode.CAR_RENTAL:
      return r'CAR_RENTAL';
    case Enum$PlanEgressMode.FLEX:
      return r'FLEX';
    case Enum$PlanEgressMode.SCOOTER_RENTAL:
      return r'SCOOTER_RENTAL';
    case Enum$PlanEgressMode.WALK:
      return r'WALK';
    case Enum$PlanEgressMode.$unknown:
      return r'$unknown';
  }
}

Enum$PlanEgressMode fromJson$Enum$PlanEgressMode(String value) {
  switch (value) {
    case r'BICYCLE':
      return Enum$PlanEgressMode.BICYCLE;
    case r'BICYCLE_RENTAL':
      return Enum$PlanEgressMode.BICYCLE_RENTAL;
    case r'CAR':
      return Enum$PlanEgressMode.CAR;
    case r'CAR_PICKUP':
      return Enum$PlanEgressMode.CAR_PICKUP;
    case r'CAR_RENTAL':
      return Enum$PlanEgressMode.CAR_RENTAL;
    case r'FLEX':
      return Enum$PlanEgressMode.FLEX;
    case r'SCOOTER_RENTAL':
      return Enum$PlanEgressMode.SCOOTER_RENTAL;
    case r'WALK':
      return Enum$PlanEgressMode.WALK;
    default:
      return Enum$PlanEgressMode.$unknown;
  }
}

enum Enum$PlanTransferMode { BICYCLE, CAR, WALK, $unknown }

String toJson$Enum$PlanTransferMode(Enum$PlanTransferMode e) {
  switch (e) {
    case Enum$PlanTransferMode.BICYCLE:
      return r'BICYCLE';
    case Enum$PlanTransferMode.CAR:
      return r'CAR';
    case Enum$PlanTransferMode.WALK:
      return r'WALK';
    case Enum$PlanTransferMode.$unknown:
      return r'$unknown';
  }
}

Enum$PlanTransferMode fromJson$Enum$PlanTransferMode(String value) {
  switch (value) {
    case r'BICYCLE':
      return Enum$PlanTransferMode.BICYCLE;
    case r'CAR':
      return Enum$PlanTransferMode.CAR;
    case r'WALK':
      return Enum$PlanTransferMode.WALK;
    default:
      return Enum$PlanTransferMode.$unknown;
  }
}

enum Enum$PropulsionType {
  COMBUSTION,
  COMBUSTION_DIESEL,
  ELECTRIC,
  ELECTRIC_ASSIST,
  HUMAN,
  HYBRID,
  HYDROGEN_FUEL_CELL,
  PLUG_IN_HYBRID,
  $unknown
}

String toJson$Enum$PropulsionType(Enum$PropulsionType e) {
  switch (e) {
    case Enum$PropulsionType.COMBUSTION:
      return r'COMBUSTION';
    case Enum$PropulsionType.COMBUSTION_DIESEL:
      return r'COMBUSTION_DIESEL';
    case Enum$PropulsionType.ELECTRIC:
      return r'ELECTRIC';
    case Enum$PropulsionType.ELECTRIC_ASSIST:
      return r'ELECTRIC_ASSIST';
    case Enum$PropulsionType.HUMAN:
      return r'HUMAN';
    case Enum$PropulsionType.HYBRID:
      return r'HYBRID';
    case Enum$PropulsionType.HYDROGEN_FUEL_CELL:
      return r'HYDROGEN_FUEL_CELL';
    case Enum$PropulsionType.PLUG_IN_HYBRID:
      return r'PLUG_IN_HYBRID';
    case Enum$PropulsionType.$unknown:
      return r'$unknown';
  }
}

Enum$PropulsionType fromJson$Enum$PropulsionType(String value) {
  switch (value) {
    case r'COMBUSTION':
      return Enum$PropulsionType.COMBUSTION;
    case r'COMBUSTION_DIESEL':
      return Enum$PropulsionType.COMBUSTION_DIESEL;
    case r'ELECTRIC':
      return Enum$PropulsionType.ELECTRIC;
    case r'ELECTRIC_ASSIST':
      return Enum$PropulsionType.ELECTRIC_ASSIST;
    case r'HUMAN':
      return Enum$PropulsionType.HUMAN;
    case r'HYBRID':
      return Enum$PropulsionType.HYBRID;
    case r'HYDROGEN_FUEL_CELL':
      return Enum$PropulsionType.HYDROGEN_FUEL_CELL;
    case r'PLUG_IN_HYBRID':
      return Enum$PropulsionType.PLUG_IN_HYBRID;
    default:
      return Enum$PropulsionType.$unknown;
  }
}

enum Enum$Qualifier {
  ACCESS,
  DIRECT,
  DROPOFF,
  EGRESS,
  HAIL,
  HAVE,
  KEEP,
  PARK,
  PICKUP,
  RENT,
  $unknown
}

String toJson$Enum$Qualifier(Enum$Qualifier e) {
  switch (e) {
    case Enum$Qualifier.ACCESS:
      return r'ACCESS';
    case Enum$Qualifier.DIRECT:
      return r'DIRECT';
    case Enum$Qualifier.DROPOFF:
      return r'DROPOFF';
    case Enum$Qualifier.EGRESS:
      return r'EGRESS';
    case Enum$Qualifier.HAIL:
      return r'HAIL';
    case Enum$Qualifier.HAVE:
      return r'HAVE';
    case Enum$Qualifier.KEEP:
      return r'KEEP';
    case Enum$Qualifier.PARK:
      return r'PARK';
    case Enum$Qualifier.PICKUP:
      return r'PICKUP';
    case Enum$Qualifier.RENT:
      return r'RENT';
    case Enum$Qualifier.$unknown:
      return r'$unknown';
  }
}

Enum$Qualifier fromJson$Enum$Qualifier(String value) {
  switch (value) {
    case r'ACCESS':
      return Enum$Qualifier.ACCESS;
    case r'DIRECT':
      return Enum$Qualifier.DIRECT;
    case r'DROPOFF':
      return Enum$Qualifier.DROPOFF;
    case r'EGRESS':
      return Enum$Qualifier.EGRESS;
    case r'HAIL':
      return Enum$Qualifier.HAIL;
    case r'HAVE':
      return Enum$Qualifier.HAVE;
    case r'KEEP':
      return Enum$Qualifier.KEEP;
    case r'PARK':
      return Enum$Qualifier.PARK;
    case r'PICKUP':
      return Enum$Qualifier.PICKUP;
    case r'RENT':
      return Enum$Qualifier.RENT;
    default:
      return Enum$Qualifier.$unknown;
  }
}

enum Enum$RealtimeState {
  ADDED,
  CANCELED,
  MODIFIED,
  SCHEDULED,
  UPDATED,
  $unknown
}

String toJson$Enum$RealtimeState(Enum$RealtimeState e) {
  switch (e) {
    case Enum$RealtimeState.ADDED:
      return r'ADDED';
    case Enum$RealtimeState.CANCELED:
      return r'CANCELED';
    case Enum$RealtimeState.MODIFIED:
      return r'MODIFIED';
    case Enum$RealtimeState.SCHEDULED:
      return r'SCHEDULED';
    case Enum$RealtimeState.UPDATED:
      return r'UPDATED';
    case Enum$RealtimeState.$unknown:
      return r'$unknown';
  }
}

Enum$RealtimeState fromJson$Enum$RealtimeState(String value) {
  switch (value) {
    case r'ADDED':
      return Enum$RealtimeState.ADDED;
    case r'CANCELED':
      return Enum$RealtimeState.CANCELED;
    case r'MODIFIED':
      return Enum$RealtimeState.MODIFIED;
    case r'SCHEDULED':
      return Enum$RealtimeState.SCHEDULED;
    case r'UPDATED':
      return Enum$RealtimeState.UPDATED;
    default:
      return Enum$RealtimeState.$unknown;
  }
}

enum Enum$RelativeDirection {
  CIRCLE_CLOCKWISE,
  CIRCLE_COUNTERCLOCKWISE,
  CONTINUE,
  DEPART,
  ELEVATOR,
  ENTER_STATION,
  EXIT_STATION,
  FOLLOW_SIGNS,
  HARD_LEFT,
  HARD_RIGHT,
  LEFT,
  RIGHT,
  SLIGHTLY_LEFT,
  SLIGHTLY_RIGHT,
  UTURN_LEFT,
  UTURN_RIGHT,
  $unknown
}

String toJson$Enum$RelativeDirection(Enum$RelativeDirection e) {
  switch (e) {
    case Enum$RelativeDirection.CIRCLE_CLOCKWISE:
      return r'CIRCLE_CLOCKWISE';
    case Enum$RelativeDirection.CIRCLE_COUNTERCLOCKWISE:
      return r'CIRCLE_COUNTERCLOCKWISE';
    case Enum$RelativeDirection.CONTINUE:
      return r'CONTINUE';
    case Enum$RelativeDirection.DEPART:
      return r'DEPART';
    case Enum$RelativeDirection.ELEVATOR:
      return r'ELEVATOR';
    case Enum$RelativeDirection.ENTER_STATION:
      return r'ENTER_STATION';
    case Enum$RelativeDirection.EXIT_STATION:
      return r'EXIT_STATION';
    case Enum$RelativeDirection.FOLLOW_SIGNS:
      return r'FOLLOW_SIGNS';
    case Enum$RelativeDirection.HARD_LEFT:
      return r'HARD_LEFT';
    case Enum$RelativeDirection.HARD_RIGHT:
      return r'HARD_RIGHT';
    case Enum$RelativeDirection.LEFT:
      return r'LEFT';
    case Enum$RelativeDirection.RIGHT:
      return r'RIGHT';
    case Enum$RelativeDirection.SLIGHTLY_LEFT:
      return r'SLIGHTLY_LEFT';
    case Enum$RelativeDirection.SLIGHTLY_RIGHT:
      return r'SLIGHTLY_RIGHT';
    case Enum$RelativeDirection.UTURN_LEFT:
      return r'UTURN_LEFT';
    case Enum$RelativeDirection.UTURN_RIGHT:
      return r'UTURN_RIGHT';
    case Enum$RelativeDirection.$unknown:
      return r'$unknown';
  }
}

Enum$RelativeDirection fromJson$Enum$RelativeDirection(String value) {
  switch (value) {
    case r'CIRCLE_CLOCKWISE':
      return Enum$RelativeDirection.CIRCLE_CLOCKWISE;
    case r'CIRCLE_COUNTERCLOCKWISE':
      return Enum$RelativeDirection.CIRCLE_COUNTERCLOCKWISE;
    case r'CONTINUE':
      return Enum$RelativeDirection.CONTINUE;
    case r'DEPART':
      return Enum$RelativeDirection.DEPART;
    case r'ELEVATOR':
      return Enum$RelativeDirection.ELEVATOR;
    case r'ENTER_STATION':
      return Enum$RelativeDirection.ENTER_STATION;
    case r'EXIT_STATION':
      return Enum$RelativeDirection.EXIT_STATION;
    case r'FOLLOW_SIGNS':
      return Enum$RelativeDirection.FOLLOW_SIGNS;
    case r'HARD_LEFT':
      return Enum$RelativeDirection.HARD_LEFT;
    case r'HARD_RIGHT':
      return Enum$RelativeDirection.HARD_RIGHT;
    case r'LEFT':
      return Enum$RelativeDirection.LEFT;
    case r'RIGHT':
      return Enum$RelativeDirection.RIGHT;
    case r'SLIGHTLY_LEFT':
      return Enum$RelativeDirection.SLIGHTLY_LEFT;
    case r'SLIGHTLY_RIGHT':
      return Enum$RelativeDirection.SLIGHTLY_RIGHT;
    case r'UTURN_LEFT':
      return Enum$RelativeDirection.UTURN_LEFT;
    case r'UTURN_RIGHT':
      return Enum$RelativeDirection.UTURN_RIGHT;
    default:
      return Enum$RelativeDirection.$unknown;
  }
}

enum Enum$RouteAlertType {
  AGENCY,
  PATTERNS,
  ROUTE,
  ROUTE_TYPE,
  STOPS_ON_ROUTE,
  STOPS_ON_TRIPS,
  TRIPS,
  $unknown
}

String toJson$Enum$RouteAlertType(Enum$RouteAlertType e) {
  switch (e) {
    case Enum$RouteAlertType.AGENCY:
      return r'AGENCY';
    case Enum$RouteAlertType.PATTERNS:
      return r'PATTERNS';
    case Enum$RouteAlertType.ROUTE:
      return r'ROUTE';
    case Enum$RouteAlertType.ROUTE_TYPE:
      return r'ROUTE_TYPE';
    case Enum$RouteAlertType.STOPS_ON_ROUTE:
      return r'STOPS_ON_ROUTE';
    case Enum$RouteAlertType.STOPS_ON_TRIPS:
      return r'STOPS_ON_TRIPS';
    case Enum$RouteAlertType.TRIPS:
      return r'TRIPS';
    case Enum$RouteAlertType.$unknown:
      return r'$unknown';
  }
}

Enum$RouteAlertType fromJson$Enum$RouteAlertType(String value) {
  switch (value) {
    case r'AGENCY':
      return Enum$RouteAlertType.AGENCY;
    case r'PATTERNS':
      return Enum$RouteAlertType.PATTERNS;
    case r'ROUTE':
      return Enum$RouteAlertType.ROUTE;
    case r'ROUTE_TYPE':
      return Enum$RouteAlertType.ROUTE_TYPE;
    case r'STOPS_ON_ROUTE':
      return Enum$RouteAlertType.STOPS_ON_ROUTE;
    case r'STOPS_ON_TRIPS':
      return Enum$RouteAlertType.STOPS_ON_TRIPS;
    case r'TRIPS':
      return Enum$RouteAlertType.TRIPS;
    default:
      return Enum$RouteAlertType.$unknown;
  }
}

enum Enum$RoutingErrorCode {
  LOCATION_NOT_FOUND,
  NO_STOPS_IN_RANGE,
  NO_TRANSIT_CONNECTION,
  NO_TRANSIT_CONNECTION_IN_SEARCH_WINDOW,
  OUTSIDE_BOUNDS,
  OUTSIDE_SERVICE_PERIOD,
  WALKING_BETTER_THAN_TRANSIT,
  $unknown
}

String toJson$Enum$RoutingErrorCode(Enum$RoutingErrorCode e) {
  switch (e) {
    case Enum$RoutingErrorCode.LOCATION_NOT_FOUND:
      return r'LOCATION_NOT_FOUND';
    case Enum$RoutingErrorCode.NO_STOPS_IN_RANGE:
      return r'NO_STOPS_IN_RANGE';
    case Enum$RoutingErrorCode.NO_TRANSIT_CONNECTION:
      return r'NO_TRANSIT_CONNECTION';
    case Enum$RoutingErrorCode.NO_TRANSIT_CONNECTION_IN_SEARCH_WINDOW:
      return r'NO_TRANSIT_CONNECTION_IN_SEARCH_WINDOW';
    case Enum$RoutingErrorCode.OUTSIDE_BOUNDS:
      return r'OUTSIDE_BOUNDS';
    case Enum$RoutingErrorCode.OUTSIDE_SERVICE_PERIOD:
      return r'OUTSIDE_SERVICE_PERIOD';
    case Enum$RoutingErrorCode.WALKING_BETTER_THAN_TRANSIT:
      return r'WALKING_BETTER_THAN_TRANSIT';
    case Enum$RoutingErrorCode.$unknown:
      return r'$unknown';
  }
}

Enum$RoutingErrorCode fromJson$Enum$RoutingErrorCode(String value) {
  switch (value) {
    case r'LOCATION_NOT_FOUND':
      return Enum$RoutingErrorCode.LOCATION_NOT_FOUND;
    case r'NO_STOPS_IN_RANGE':
      return Enum$RoutingErrorCode.NO_STOPS_IN_RANGE;
    case r'NO_TRANSIT_CONNECTION':
      return Enum$RoutingErrorCode.NO_TRANSIT_CONNECTION;
    case r'NO_TRANSIT_CONNECTION_IN_SEARCH_WINDOW':
      return Enum$RoutingErrorCode.NO_TRANSIT_CONNECTION_IN_SEARCH_WINDOW;
    case r'OUTSIDE_BOUNDS':
      return Enum$RoutingErrorCode.OUTSIDE_BOUNDS;
    case r'OUTSIDE_SERVICE_PERIOD':
      return Enum$RoutingErrorCode.OUTSIDE_SERVICE_PERIOD;
    case r'WALKING_BETTER_THAN_TRANSIT':
      return Enum$RoutingErrorCode.WALKING_BETTER_THAN_TRANSIT;
    default:
      return Enum$RoutingErrorCode.$unknown;
  }
}

enum Enum$ScooterOptimizationType {
  FLAT_STREETS,
  SAFEST_STREETS,
  SAFE_STREETS,
  SHORTEST_DURATION,
  $unknown
}

String toJson$Enum$ScooterOptimizationType(Enum$ScooterOptimizationType e) {
  switch (e) {
    case Enum$ScooterOptimizationType.FLAT_STREETS:
      return r'FLAT_STREETS';
    case Enum$ScooterOptimizationType.SAFEST_STREETS:
      return r'SAFEST_STREETS';
    case Enum$ScooterOptimizationType.SAFE_STREETS:
      return r'SAFE_STREETS';
    case Enum$ScooterOptimizationType.SHORTEST_DURATION:
      return r'SHORTEST_DURATION';
    case Enum$ScooterOptimizationType.$unknown:
      return r'$unknown';
  }
}

Enum$ScooterOptimizationType fromJson$Enum$ScooterOptimizationType(
    String value) {
  switch (value) {
    case r'FLAT_STREETS':
      return Enum$ScooterOptimizationType.FLAT_STREETS;
    case r'SAFEST_STREETS':
      return Enum$ScooterOptimizationType.SAFEST_STREETS;
    case r'SAFE_STREETS':
      return Enum$ScooterOptimizationType.SAFE_STREETS;
    case r'SHORTEST_DURATION':
      return Enum$ScooterOptimizationType.SHORTEST_DURATION;
    default:
      return Enum$ScooterOptimizationType.$unknown;
  }
}

enum Enum$StopAlertType {
  AGENCIES_OF_ROUTES,
  PATTERNS,
  ROUTES,
  STOP,
  STOP_ON_ROUTES,
  STOP_ON_TRIPS,
  TRIPS,
  $unknown
}

String toJson$Enum$StopAlertType(Enum$StopAlertType e) {
  switch (e) {
    case Enum$StopAlertType.AGENCIES_OF_ROUTES:
      return r'AGENCIES_OF_ROUTES';
    case Enum$StopAlertType.PATTERNS:
      return r'PATTERNS';
    case Enum$StopAlertType.ROUTES:
      return r'ROUTES';
    case Enum$StopAlertType.STOP:
      return r'STOP';
    case Enum$StopAlertType.STOP_ON_ROUTES:
      return r'STOP_ON_ROUTES';
    case Enum$StopAlertType.STOP_ON_TRIPS:
      return r'STOP_ON_TRIPS';
    case Enum$StopAlertType.TRIPS:
      return r'TRIPS';
    case Enum$StopAlertType.$unknown:
      return r'$unknown';
  }
}

Enum$StopAlertType fromJson$Enum$StopAlertType(String value) {
  switch (value) {
    case r'AGENCIES_OF_ROUTES':
      return Enum$StopAlertType.AGENCIES_OF_ROUTES;
    case r'PATTERNS':
      return Enum$StopAlertType.PATTERNS;
    case r'ROUTES':
      return Enum$StopAlertType.ROUTES;
    case r'STOP':
      return Enum$StopAlertType.STOP;
    case r'STOP_ON_ROUTES':
      return Enum$StopAlertType.STOP_ON_ROUTES;
    case r'STOP_ON_TRIPS':
      return Enum$StopAlertType.STOP_ON_TRIPS;
    case r'TRIPS':
      return Enum$StopAlertType.TRIPS;
    default:
      return Enum$StopAlertType.$unknown;
  }
}

enum Enum$TransitMode {
  AIRPLANE,
  BUS,
  CABLE_CAR,
  CARPOOL,
  COACH,
  FERRY,
  FUNICULAR,
  GONDOLA,
  MONORAIL,
  RAIL,
  SUBWAY,
  TAXI,
  TRAM,
  TROLLEYBUS,
  $unknown
}

String toJson$Enum$TransitMode(Enum$TransitMode e) {
  switch (e) {
    case Enum$TransitMode.AIRPLANE:
      return r'AIRPLANE';
    case Enum$TransitMode.BUS:
      return r'BUS';
    case Enum$TransitMode.CABLE_CAR:
      return r'CABLE_CAR';
    case Enum$TransitMode.CARPOOL:
      return r'CARPOOL';
    case Enum$TransitMode.COACH:
      return r'COACH';
    case Enum$TransitMode.FERRY:
      return r'FERRY';
    case Enum$TransitMode.FUNICULAR:
      return r'FUNICULAR';
    case Enum$TransitMode.GONDOLA:
      return r'GONDOLA';
    case Enum$TransitMode.MONORAIL:
      return r'MONORAIL';
    case Enum$TransitMode.RAIL:
      return r'RAIL';
    case Enum$TransitMode.SUBWAY:
      return r'SUBWAY';
    case Enum$TransitMode.TAXI:
      return r'TAXI';
    case Enum$TransitMode.TRAM:
      return r'TRAM';
    case Enum$TransitMode.TROLLEYBUS:
      return r'TROLLEYBUS';
    case Enum$TransitMode.$unknown:
      return r'$unknown';
  }
}

Enum$TransitMode fromJson$Enum$TransitMode(String value) {
  switch (value) {
    case r'AIRPLANE':
      return Enum$TransitMode.AIRPLANE;
    case r'BUS':
      return Enum$TransitMode.BUS;
    case r'CABLE_CAR':
      return Enum$TransitMode.CABLE_CAR;
    case r'CARPOOL':
      return Enum$TransitMode.CARPOOL;
    case r'COACH':
      return Enum$TransitMode.COACH;
    case r'FERRY':
      return Enum$TransitMode.FERRY;
    case r'FUNICULAR':
      return Enum$TransitMode.FUNICULAR;
    case r'GONDOLA':
      return Enum$TransitMode.GONDOLA;
    case r'MONORAIL':
      return Enum$TransitMode.MONORAIL;
    case r'RAIL':
      return Enum$TransitMode.RAIL;
    case r'SUBWAY':
      return Enum$TransitMode.SUBWAY;
    case r'TAXI':
      return Enum$TransitMode.TAXI;
    case r'TRAM':
      return Enum$TransitMode.TRAM;
    case r'TROLLEYBUS':
      return Enum$TransitMode.TROLLEYBUS;
    default:
      return Enum$TransitMode.$unknown;
  }
}

enum Enum$TripAlertType {
  AGENCY,
  PATTERN,
  ROUTE,
  ROUTE_TYPE,
  STOPS_ON_TRIP,
  TRIP,
  $unknown
}

String toJson$Enum$TripAlertType(Enum$TripAlertType e) {
  switch (e) {
    case Enum$TripAlertType.AGENCY:
      return r'AGENCY';
    case Enum$TripAlertType.PATTERN:
      return r'PATTERN';
    case Enum$TripAlertType.ROUTE:
      return r'ROUTE';
    case Enum$TripAlertType.ROUTE_TYPE:
      return r'ROUTE_TYPE';
    case Enum$TripAlertType.STOPS_ON_TRIP:
      return r'STOPS_ON_TRIP';
    case Enum$TripAlertType.TRIP:
      return r'TRIP';
    case Enum$TripAlertType.$unknown:
      return r'$unknown';
  }
}

Enum$TripAlertType fromJson$Enum$TripAlertType(String value) {
  switch (value) {
    case r'AGENCY':
      return Enum$TripAlertType.AGENCY;
    case r'PATTERN':
      return Enum$TripAlertType.PATTERN;
    case r'ROUTE':
      return Enum$TripAlertType.ROUTE;
    case r'ROUTE_TYPE':
      return Enum$TripAlertType.ROUTE_TYPE;
    case r'STOPS_ON_TRIP':
      return Enum$TripAlertType.STOPS_ON_TRIP;
    case r'TRIP':
      return Enum$TripAlertType.TRIP;
    default:
      return Enum$TripAlertType.$unknown;
  }
}

enum Enum$VehicleParkingState {
  CLOSED,
  OPERATIONAL,
  TEMPORARILY_CLOSED,
  $unknown
}

String toJson$Enum$VehicleParkingState(Enum$VehicleParkingState e) {
  switch (e) {
    case Enum$VehicleParkingState.CLOSED:
      return r'CLOSED';
    case Enum$VehicleParkingState.OPERATIONAL:
      return r'OPERATIONAL';
    case Enum$VehicleParkingState.TEMPORARILY_CLOSED:
      return r'TEMPORARILY_CLOSED';
    case Enum$VehicleParkingState.$unknown:
      return r'$unknown';
  }
}

Enum$VehicleParkingState fromJson$Enum$VehicleParkingState(String value) {
  switch (value) {
    case r'CLOSED':
      return Enum$VehicleParkingState.CLOSED;
    case r'OPERATIONAL':
      return Enum$VehicleParkingState.OPERATIONAL;
    case r'TEMPORARILY_CLOSED':
      return Enum$VehicleParkingState.TEMPORARILY_CLOSED;
    default:
      return Enum$VehicleParkingState.$unknown;
  }
}

enum Enum$VehicleStopStatus { INCOMING_AT, IN_TRANSIT_TO, STOPPED_AT, $unknown }

String toJson$Enum$VehicleStopStatus(Enum$VehicleStopStatus e) {
  switch (e) {
    case Enum$VehicleStopStatus.INCOMING_AT:
      return r'INCOMING_AT';
    case Enum$VehicleStopStatus.IN_TRANSIT_TO:
      return r'IN_TRANSIT_TO';
    case Enum$VehicleStopStatus.STOPPED_AT:
      return r'STOPPED_AT';
    case Enum$VehicleStopStatus.$unknown:
      return r'$unknown';
  }
}

Enum$VehicleStopStatus fromJson$Enum$VehicleStopStatus(String value) {
  switch (value) {
    case r'INCOMING_AT':
      return Enum$VehicleStopStatus.INCOMING_AT;
    case r'IN_TRANSIT_TO':
      return Enum$VehicleStopStatus.IN_TRANSIT_TO;
    case r'STOPPED_AT':
      return Enum$VehicleStopStatus.STOPPED_AT;
    default:
      return Enum$VehicleStopStatus.$unknown;
  }
}

enum Enum$VertexType {
  BIKEPARK,
  BIKESHARE,
  NORMAL,
  PARKANDRIDE,
  TRANSIT,
  $unknown
}

String toJson$Enum$VertexType(Enum$VertexType e) {
  switch (e) {
    case Enum$VertexType.BIKEPARK:
      return r'BIKEPARK';
    case Enum$VertexType.BIKESHARE:
      return r'BIKESHARE';
    case Enum$VertexType.NORMAL:
      return r'NORMAL';
    case Enum$VertexType.PARKANDRIDE:
      return r'PARKANDRIDE';
    case Enum$VertexType.TRANSIT:
      return r'TRANSIT';
    case Enum$VertexType.$unknown:
      return r'$unknown';
  }
}

Enum$VertexType fromJson$Enum$VertexType(String value) {
  switch (value) {
    case r'BIKEPARK':
      return Enum$VertexType.BIKEPARK;
    case r'BIKESHARE':
      return Enum$VertexType.BIKESHARE;
    case r'NORMAL':
      return Enum$VertexType.NORMAL;
    case r'PARKANDRIDE':
      return Enum$VertexType.PARKANDRIDE;
    case r'TRANSIT':
      return Enum$VertexType.TRANSIT;
    default:
      return Enum$VertexType.$unknown;
  }
}

enum Enum$WheelchairBoarding {
  NOT_POSSIBLE,
  NO_INFORMATION,
  POSSIBLE,
  $unknown
}

String toJson$Enum$WheelchairBoarding(Enum$WheelchairBoarding e) {
  switch (e) {
    case Enum$WheelchairBoarding.NOT_POSSIBLE:
      return r'NOT_POSSIBLE';
    case Enum$WheelchairBoarding.NO_INFORMATION:
      return r'NO_INFORMATION';
    case Enum$WheelchairBoarding.POSSIBLE:
      return r'POSSIBLE';
    case Enum$WheelchairBoarding.$unknown:
      return r'$unknown';
  }
}

Enum$WheelchairBoarding fromJson$Enum$WheelchairBoarding(String value) {
  switch (value) {
    case r'NOT_POSSIBLE':
      return Enum$WheelchairBoarding.NOT_POSSIBLE;
    case r'NO_INFORMATION':
      return Enum$WheelchairBoarding.NO_INFORMATION;
    case r'POSSIBLE':
      return Enum$WheelchairBoarding.POSSIBLE;
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
    'RentalVehicle',
    'Route',
    'Stop',
    'stopAtDistance',
    'TicketType',
    'Trip',
    'VehicleParking',
    'VehicleRentalStation',
  },
  'AlertEntity': {
    'Agency',
    'Pattern',
    'Route',
    'RouteType',
    'Stop',
    'StopOnRoute',
    'StopOnTrip',
    'Trip',
    'Unknown',
  },
  'PlaceInterface': {
    'BikePark',
    'BikeRentalStation',
    'CarPark',
    'DepartureRow',
    'RentalVehicle',
    'Stop',
    'VehicleParking',
    'VehicleRentalStation',
  },
  'CallScheduledTime': {'ArrivalDepartureTime'},
  'CallStopLocation': {'Stop'},
  'FareProduct': {'DefaultFareProduct'},
  'RentalPlace': {
    'RentalVehicle',
    'VehicleRentalStation',
  },
  'StepFeature': {'Entrance'},
  'StopPosition': {
    'PositionAtStop',
    'PositionBetweenStops',
  },
};
