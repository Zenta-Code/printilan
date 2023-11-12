import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// Class to handle when useCase don't need params
class NoParams {}
