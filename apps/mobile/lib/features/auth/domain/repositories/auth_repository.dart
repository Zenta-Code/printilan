import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/features/auth/auth.dart';
import 'package:sky_printing/features/login/domain/usecases/post_login.dart';
import 'package:sky_printing/features/register/domain/usecases/post_register.dart';

abstract class AuthRepository {
  Future<Either<Failure, Login>> login(LoginParams loginParams);

  Future<Either<Failure, Register>> register(RegisterParams registerParams);
}
