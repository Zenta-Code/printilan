import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/modules/users/users.dart';

abstract class UsersRepository {
  Future<Either<Failure, Users>> users(UsersParams usersParams);
}
