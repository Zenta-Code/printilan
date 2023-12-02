import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/login/login_entity.dart';
import 'package:sky_printing_domain/repositories/login_repository.dart';
import 'package:sky_printing_domain/usecases/user/user_params.dart';

class PostLogin extends UseCase<LoginEntity, LoginParams> {
  final LoginRepository _repo;

  PostLogin(this._repo);

  @override
  Future<Either<Failure, LoginEntity>> call(LoginParams params) =>
      _repo.login(params);
}
