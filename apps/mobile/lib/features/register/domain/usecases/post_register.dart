import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/features/register/domain/entities/register.dart';
import 'package:sky_printing/features/auth/domain/repositories/auth_repository.dart';

part 'post_register.freezed.dart';
part 'post_register.g.dart';

class PostRegister extends UseCase<Register, RegisterParams> {
  final AuthRepository _repo;

  PostRegister(this._repo);

  @override
  Future<Either<Failure, Register>> call(RegisterParams params) =>
      _repo.register(params);
}

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    @Default("") String name,
    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmPassword,
    @Default("") String address,
    @Default("") String phone,
  }) = _RegisterParams;

  factory RegisterParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterParamsFromJson(json);
}
