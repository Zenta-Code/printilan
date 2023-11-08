import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing/modules/dashboard/domain/entities/location.dart';

part 'location_response.freezed.dart';
part 'location_response.g.dart';

@freezed
class LocationResponse with _$LocationResponse {
  const factory LocationResponse({
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
  }) = _LocationResponse;

  const LocationResponse._();

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);

  Location toEntity() {
    return Location(
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
      verticalAccuracy: verticalAccuracy,
      altitude: altitude,
      speed: speed,
      speedAccuracy: speedAccuracy,
      heading: heading,
      time: time,
      isMock: isMock,
      headingAccuracy: headingAccuracy,
      elapsedRealtimeNanos: elapsedRealtimeNanos,
      elapsedRealtimeUncertaintyNanos: elapsedRealtimeUncertaintyNanos,
      satelliteNumber: satelliteNumber,
      provider: provider,
    );
  }
}
