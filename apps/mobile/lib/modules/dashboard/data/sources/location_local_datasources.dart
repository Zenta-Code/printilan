import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/error/failure.dart';
import 'package:sky_printing/core/services/local/location/location_client.dart';
import 'package:sky_printing/modules/dashboard/data/models/location_response.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/get_location.dart';

abstract class LocationLocalDatasource {
  Future<Either<Failure, LocationResponse>> getLocation(
      LocationParams locationParams);
}

class LocationLocalDatasourceImpl implements LocationLocalDatasource {
  final LocationClient _client;

  LocationLocalDatasourceImpl(this._client);

  @override
  Future<Either<Failure, LocationResponse>> getLocation(
      LocationParams locationParams) async {
    final response = await _client.getLocation();
    return response;
  }
}
