import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'post_register.freezed.dart';
part 'post_register.g.dart';

class PostRegister extends UseCase<RegisterEntity, RegisterParams> {
  final RegisterRepository _repo;

  PostRegister(this._repo);

  @override
  Future<Either<Failure, RegisterEntity>> call(RegisterParams params) =>
      _repo.register(params);
}

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    @Default("") String name,
    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmPassword,
    @Default(null) AddressModel? address,
    @Default("") String phone,
    @Default("customer") String role,
  }) = _RegisterParams;

  factory RegisterParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterParamsFromJson(json);
}
