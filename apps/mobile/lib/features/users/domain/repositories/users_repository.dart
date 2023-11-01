import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/features/users/users.dart';

abstract class UsersRepository {
  Future<Either<Failure, Users>> users(UsersParams usersParams);
}
