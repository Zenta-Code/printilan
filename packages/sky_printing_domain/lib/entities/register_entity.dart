import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_entity.freezed.dart';

@freezed
class RegisterEntity with _$RegisterEntity {
  const factory RegisterEntity ({String? token}) = _RegisterEntity;
}
