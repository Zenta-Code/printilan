import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/login_entity.dart';
import 'package:sky_printing_domain/repositories/login_repository.dart';

part 'post_login.freezed.dart';
part 'post_login.g.dart';

class PostLogin extends UseCase<LoginEntity , LoginParams> {
  final LoginRepository _repo;

  PostLogin(this._repo);

  @override
  Future<Either<Failure, LoginEntity>> call(LoginParams params) =>
      _repo.login(params);
}

@freezed
class LoginParams with _$LoginParams {
  const factory LoginParams({
    @Default("") String email,
    @Default("") String password,
  }) = _LoginParams;

  factory LoginParams.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsFromJson(json);
}
