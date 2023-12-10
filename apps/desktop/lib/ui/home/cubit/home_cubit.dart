import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_admin/dependencies_injection.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetOrderByStoreUsecase _getOrderByStoreUsecase;
  final GetBundleByStoreUsecase _getBundleByStoreUsecase;

  HomeCubit(
    this._getOrderByStoreUsecase,
    this._getBundleByStoreUsecase,
  ) : super(const _Loading());

  final user = sl<MainBoxMixin>().getData(MainBoxKeys.user);
  final store = sl<MainBoxMixin>().getData(MainBoxKeys.store);

  Future<void> fetchData() async {
    Map<String, dynamic>? data = {
      "order": <OrderEntityResponse>[],
      "bundle": <BundleEntity>[],
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
      HomeState.success(data),
      emit: emit,
      isClosed: isClosed,
    );
  }

  int sumOrder(
    List<OrderEntityResponse> data,
  ) {
    List<int> sum = [];
    for (var element in data) {
      sum.add(element.order!.totalPrice!);
    }
    return sum.reduce((value, element) => value + element);
  }
}
