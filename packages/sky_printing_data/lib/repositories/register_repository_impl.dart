import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sources/remote/register_remote_data_source.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';


class RegisterRepositoryImpl implements RegisterRepository {
  final RegisterRemoteDataSource _remoteDataSource;
  final MainBoxMixin mainBoxMixin;

  const RegisterRepositoryImpl(
      this._remoteDataSource, this.mainBoxMixin);

  @override
  Future<Either<Failure, RegisterEntity>> register(
      RegisterParams registerParams) async {
    final response = await _remoteDataSource.register(registerParams);

    return response.fold(
      (failure) => Left(failure),
      (registerResponse) {
        return Right(registerResponse.toEntity());
      },
    );
  }
}
