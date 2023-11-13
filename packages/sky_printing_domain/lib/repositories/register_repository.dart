import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/a_entities.dart';
import 'package:sky_printing_domain/usecases/post_register.dart';

abstract class RegisterRepository {
  Future<Either<Failure, RegisterEntity>> register(RegisterParams registerParams);
}
