import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/models/register_response.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';


abstract class RegisterRemoteDataSource {
  Future<Either<Failure, RegisterResponse>> register(
    RegisterParams registerParams,
  );
}

class RegisterRemoteDataSourceImpl implements RegisterRemoteDataSource {
  final DioClient _client;

  RegisterRemoteDataSourceImpl(this._client);

  @override
  Future<Either<Failure, RegisterResponse>> register(
    RegisterParams registerParams,
  ) async {
    final response = await _client.postRequest(
      ListAPI.register,
      data: registerParams.toJson(),
      converter: (response) =>
          RegisterResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}
