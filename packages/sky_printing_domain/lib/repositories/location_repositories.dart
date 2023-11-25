import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/a_entities.dart';
import 'package:sky_printing_domain/usecases/get_location.dart';

abstract class LocationRepository {
  Future<Either<Failure, LocationEntity>> getLocation(
      LocationParams locationParams);
}
