import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class LocationRepository {
  Future<Either<Failure, LocationEntity>> getLocation(
      LocationParams locationParams);
}
