import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/error/failure.dart';
import 'package:sky_printing/modules/dashboard/domain/entities/location.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/get_location.dart';

abstract class LocationRepository {
  Future<Either<Failure, Location>> getLocation(LocationParams locationParams);
}
