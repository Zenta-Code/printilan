import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_core/usecase/usecase.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'get_order_by_store_usecase.freezed.dart';
part 'get_order_by_store_usecase.g.dart';

class GetOrderByStoreUsecase
    extends UseCase<List<OrderEntity>, GetOrderByStoreParams> {
  final OrderRepository _repo;

  GetOrderByStoreUsecase(this._repo);

  @override
  Future<Either<Failure, List<OrderEntity>>> call(
          GetOrderByStoreParams params) =>
      _repo.getOrderByStore(params);
}

@freezed
class GetOrderByStoreParams with _$GetOrderByStoreParams {
  const factory GetOrderByStoreParams({
    @Default(null) String? storeId,
  }) = _GetOrderByStoreParams;

  factory GetOrderByStoreParams.fromJson(Map<String, dynamic> json) =>
      _$GetOrderByStoreParamsFromJson(json);
}
