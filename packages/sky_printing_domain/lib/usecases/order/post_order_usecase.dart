import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/order_entity.dart';
import 'package:sky_printing_domain/repositories/order_repository.dart';

part 'post_order_usecase.freezed.dart';
part 'post_order_usecase.g.dart';

class PostOrderUsecase extends UseCase<OrderEntity, PostOrderParams> {
  final OrderRepository _repo;

  PostOrderUsecase(this._repo);

  @override
  Future<Either<Failure, OrderEntity>> call(PostOrderParams params) =>
      _repo.postOrder(params);
}

@freezed
class PostOrderParams with _$PostOrderParams {
  const factory PostOrderParams({
    @Default(0) int copies,
    @Default(0) int pages,
    @Default(0) int price,
    @Default(null) String? storeId,
    @Default(null) String? userId,
    @Default(null) String? fileName,
    @Default(null) String? filePath,
    @Default(null) String? fileType,
    @Default(null) String? fileExtension,
  }) = _PostOrderParams;

  factory PostOrderParams.fromJson(Map<String, dynamic> json) =>
      _$PostOrderParamsFromJson(json);
}
