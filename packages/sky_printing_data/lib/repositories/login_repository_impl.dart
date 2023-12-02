import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/entities/login_entity.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDatasource _remoteDataSource;
  final MainBoxMixin mainBoxMixin;

  const LoginRepositoryImpl(this._remoteDataSource, this.mainBoxMixin);
  @override
  Future<Either<Failure, LoginEntity>> login(LoginParams params) async {
    final response = await _remoteDataSource.login(params);

    return response.fold(
      (failure) => Left(failure),
      (success) {
        mainBoxMixin.addData(MainBoxKeys.token, success.token);
        mainBoxMixin.addData<UserEntity>(
          MainBoxKeys.user,
          success.user!.toEntity(),
        );
        mainBoxMixin.addData<StoreEntity>(
          MainBoxKeys.store,
          success.store!.toEntity(),
        );

        return Right(
          success.toEntity(),
        );
      },
    );
  }

  @override
  Future<Either<Failure, UserEntity>> me(MeParams params) async {
    final response = await _remoteDataSource.me(params);

    return response.fold(
      (failure) => Left(failure),
      (success) => Right(success.toEntity()),
    );
  }
}
