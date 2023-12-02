import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class LoginRemoteDatasource {
  Future<Either<Failure, LoginModel>> login(LoginParams params);
  Future<Either<Failure, UserModel>> me(MeParams params);
}

class LoginRemoteDatasourceImpl implements LoginRemoteDatasource {
  final DioClient _client;

  LoginRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, LoginModel>> login(LoginParams params) async =>
      await _client.postRequest(
        ListAPI.signIn,
        data: params.toJson(),
        converter: (response) => LoginModel.fromJson(response),
      );

  @override
  Future<Either<Failure, UserModel>> me(MeParams params) async =>
      await _client.getRequest(
        ListAPI.user,
        queryParameters: params.toJson(),
        converter: (response) => UserModel.fromJson(response['data'].first),
      );
}
