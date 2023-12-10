import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'history_cubit.freezed.dart';
part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> with MainBoxMixin {
  final GetOrderByUserUsecase _getOrderByUserUsecase;
  HistoryCubit(
    this._getOrderByUserUsecase,
  ) : super(const _Loading());

  void init() {
    getOrderByUser();
  }

  Future<void> getOrderByUser() async {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    final data = await _getOrderByUserUsecase.call(GetOrderByUserParams(
      userId: getData<UserEntity>(MainBoxKeys.user).id!,
    ));
    data.fold(
      (l) {
        if (l is ServerFailure) {
          safeEmit(_Failure(l.message.toString()),
              emit: emit, isClosed: isClosed);
        }
      },
      (success) {
        safeEmit(
          _Success(success),
          emit: emit,
          isClosed: isClosed,
        );
      },
    );
  }
}
