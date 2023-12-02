import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart  ';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class GetOrderByIdUsecase extends UseCase<OrderEntity, GetOrderByIdParams> {
  final OrderRepository _repo;

  GetOrderByIdUsecase(this._repo);

  @override
  Future<Either<Failure, OrderEntity>> call(GetOrderByIdParams params) =>
      _repo.getOrderById(params);
}
