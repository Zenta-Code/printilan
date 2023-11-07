import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/modules/users/data/datasources/user_remote_datasources.dart';
import 'package:sky_printing/modules/users/domain/entities/users.dart';
import 'package:sky_printing/modules/users/domain/repositories/users_repository.dart';
import 'package:sky_printing/modules/users/domain/usecases/get_users.dart';

class UsersRepositoryImpl implements UsersRepository {
  /// Data Source
  final UsersRemoteDatasource usersRemoteDatasource;

  const UsersRepositoryImpl(this.usersRemoteDatasource);

  @override
  Future<Either<Failure, Users>> users(UsersParams usersParams) async {
    final response = await usersRemoteDatasource.users(usersParams);

    return response.fold(
      (failure) => Left(failure),
      (usersResponse) {
        if (usersResponse.data?.isEmpty ?? true) {
          return Left(NoDataFailure());
        }
        return Right(usersResponse.toEntity());
      },
    );
  }
}
