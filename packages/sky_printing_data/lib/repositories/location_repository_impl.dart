import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sources/location_local_data_sources.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationLocalDatasource locationClient;
  LocationRepositoryImpl(this.locationClient);

  @override
  Future<Either<Failure, LocationEntity>> getLocation(
      LocationParams locationParams) async {
    final response = await locationClient.getLocation(
      locationParams,
    );
    return response.fold(
      (failure) => Left(failure),
      (locationResponse) => Right(
        locationResponse.toEntity(),
      ),
    );
  }
}
