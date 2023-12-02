import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_core/usecase/usecase.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class DeleteOrderByIdUsecase extends UseCase<void, DeleteOrderByIdParams> {
  final OrderRepository _repo;

  DeleteOrderByIdUsecase(this._repo);

  @override
  Future<Either<Failure, OrderEntity>> call(DeleteOrderByIdParams params) =>
      _repo.deleteOrderById(params);
}
