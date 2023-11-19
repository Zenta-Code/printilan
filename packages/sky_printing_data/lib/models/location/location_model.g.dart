// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      accuracy: (json['accuracy'] as num?)?.toDouble(),
      verticalAccuracy: (json['verticalAccuracy'] as num?)?.toDouble(),
      altitude: (json['altitude'] as num?)?.toDouble(),
      speed: (json['speed'] as num?)?.toDouble(),
      speedAccuracy: (json['speedAccuracy'] as num?)?.toDouble(),
      heading: (json['heading'] as num?)?.toDouble(),
      time: (json['time'] as num?)?.toDouble(),
      isMock: json['isMock'] as bool?,
      headingAccuracy: (json['headingAccuracy'] as num?)?.toDouble(),
      elapsedRealtimeNanos: (json['elapsedRealtimeNanos'] as num?)?.toDouble(),
      elapsedRealtimeUncertaintyNanos:
          (json['elapsedRealtimeUncertaintyNanos'] as num?)?.toDouble(),
      satelliteNumber: json['satelliteNumber'] as int?,
      provider: json['provider'] as String?,
      placemarks: _placemarksFromJson(json['placemarks'] as List),
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
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
      'placemarks': _placemarksToJson(instance.placemarks),
    };
