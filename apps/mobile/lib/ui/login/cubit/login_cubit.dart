import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this._postLogin,
    this._getMe,
    this._getLocation,
  ) : super(const _Loading());

  final PostLogin _postLogin;
  final GetMe _getMe;
  bool? isPasswordHide = true;
  final GetLocation _getLocation;
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
      (r) async {
        await _getLocation.call(const LocationParams());
        emit(_Success(r.token));
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
