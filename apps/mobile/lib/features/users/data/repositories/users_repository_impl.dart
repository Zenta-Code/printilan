import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/features/users/users.dart';

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
