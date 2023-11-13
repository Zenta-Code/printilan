import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sources/register_remote_data_source.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';


class RegisterRepositoryImpl implements RegisterRepository {
  final RegisterRemoteDataSource registerRemoteDatasource;
  final MainBoxMixin mainBoxMixin;

  const RegisterRepositoryImpl(
      this.registerRemoteDatasource, this.mainBoxMixin);

  @override
  Future<Either<Failure, RegisterEntity>> register(
      RegisterParams registerParams) async {
    final response = await registerRemoteDatasource.register(registerParams);

    return response.fold(
      (failure) => Left(failure),
      (registerResponse) {
        return Right(registerResponse.toEntity());
      },
    );
  }
}
