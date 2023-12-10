import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';
part 'order_entity_response.dart';

@freezed
class OrderEntity with _$OrderEntity {
  @HiveType(typeId: 2, adapterName: 'OrderEntityAdapter')
  const factory OrderEntity({
    @HiveField(0) @JsonKey(name: '_id') String? id,
    @HiveField(1) String? userId,
    @HiveField(2) String? storeId,
    @HiveField(3) String? documentId,
    @HiveField(4) String? bundleId,
    @HiveField(5) bool? isColor,
    @HiveField(6) String? status,
    @HiveField(7) int? totalPrice,
    @HiveField(8) String? createdAt,
    @HiveField(9) String? updatedAt,
  }) = _OrderEntity;
}
