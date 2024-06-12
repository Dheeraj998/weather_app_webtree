// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      location: json['location'] == null
          ? null
          : LoactionModel.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : CurrentModel.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

_$LoactionModelImpl _$$LoactionModelImplFromJson(Map<String, dynamic> json) =>
    _$LoactionModelImpl(
      name: json['name'] as String?,
      country: json['country'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$LoactionModelImplToJson(_$LoactionModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'isSelected': instance.isSelected,
    };

_$CurrentModelImpl _$$CurrentModelImplFromJson(Map<String, dynamic> json) =>
    _$CurrentModelImpl(
      tempC: (json['temp_c'] as num?)?.toDouble(),
      tempF: (json['temp_f'] as num?)?.toDouble(),
      isday: (json['is_day'] as num?)?.toInt(),
      windKph: (json['wind_kph'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      condition: json['condition'] == null
          ? null
          : ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentModelImplToJson(_$CurrentModelImpl instance) =>
    <String, dynamic>{
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'is_day': instance.isday,
      'wind_kph': instance.windKph,
      'humidity': instance.humidity,
      'condition': instance.condition,
    };

_$ConditionModelImpl _$$ConditionModelImplFromJson(Map<String, dynamic> json) =>
    _$ConditionModelImpl(
      text: json['text'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$ConditionModelImplToJson(
        _$ConditionModelImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
    };
