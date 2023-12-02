import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_admin/dependencies_injection.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final GetOrderByStoreUsecase _getOrderByStoreUsecase;
  final GetBundleByStoreUsecase _getBundleByStoreUsecase;

  DashboardCubit(
    this._getOrderByStoreUsecase,
    this._getBundleByStoreUsecase,
  ) : super(const _Loading());

  final user = sl<MainBoxMixin>().getData(MainBoxKeys.user);
  final store = sl<MainBoxMixin>().getData(MainBoxKeys.store);

  Future<void> fetchData() async {
    Map<String, dynamic>? data = {
      "order": [],
      "bundle": [],
    };
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );

    final order = await _getOrderByStoreUsecase.call(
      GetOrderByStoreParams(storeId: store.id),
    );
    final bundle = await _getBundleByStoreUsecase.call(
      GetBundleByStoreParams(storeId: store.id),
    );
    order.fold(
      (l) => null,
      (r) => data['order'] = r,
    );
    bundle.fold(
      (l) => null,
      (r) => data['bundle'] = r,
    );
    safeEmit(
      DashboardState.success(data),
      emit: emit,
      isClosed: isClosed,
    );
  }
}
