import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_params.freezed.dart';
part 'order_params.g.dart';

@freezed
class DeleteOrderByIdParams with _$DeleteOrderByIdParams {
  const factory DeleteOrderByIdParams({
    @Default(null) String? orderId,
  }) = _DeleteOrderByIdParams;

  factory DeleteOrderByIdParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteOrderByIdParamsFromJson(json);
}

@freezed
class GetOrderByIdParams with _$GetOrderByIdParams {
  const factory GetOrderByIdParams({
    @Default(null) String? id,
  }) = _GetOrderByIdParams;

  factory GetOrderByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetOrderByIdParamsFromJson(json);
}

@freezed
class GetOrderByStoreParams with _$GetOrderByStoreParams {
  const factory GetOrderByStoreParams({
    @Default(null) String? storeId,
  }) = _GetOrderByStoreParams;

  factory GetOrderByStoreParams.fromJson(Map<String, dynamic> json) =>
      _$GetOrderByStoreParamsFromJson(json);
}

@freezed
class GetOrderByUserParams with _$GetOrderByUserParams {
  const factory GetOrderByUserParams({
    @Default(null) String? userId,
  }) = _GetOrderByUserParams;

  factory GetOrderByUserParams.fromJson(Map<String, dynamic> json) =>
      _$GetOrderByUserParamsFromJson(json);
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
