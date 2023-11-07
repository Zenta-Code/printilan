import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/features/login/domain/usecases/post_login.dart'; 
import 'package:sky_printing/utils/utils.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._postLogin) : super(const _Loading());

  final PostLogin _postLogin;

  bool? isPasswordHide = true;

  void showHidePassword() {
    emit(const _Init());
    isPasswordHide = !(isPasswordHide ?? false);
    emit(const _ShowHide());
  }

  Future<void> login(LoginParams params) async {
    emit(const _Loading());
    final data = await _postLogin.call(params);

    data.fold(
      (l) {
        if (l is ServerFailure) {
          log.d(l.message);
          emit(_Failure(l.message ?? ""));
        }
      },
      (r) => emit(_Success(r.token)),
    );
  }

  Future<void> logout() async {
    emit(const _Loading());
    isPasswordHide = true;
    await MainBoxMixin().logoutBox();
    emit(const _Success(null));
  }
}
