import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/modules/register/domain/entities/register.dart';
import 'package:sky_printing/modules/register/domain/usecases/post_register.dart';

abstract class RegisterRepository {
  Future<Either<Failure, Register>> register(RegisterParams registerParams);
}
