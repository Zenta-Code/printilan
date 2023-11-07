import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

@freezed
class Location with _$Location {
  const factory Location({
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
  }) = _Location;
}
