import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';

part 'location_entity.freezed.dart';

@freezed
class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    double? latitude,
    double? longitude,
    double? accuracy,
    double? verticalAccuracy,
    double? altitude,
    double? speed,
    double? speedAccuracy,
    double? heading,
    double? time,
    bool? isMock,
    double? headingAccuracy,
    double? elapsedRealtimeNanos,
    double? elapsedRealtimeUncertaintyNanos,
    int? satelliteNumber,
    String? provider,
    List<Placemark>? placemarks,
  }) = _LocationEntity;
}
