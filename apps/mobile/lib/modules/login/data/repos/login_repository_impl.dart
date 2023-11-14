import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/error/failure.dart';
import 'package:sky_printing/modules/login/data/sources/login_remote_datasource.dart';
import 'package:sky_printing/modules/login/domain/entities/login.dart';
import 'package:sky_printing/modules/login/domain/repos/login_repository.dart';
import 'package:sky_printing/modules/login/domain/usecases/post_login.dart';
import 'package:sky_printing/utils/services/hive/main_box.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDatasource loginRemoteDatasource;
  final MainBoxMixin mainBoxMixin;

  const LoginRepositoryImpl(this.loginRemoteDatasource, this.mainBoxMixin);
  @override
  Future<Either<Failure, Login>> login(LoginParams loginParams) async {
    final response = await loginRemoteDatasource.login(loginParams);

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
  Future<Either<Failure, bool>> me(String token) async {
    final response = await loginRemoteDatasource.me(token);

    return response.fold(
      (failure) => Left(failure),
      (meResponse) => const Right(true),
    );
  }
}
