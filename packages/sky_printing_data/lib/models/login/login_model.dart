import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/entities/login_entity.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    int? id,
    String? token,
    String? error,
    UserModel? user,
    StoreModel? store,
  }) = _LoginModel;

  const LoginModel._();

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  LoginEntity toEntity() => LoginEntity(token: token);
}
