import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_data/models/login.dart';
import 'package:sky_printing_data/models/store.dart';

import 'user.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    int? id,
    String? token,
    String? error,
    dynamic user,
    dynamic store,
  }) = _LoginResponse;

  const LoginResponse._();

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Login toEntity() => Login(token: token);
}
