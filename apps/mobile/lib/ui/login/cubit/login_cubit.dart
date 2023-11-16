import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._postLogin, this._postMe) : super(const _Loading());

  final PostLogin _postLogin;
  final PostMe _postMe;
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

  Future<bool> me(MeParams params) async {
    emit(const _Loading());
    final data = await _postMe.call(params);

    return data.fold(
      (l) {
        return false;
      },
      (r) {
        return true;
      },
    );
  }

  Future<void> logout() async {
    emit(const _Loading());
    isPasswordHide = true;
    await MainBoxMixin().logoutBox();
    emit(const _Success(null));
  }
}
