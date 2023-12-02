import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/a_entities.dart';
import 'package:sky_printing_domain/repositories/login_repository.dart';
import 'package:sky_printing_domain/usecases/user/user_params.dart';

class GetMe extends UseCase<UserEntity, MeParams> {
  final LoginRepository _repo;

  GetMe(this._repo);

  @override
  Future<Either<Failure, UserEntity>> call(MeParams params) => _repo.me(params);
}
