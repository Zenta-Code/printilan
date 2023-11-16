import 'package:freezed_annotation/freezed_annotation.dart';

import 'store.dart';
import 'user.dart';

part 'login.freezed.dart';

@freezed
class Login with _$Login {
  const factory Login({String? token, dynamic user, dynamic store}) = _Login;
}
