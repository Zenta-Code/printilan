import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_data/sky_printing_data.dart';

part 'user_params.freezed.dart';
part 'user_params.g.dart';

@freezed
class MeParams with _$MeParams {
  const factory MeParams({
    @Default(null) String? id,
    @Default(null) String? email,
  }) = _MeParams;

  factory MeParams.fromJson(Map<String, dynamic> json) =>
      _$MeParamsFromJson(json);
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

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    @Default(null) String? name,
    @Default(null) String? storeName,
    @Default(null) String? phone,
    @Default(null) String? email,
    @Default(null) String? password,
    @Default(null) String? confirmPassword,
    @Default(null) AddressModel? address,
    @Default("customer") String role,
  }) = _RegisterParams;

  factory RegisterParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterParamsFromJson(json);
}

@freezed
class StoreRegisterParams with _$StoreRegisterParams {
  const factory StoreRegisterParams({
    @Default(null) Map<String, dynamic>? user,
    @Default(null) Map<String, dynamic>? store,
  }) = _StoreRegisterParams;

  factory StoreRegisterParams.fromJson(Map<String, dynamic> json) =>
      _$StoreRegisterParamsFromJson(json);
}
