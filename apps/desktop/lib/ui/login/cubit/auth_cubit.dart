import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(
    this._postLogin,
    this._getMe,
  ) : super(const _Init());

  final PostLogin _postLogin;
  final GetMe _getMe;

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
          emit(_Failure(l.message ?? ""));
        }
      },
      (r) {
        if (r.token!.contains("not found")) {
          emit(_Failure(r.token ?? ""));
        } else {
          emit(_Success(r.token));
        }
      },
    );
  }

  Future<UserEntity?> me(MeParams token) async {
    emit(const _Loading());
    final data = await _getMe.call(token);
    return data.fold(
      (l) {
        if (l is ServerFailure) {
          return null;
        }
        return null;
      },
      (r) {
        return r;
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
