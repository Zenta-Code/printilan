import 'package:dartz/dartz.dart';
import 'package:sky_printing_admin/core/core.dart';
import 'package:sky_printing_admin/features/users/users.dart';

abstract class UsersRepository {
  Future<Either<Failure, Users>> users(UsersParams usersParams);
}
