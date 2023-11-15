import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_admin/dependencies_injection.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';

part 'dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final DioClient _client;

  DashboardCubit(this._client) : super(const _Loading());

  final user = sl<MainBoxMixin>().getData(MainBoxKeys.user);

  Future<void> fetchData() async {
    Map<String, dynamic>? data = {
      "order": [],
      "bundle": [],
    };
    emit(const _Loading());
    log.i(user['_id']);
    final order = await _client.getRequest(
      "${ListAPI.order}/list/${user['_id']}",
      converter: (response) {
        final data = response['data'] as List;
        return data.map((e) => Order.fromJson(e)).toList();
      },
    );
    final bundle = await _client.getRequest(
      "${ListAPI.bundle}/list/${user['_id']}",
      converter: (response) {
        final data = response['data'] as List;
        return data.map((e) => Bundle.fromJson(e)).toList();
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
    emit(DashboardState.success(data));
  }
}
