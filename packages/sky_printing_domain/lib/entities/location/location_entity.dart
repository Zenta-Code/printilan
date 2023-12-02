import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:hive/hive.dart';

part 'location_entity.freezed.dart';
part 'location_entity.g.dart';

@freezed
class LocationEntity with _$LocationEntity {
  @HiveType(typeId: 2, adapterName: 'LocationEntityAdapter')
  const factory LocationEntity({
    @HiveField(0) double? latitude,
    @HiveField(1) double? longitude,
    @HiveField(2) double? accuracy,
    @HiveField(3) double? verticalAccuracy,
    @HiveField(4) double? altitude,
    @HiveField(5) double? speed,
    @HiveField(6) double? speedAccuracy,
    @HiveField(7) double? heading,
    @HiveField(8) double? time,
    @HiveField(9) bool? isMock,
    @HiveField(10) double? headingAccuracy,
    @HiveField(11) double? elapsedRealtimeNanos,
    @HiveField(12) double? elapsedRealtimeUncertaintyNanos,
    @HiveField(13) int? satelliteNumber,
    @HiveField(14) String? provider,
    @HiveField(15) List<Placemark>? placemarks,
  }) = _LocationEntity;
}
