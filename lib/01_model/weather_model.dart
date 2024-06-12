import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    LoactionModel? location,
    CurrentModel? current,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
class LoactionModel with _$LoactionModel {
  const factory LoactionModel({
    String? name,
    String? country,
    double? lat,
    double? lon,
    @Default(false) bool? isSelected,
  }) = _LoactionModel;

  factory LoactionModel.fromJson(Map<String, dynamic> json) =>
      _$LoactionModelFromJson(json);
}

@freezed
class CurrentModel with _$CurrentModel {
  const factory CurrentModel(
      {@JsonKey(name: 'temp_c') String? tempC,
      @JsonKey(name: 'temp_f') String? tempF,
      @JsonKey(name: 'is_day') String? isday,
      @JsonKey(name: 'wind_kph') String? windKph,
      double? humidity,
      ConditionModel? condition}) = _CurrentModel;

  factory CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentModelFromJson(json);
}

@freezed
class ConditionModel with _$ConditionModel {
  const factory ConditionModel({
    String? text,
    String? icon,
  }) = _ConditionModel;

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);
}