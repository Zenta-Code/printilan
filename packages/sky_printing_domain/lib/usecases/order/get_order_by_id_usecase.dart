import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart  ';
import 'package:sky_printing_domain/entities/order_entity.dart';
import 'package:sky_printing_domain/repositories/order_repository.dart';

part 'get_order_by_id_usecase.freezed.dart';
part 'get_order_by_id_usecase.g.dart';

class GetOrderByIdUsecase extends UseCase<OrderEntity, GetOrderByIdParams> {
  final OrderRepository _repo;

  GetOrderByIdUsecase(this._repo);

  @override
  Future<Either<Failure, OrderEntity>> call(GetOrderByIdParams params) =>
      _repo.getOrderById(params);
}

@freezed
class GetOrderByIdParams with _$GetOrderByIdParams {
  const factory GetOrderByIdParams({
    @Default(null) String? id,
  }) = _GetOrderByIdParams;

  factory GetOrderByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetOrderByIdParamsFromJson(json);
}
