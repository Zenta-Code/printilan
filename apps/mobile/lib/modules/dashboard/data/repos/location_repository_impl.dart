import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/error/failure.dart';
import 'package:sky_printing/core/services/local/location/location_client.dart';
import 'package:sky_printing/modules/dashboard/domain/entities/location.dart';
import 'package:sky_printing/modules/dashboard/domain/repositories/location_repositories.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/get_location.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationClient locationClient;

  LocationRepositoryImpl(this.locationClient);

  @override
  Future<Either<Failure, Location>> getLocation(
      LocationParams locationParams) async {
    final response = await locationClient.getLocation();
    return response.fold(
      (failure) => Left(failure),
      (locationResponse) => Right(
        locationResponse.toEntity(),
      ),
    );
  }
}
