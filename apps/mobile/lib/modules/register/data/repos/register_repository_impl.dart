import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/error/failure.dart';
import 'package:sky_printing/modules/register/data/sources/register_remote_datasource.dart';
import 'package:sky_printing/modules/register/domain/entities/register.dart';
import 'package:sky_printing/modules/register/domain/repos/register_repository.dart';
import 'package:sky_printing/modules/register/domain/usecases/post_register.dart';
import 'package:sky_printing/utils/services/hive/main_box.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final RegisterRemoteDataSource registerRemoteDatasource;
  final MainBoxMixin mainBoxMixin;

  const RegisterRepositoryImpl(
      this.registerRemoteDatasource, this.mainBoxMixin);

  @override
  Future<Either<Failure, Register>> register(
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
