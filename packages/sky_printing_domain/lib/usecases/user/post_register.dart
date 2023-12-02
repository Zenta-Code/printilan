import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class PostRegister extends UseCase<RegisterEntity, RegisterParams> {
  final RegisterRepository _repo;

  PostRegister(this._repo);

  @override
  Future<Either<Failure, RegisterEntity>> call(RegisterParams params) =>
      _repo.register(params);
}
