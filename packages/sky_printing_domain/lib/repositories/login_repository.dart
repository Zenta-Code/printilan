import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class LoginRepository {
  Future<Either<Failure, Login>> login(LoginParams loginParams);
  Future<Either<Failure, bool>> me(String token);
}
