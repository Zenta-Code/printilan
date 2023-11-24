import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    int? id,
    String? token,
    String? error,
  }) = _RegisterModel;

  const RegisterModel._();

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  RegisterEntity toEntity() => RegisterEntity(token: token);
}
