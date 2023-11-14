import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/a_entities.dart';
import 'package:sky_printing_domain/repositories/location_repositories.dart';


part 'get_location.freezed.dart';
part 'get_location.g.dart';

class GetLocation extends UseCase<LocationEntity, LocationParams> {
  final LocationRepository _repo;

  GetLocation(this._repo);

  @override
  Future<Either<Failure, LocationEntity>> call(LocationParams params) =>
      _repo.getLocation(params);
}

@freezed
class LocationParams with _$LocationParams {
  const factory LocationParams({
    @Default(0) double latitude,
    @Default(0) double longitude,
    @Default(0) double accuracy,
    @Default(0) double verticalAccuracy,
    @Default(0) double altitude,
    @Default(0) double speed,
    @Default(0) double speedAccuracy,
    @Default(0) double heading,
    @Default(0) double time,
    @Default(false) bool isMock,
    @Default(0) double headingAccuracy,
    @Default(0) double elapsedRealtimeNanos,
    @Default(0) double elapsedRealtimeUncertaintyNanos,
    @Default(0) int satelliteNumber,
    @Default('') String provider,
  }) = _LocationParams;

  factory LocationParams.fromJson(Map<String, dynamic> json) =>
      _$LocationParamsFromJson(json);
}
