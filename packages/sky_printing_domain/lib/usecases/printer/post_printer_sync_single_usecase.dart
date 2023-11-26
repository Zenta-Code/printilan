import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'post_printer_sync_single_usecase.freezed.dart';
part 'post_printer_sync_single_usecase.g.dart';

class PostPrinterSyncSingleUsecase
    extends UseCase<PrinterEntity, PostPrinterSyncSingleParams> {
  final PrinterRepository _repo;

  PostPrinterSyncSingleUsecase(this._repo);

  @override
  Future<Either<Failure, PrinterEntity>> call(
          PostPrinterSyncSingleParams params) =>
      _repo.postPrinterSyncSingle(params);
}

@freezed
class PostPrinterSyncSingleParams with _$PostPrinterSyncSingleParams {
  const factory PostPrinterSyncSingleParams({
    @Default(null) PrinterModel? printer,
  }) = _PostPrinterSyncSingleParams;

  factory PostPrinterSyncSingleParams.fromJson(Map<String, dynamic> json) =>
      _$PostPrinterSyncSingleParamsFromJson(json);
}
