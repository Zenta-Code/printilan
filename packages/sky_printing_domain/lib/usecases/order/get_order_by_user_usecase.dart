import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/order_entity.dart';
import 'package:sky_printing_domain/repositories/order_repository.dart';

part 'get_order_by_user_usecase.freezed.dart';
part 'get_order_by_user_usecase.g.dart';

class GetOrderByUserUsecase extends UseCase<List<OrderEntity>, GetOrderByUserParams> {
  final OrderRepository _repo;

  GetOrderByUserUsecase(this._repo);

  @override
  Future<Either<Failure, List<OrderEntity>>> call(
          GetOrderByUserParams params) =>
      _repo.getOrderByUser(params);
}

@freezed
class GetOrderByUserParams with _$GetOrderByUserParams {
  const factory GetOrderByUserParams({
    @Default(null) String? userId,
  }) = _GetOrderByUserParams;

  factory GetOrderByUserParams.fromJson(Map<String, dynamic> json) =>
      _$GetOrderByUserParamsFromJson(json);
}
