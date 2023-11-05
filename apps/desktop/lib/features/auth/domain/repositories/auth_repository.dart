import 'package:dartz/dartz.dart';
import 'package:sky_printing_admin/core/core.dart';
import 'package:sky_printing_admin/features/auth/auth.dart';

abstract class AuthRepository {
  Future<Either<Failure, Login>> login(LoginParams loginParams);

  Future<Either<Failure, Register>> register(RegisterParams registerParams);
}
