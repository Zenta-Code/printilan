import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/models/location_response.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';


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
