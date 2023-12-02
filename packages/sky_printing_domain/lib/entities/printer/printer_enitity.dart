import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'printer_enitity.freezed.dart';
part 'printer_enitity.g.dart';

@freezed
class PrinterEntity with _$PrinterEntity {
  @HiveType(typeId: 4, adapterName: 'PrinterEntityAdapter')
  const factory PrinterEntity({
    @HiveField(0) String? id,
    @HiveField(1) String? storeId,
    @HiveField(2) String? printerName,
    @HiveField(3) int? countJobs,
    @HiveField(4) bool? printerOnline,
  }) = _PrinterEntity;
}
