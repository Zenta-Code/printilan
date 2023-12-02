import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class PostOrderUsecase extends UseCase<OrderEntity, PostOrderParams> {
  final OrderRepository _repo;

  PostOrderUsecase(this._repo);

  @override
  Future<Either<Failure, OrderEntity>> call(PostOrderParams params) =>
      _repo.postOrder(params);
}
