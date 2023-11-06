import 'package:dartz/dartz.dart';
import 'package:sky_printing_admin/core/core.dart';
import 'package:sky_printing_admin/models/login/login.dart'; 
import 'package:sky_printing_admin/models/register/register.dart'; 
import 'package:sky_printing_admin/module/login/usecase/post_login.dart';
import 'package:sky_printing_admin/module/register/usecase/post_register.dart';
import 'package:sky_printing_admin/repos/src/auth_remote_datasources.dart';
import 'package:sky_printing_admin/utils/services/hive/hive.dart';

abstract class AuthRepository {
  Future<Either<Failure, Login>> login(LoginParams loginParams);

  Future<Either<Failure, Register>> register(RegisterParams registerParams);
}

class AuthRepositoryImpl implements AuthRepository {
  /// Data Source
  final AuthRemoteDatasource authRemoteDatasource;
  final MainBoxMixin mainBoxMixin;

  const AuthRepositoryImpl(this.authRemoteDatasource, this.mainBoxMixin);

  @override
  Future<Either<Failure, Login>> login(LoginParams loginParams) async {
    final response = await authRemoteDatasource.login(loginParams);

    return response.fold(
      (failure) => Left(failure),
      (loginResponse) {
        mainBoxMixin.addData(MainBoxKeys.isLogin, true);
        mainBoxMixin.addData(MainBoxKeys.token, loginResponse.token);

        return Right(loginResponse.toEntity());
      },
    );
  }

  @override
  Future<Either<Failure, Register>> register(
    RegisterParams registerParams,
  ) async {
    final response = await authRemoteDatasource.register(registerParams);

    return response.fold(
      (failure) => Left(failure),
      (registerResponse) {
        return Right(registerResponse.toEntity());
      },
    );
  }
}
