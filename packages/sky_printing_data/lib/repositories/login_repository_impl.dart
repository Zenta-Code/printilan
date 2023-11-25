import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/entities/login_entity.dart';
import 'package:sky_printing_domain/entities/user_entity.dart';
import 'package:sky_printing_domain/repositories/login_repository.dart';
import 'package:sky_printing_domain/usecases/post_login.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDatasource _remoteDataSource;
  final MainBoxMixin mainBoxMixin;

  const LoginRepositoryImpl(this._remoteDataSource, this.mainBoxMixin);
  @override
  Future<Either<Failure, LoginEntity>> login(LoginParams loginParams) async {
    final response = await _remoteDataSource.login(loginParams);

    return response.fold(
      (failure) => Left(failure),
      (loginResponse) {
        mainBoxMixin.addData(MainBoxKeys.token, loginResponse.token);
        mainBoxMixin.addData(MainBoxKeys.user, loginResponse.user);
        mainBoxMixin.addData(MainBoxKeys.store, loginResponse.store);

        return Right(loginResponse.toEntity());
      },
    );
  }

  @override
  Future<Either<Failure, UserEntity>> me(String token) async {
    final response = await _remoteDataSource.me(token);

    return response.fold(
      (failure) => Left(failure),
      (meResponse) => Right(meResponse.toEntity()),
    );
  }
}
