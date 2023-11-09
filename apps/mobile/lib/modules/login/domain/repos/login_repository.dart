import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/modules/login/domain/entities/login.dart';
import 'package:sky_printing/modules/login/domain/usecases/post_login.dart';

abstract class LoginRepository {
  Future<Either<Failure, Login>> login(LoginParams loginParams);
  Future<Either<Failure, bool>> me(String token);
}
