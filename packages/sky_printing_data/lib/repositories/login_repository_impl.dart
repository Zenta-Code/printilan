import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/repositories/login_repository.dart';
import 'package:sky_printing_domain/usecases/post_login.dart';

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
        mainBoxMixin.addData(MainBoxKeys.user, loginResponse.user);
        mainBoxMixin.addData(MainBoxKeys.store, loginResponse.store);

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
