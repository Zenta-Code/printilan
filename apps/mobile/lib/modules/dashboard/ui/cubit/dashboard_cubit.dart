import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing/core/error/failure.dart';
import 'package:sky_printing/modules/dashboard/domain/entities/location.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/get_location.dart';
import 'package:sky_printing/utils/utils.dart';

part 'dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(this._getLocation) : super(const _Loading());

  final GetLocation _getLocation;

  Future<void> getLocation(LocationParams params) async {
    log.i("Someone call me");
    emit(const _Loading());
    final data = await _getLocation.call(params);

    data.fold(
      (l) {
        if (l is LocationFailure) {
          emit(_Failure(l.message ?? ""));
        }
        if (l is PermissionFailure) {
          emit(_Failure(l.message ?? ""));
        }
      },
      (r) => emit(_Success(r)),
    );
  }
}
