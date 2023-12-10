import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class AddressRemoteDataSource {
  Future<Either<Failure, String>> getAddressByPostalCode(
    GetDistrictByPostalCodeParams params,
  );
}

class AddressRemoteDataSourceImpl implements AddressRemoteDataSource {
  final DioClient _client;

  const AddressRemoteDataSourceImpl(this._client);

  @override
  Future<Either<Failure, String>> getAddressByPostalCode(
      GetDistrictByPostalCodeParams params) {
    final res = _client.getRequest(
      "${ListAPI.address}/district",
      queryParameters: params.toJson(),
      converter: (response) {
        return response['data'] as String;
      },
    );
    return res;
  }
}
