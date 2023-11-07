import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/modules/users/domain/entities/users.dart';
import 'package:sky_printing/modules/users/domain/usecases/get_users.dart'; 
abstract class UsersRepository {
  Future<Either<Failure, Users>> users(UsersParams usersParams);
}
