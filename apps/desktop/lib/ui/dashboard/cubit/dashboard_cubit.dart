import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_admin/dependencies_injection.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final DioClient _client;
  final GetOrderByStoreUsecase _getOrderByStoreUsecase;

  DashboardCubit(
    this._client,
    this._getOrderByStoreUsecase,
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
    log.i(user['_id']);

    final order = await _getOrderByStoreUsecase.call(
      GetOrderByStoreParams(storeId: store['_id']),
    );
    final bundle = await _client.getRequest(
      "${ListAPI.bundle}/list/${user['_id']}",
      converter: (response) {
        final data = response['data'] as List;
        return data.map((e) => BundleModel.fromJson(e)).toList();
      },
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
