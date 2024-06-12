// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  LoactionModel? get location => throw _privateConstructorUsedError;
  CurrentModel? get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call({LoactionModel? location, CurrentModel? current});

  $LoactionModelCopyWith<$Res>? get location;
  $CurrentModelCopyWith<$Res>? get current;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LoactionModel?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoactionModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LoactionModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentModelCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentModelCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoactionModel? location, CurrentModel? current});

  @override
  $LoactionModelCopyWith<$Res>? get location;
  @override
  $CurrentModelCopyWith<$Res>? get current;
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_$WeatherModelImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LoactionModel?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl implements _WeatherModel {
  const _$WeatherModelImpl({this.location, this.current});

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  final LoactionModel? location;
  @override
  final CurrentModel? current;

  @override
  String toString() {
    return 'WeatherModel(location: $location, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {final LoactionModel? location,
      final CurrentModel? current}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  LoactionModel? get location;
  @override
  CurrentModel? get current;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoactionModel _$LoactionModelFromJson(Map<String, dynamic> json) {
  return _LoactionModel.fromJson(json);
}

/// @nodoc
mixin _$LoactionModel {
  String? get name => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoactionModelCopyWith<LoactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoactionModelCopyWith<$Res> {
  factory $LoactionModelCopyWith(
          LoactionModel value, $Res Function(LoactionModel) then) =
      _$LoactionModelCopyWithImpl<$Res, LoactionModel>;
  @useResult
  $Res call(
      {String? name,
      String? country,
      double? lat,
      double? lon,
      bool? isSelected});
}

/// @nodoc
class _$LoactionModelCopyWithImpl<$Res, $Val extends LoactionModel>
    implements $LoactionModelCopyWith<$Res> {
  _$LoactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? country = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoactionModelImplCopyWith<$Res>
    implements $LoactionModelCopyWith<$Res> {
  factory _$$LoactionModelImplCopyWith(
          _$LoactionModelImpl value, $Res Function(_$LoactionModelImpl) then) =
      __$$LoactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? country,
      double? lat,
      double? lon,
      bool? isSelected});
}

/// @nodoc
class __$$LoactionModelImplCopyWithImpl<$Res>
    extends _$LoactionModelCopyWithImpl<$Res, _$LoactionModelImpl>
    implements _$$LoactionModelImplCopyWith<$Res> {
  __$$LoactionModelImplCopyWithImpl(
      _$LoactionModelImpl _value, $Res Function(_$LoactionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? country = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$LoactionModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoactionModelImpl implements _LoactionModel {
  const _$LoactionModelImpl(
      {this.name, this.country, this.lat, this.lon, this.isSelected = false});

  factory _$LoactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoactionModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? country;
  @override
  final double? lat;
  @override
  final double? lon;
  @override
  @JsonKey()
  final bool? isSelected;

  @override
  String toString() {
    return 'LoactionModel(name: $name, country: $country, lat: $lat, lon: $lon, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoactionModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, country, lat, lon, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoactionModelImplCopyWith<_$LoactionModelImpl> get copyWith =>
      __$$LoactionModelImplCopyWithImpl<_$LoactionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoactionModelImplToJson(
      this,
    );
  }
}

abstract class _LoactionModel implements LoactionModel {
  const factory _LoactionModel(
      {final String? name,
      final String? country,
      final double? lat,
      final double? lon,
      final bool? isSelected}) = _$LoactionModelImpl;

  factory _LoactionModel.fromJson(Map<String, dynamic> json) =
      _$LoactionModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get country;
  @override
  double? get lat;
  @override
  double? get lon;
  @override
  bool? get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$LoactionModelImplCopyWith<_$LoactionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentModel _$CurrentModelFromJson(Map<String, dynamic> json) {
  return _CurrentModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentModel {
  @JsonKey(name: 'temp_c')
  String? get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_f')
  String? get tempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day')
  String? get isday => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_kph')
  String? get windKph => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;
  ConditionModel? get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentModelCopyWith<CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentModelCopyWith<$Res> {
  factory $CurrentModelCopyWith(
          CurrentModel value, $Res Function(CurrentModel) then) =
      _$CurrentModelCopyWithImpl<$Res, CurrentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temp_c') String? tempC,
      @JsonKey(name: 'temp_f') String? tempF,
      @JsonKey(name: 'is_day') String? isday,
      @JsonKey(name: 'wind_kph') String? windKph,
      double? humidity,
      ConditionModel? condition});

  $ConditionModelCopyWith<$Res>? get condition;
}

/// @nodoc
class _$CurrentModelCopyWithImpl<$Res, $Val extends CurrentModel>
    implements $CurrentModelCopyWith<$Res> {
  _$CurrentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempC = freezed,
    Object? tempF = freezed,
    Object? isday = freezed,
    Object? windKph = freezed,
    Object? humidity = freezed,
    Object? condition = freezed,
  }) {
    return _then(_value.copyWith(
      tempC: freezed == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as String?,
      tempF: freezed == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as String?,
      isday: freezed == isday
          ? _value.isday
          : isday // ignore: cast_nullable_to_non_nullable
              as String?,
      windKph: freezed == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as String?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionModelCopyWith<$Res>? get condition {
    if (_value.condition == null) {
      return null;
    }

    return $ConditionModelCopyWith<$Res>(_value.condition!, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentModelImplCopyWith<$Res>
    implements $CurrentModelCopyWith<$Res> {
  factory _$$CurrentModelImplCopyWith(
          _$CurrentModelImpl value, $Res Function(_$CurrentModelImpl) then) =
      __$$CurrentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temp_c') String? tempC,
      @JsonKey(name: 'temp_f') String? tempF,
      @JsonKey(name: 'is_day') String? isday,
      @JsonKey(name: 'wind_kph') String? windKph,
      double? humidity,
      ConditionModel? condition});

  @override
  $ConditionModelCopyWith<$Res>? get condition;
}

/// @nodoc
class __$$CurrentModelImplCopyWithImpl<$Res>
    extends _$CurrentModelCopyWithImpl<$Res, _$CurrentModelImpl>
    implements _$$CurrentModelImplCopyWith<$Res> {
  __$$CurrentModelImplCopyWithImpl(
      _$CurrentModelImpl _value, $Res Function(_$CurrentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempC = freezed,
    Object? tempF = freezed,
    Object? isday = freezed,
    Object? windKph = freezed,
    Object? humidity = freezed,
    Object? condition = freezed,
  }) {
    return _then(_$CurrentModelImpl(
      tempC: freezed == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as String?,
      tempF: freezed == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as String?,
      isday: freezed == isday
          ? _value.isday
          : isday // ignore: cast_nullable_to_non_nullable
              as String?,
      windKph: freezed == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as String?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentModelImpl implements _CurrentModel {
  const _$CurrentModelImpl(
      {@JsonKey(name: 'temp_c') this.tempC,
      @JsonKey(name: 'temp_f') this.tempF,
      @JsonKey(name: 'is_day') this.isday,
      @JsonKey(name: 'wind_kph') this.windKph,
      this.humidity,
      this.condition});

  factory _$CurrentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentModelImplFromJson(json);

  @override
  @JsonKey(name: 'temp_c')
  final String? tempC;
  @override
  @JsonKey(name: 'temp_f')
  final String? tempF;
  @override
  @JsonKey(name: 'is_day')
  final String? isday;
  @override
  @JsonKey(name: 'wind_kph')
  final String? windKph;
  @override
  final double? humidity;
  @override
  final ConditionModel? condition;

  @override
  String toString() {
    return 'CurrentModel(tempC: $tempC, tempF: $tempF, isday: $isday, windKph: $windKph, humidity: $humidity, condition: $condition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentModelImpl &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.tempF, tempF) || other.tempF == tempF) &&
            (identical(other.isday, isday) || other.isday == isday) &&
            (identical(other.windKph, windKph) || other.windKph == windKph) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, tempC, tempF, isday, windKph, humidity, condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentModelImplCopyWith<_$CurrentModelImpl> get copyWith =>
      __$$CurrentModelImplCopyWithImpl<_$CurrentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentModel implements CurrentModel {
  const factory _CurrentModel(
      {@JsonKey(name: 'temp_c') final String? tempC,
      @JsonKey(name: 'temp_f') final String? tempF,
      @JsonKey(name: 'is_day') final String? isday,
      @JsonKey(name: 'wind_kph') final String? windKph,
      final double? humidity,
      final ConditionModel? condition}) = _$CurrentModelImpl;

  factory _CurrentModel.fromJson(Map<String, dynamic> json) =
      _$CurrentModelImpl.fromJson;

  @override
  @JsonKey(name: 'temp_c')
  String? get tempC;
  @override
  @JsonKey(name: 'temp_f')
  String? get tempF;
  @override
  @JsonKey(name: 'is_day')
  String? get isday;
  @override
  @JsonKey(name: 'wind_kph')
  String? get windKph;
  @override
  double? get humidity;
  @override
  ConditionModel? get condition;
  @override
  @JsonKey(ignore: true)
  _$$CurrentModelImplCopyWith<_$CurrentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConditionModel _$ConditionModelFromJson(Map<String, dynamic> json) {
  return _ConditionModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionModel {
  String? get text => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionModelCopyWith<ConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionModelCopyWith<$Res> {
  factory $ConditionModelCopyWith(
          ConditionModel value, $Res Function(ConditionModel) then) =
      _$ConditionModelCopyWithImpl<$Res, ConditionModel>;
  @useResult
  $Res call({String? text, String? icon});
}

/// @nodoc
class _$ConditionModelCopyWithImpl<$Res, $Val extends ConditionModel>
    implements $ConditionModelCopyWith<$Res> {
  _$ConditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionModelImplCopyWith<$Res>
    implements $ConditionModelCopyWith<$Res> {
  factory _$$ConditionModelImplCopyWith(_$ConditionModelImpl value,
          $Res Function(_$ConditionModelImpl) then) =
      __$$ConditionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? icon});
}

/// @nodoc
class __$$ConditionModelImplCopyWithImpl<$Res>
    extends _$ConditionModelCopyWithImpl<$Res, _$ConditionModelImpl>
    implements _$$ConditionModelImplCopyWith<$Res> {
  __$$ConditionModelImplCopyWithImpl(
      _$ConditionModelImpl _value, $Res Function(_$ConditionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$ConditionModelImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionModelImpl implements _ConditionModel {
  const _$ConditionModelImpl({this.text, this.icon});

  factory _$ConditionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionModelImplFromJson(json);

  @override
  final String? text;
  @override
  final String? icon;

  @override
  String toString() {
    return 'ConditionModel(text: $text, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionModelImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionModelImplCopyWith<_$ConditionModelImpl> get copyWith =>
      __$$ConditionModelImplCopyWithImpl<_$ConditionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionModelImplToJson(
      this,
    );
  }
}

abstract class _ConditionModel implements ConditionModel {
  const factory _ConditionModel({final String? text, final String? icon}) =
      _$ConditionModelImpl;

  factory _ConditionModel.fromJson(Map<String, dynamic> json) =
      _$ConditionModelImpl.fromJson;

  @override
  String? get text;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$ConditionModelImplCopyWith<_$ConditionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
