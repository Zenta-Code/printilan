import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/login_entity.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginEntity>> login(LoginParams loginParams);
  Future<Either<Failure, UserEntity>> me(MeParams token);
}
