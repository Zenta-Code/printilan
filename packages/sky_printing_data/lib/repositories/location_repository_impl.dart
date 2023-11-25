import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sources/local/location_local_data_sources.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationLocalDatasource _localDataSource;
  LocationRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, LocationEntity>> getLocation(
      LocationParams locationParams) async {
    final response = await _localDataSource.getLocation(
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
