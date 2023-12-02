// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationParamsImpl _$$LocationParamsImplFromJson(Map<String, dynamic> json) =>
    _$LocationParamsImpl(
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
      accuracy: (json['accuracy'] as num?)?.toDouble() ?? 0,
      verticalAccuracy: (json['verticalAccuracy'] as num?)?.toDouble() ?? 0,
      altitude: (json['altitude'] as num?)?.toDouble() ?? 0,
      speed: (json['speed'] as num?)?.toDouble() ?? 0,
      speedAccuracy: (json['speedAccuracy'] as num?)?.toDouble() ?? 0,
      heading: (json['heading'] as num?)?.toDouble() ?? 0,
      time: (json['time'] as num?)?.toDouble() ?? 0,
      isMock: json['isMock'] as bool? ?? false,
      headingAccuracy: (json['headingAccuracy'] as num?)?.toDouble() ?? 0,
      elapsedRealtimeNanos:
          (json['elapsedRealtimeNanos'] as num?)?.toDouble() ?? 0,
      elapsedRealtimeUncertaintyNanos:
          (json['elapsedRealtimeUncertaintyNanos'] as num?)?.toDouble() ?? 0,
      satelliteNumber: json['satelliteNumber'] as int? ?? 0,
      provider: json['provider'] as String? ?? '',
    );

Map<String, dynamic> _$$LocationParamsImplToJson(
        _$LocationParamsImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'accuracy': instance.accuracy,
      'verticalAccuracy': instance.verticalAccuracy,
      'altitude': instance.altitude,
      'speed': instance.speed,
      'speedAccuracy': instance.speedAccuracy,
      'heading': instance.heading,
      'time': instance.time,
      'isMock': instance.isMock,
      'headingAccuracy': instance.headingAccuracy,
      'elapsedRealtimeNanos': instance.elapsedRealtimeNanos,
      'elapsedRealtimeUncertaintyNanos':
          instance.elapsedRealtimeUncertaintyNanos,
      'satelliteNumber': instance.satelliteNumber,
      'provider': instance.provider,
    };
