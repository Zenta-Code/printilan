import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_core/usecase/usecase.dart';
import 'package:sky_printing_domain/entities/a_entities.dart';
import 'package:sky_printing_domain/repositories/order_repository.dart';

part 'delete_order_by_id_usecase.freezed.dart';
part 'delete_order_by_id_usecase.g.dart';

class DeleteOrderByIdUsecase extends UseCase<void, DeleteOrderByIdParams> {
  final OrderRepository _repo;

  DeleteOrderByIdUsecase(this._repo);

  @override
  Future<Either<Failure, OrderEntity>> call(DeleteOrderByIdParams params) =>
      _repo.deleteOrderById(params);
}

@freezed
class DeleteOrderByIdParams with _$DeleteOrderByIdParams {
  const factory DeleteOrderByIdParams({
    @Default(null) String? orderId,
  }) = _DeleteOrderByIdParams;

  factory DeleteOrderByIdParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteOrderByIdParamsFromJson(json);
}