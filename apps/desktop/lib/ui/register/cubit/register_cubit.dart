import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';  
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final PostRegister _postRegister;

  /// Handle state visibility password
  bool? isPasswordHide = true;
  bool? isConfirmPasswordHide = true;

  RegisterCubit(this._postRegister) : super(const _Loading());

  void showHidePassword() {
    emit(const _Init());
    isPasswordHide = !(isPasswordHide ?? false);
    emit(const _ShowHidePassword());
  }

  void showHideConfirmPassword() {
    emit(const _Init());
    isConfirmPasswordHide = !(isConfirmPasswordHide ?? false);
    emit(const _ShowHidePassword());
  }

  Future<void> register(RegisterParams params) async {
    emit(const _Loading());
    log.d(params.toJson());
    final data = await _postRegister.call(params);
    data.fold(
      (l) {
        if (l is ServerFailure) {
          emit(_Failure(l.message ?? ""));
        }
      },
      (r) => emit(_Success(r)),
    );
  }
}
