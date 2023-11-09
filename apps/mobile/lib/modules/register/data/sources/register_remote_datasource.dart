import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/core/services/remote/api/dio_client.dart';
import 'package:sky_printing/core/services/remote/api/list_api.dart';
import 'package:sky_printing/modules/register/data/models/register_response.dart';
import 'package:sky_printing/modules/register/domain/usecases/post_register.dart';

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
