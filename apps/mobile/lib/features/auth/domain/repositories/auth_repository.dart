import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/features/auth/auth.dart';

abstract class AuthRepository {
  Future<Either<Failure, Login>> login(LoginParams loginParams);

  Future<Either<Failure, Register>> register(RegisterParams registerParams);
}
