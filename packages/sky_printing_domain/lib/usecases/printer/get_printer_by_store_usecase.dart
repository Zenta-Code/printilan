import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'get_printer_by_store_usecase.freezed.dart';
part 'get_printer_by_store_usecase.g.dart';

class GetPrinterByStoreUsecase
    extends UseCase<List<PrinterEntity>, GetPrinterByStoreParams> {
  final PrinterRepository _repo;

  GetPrinterByStoreUsecase(this._repo);

  @override
  Future<Either<Failure, List<PrinterEntity>>> call(
          GetPrinterByStoreParams params) =>
      _repo.getPrinterByStore(params);
}

@freezed
class GetPrinterByStoreParams with _$GetPrinterByStoreParams {
  const factory GetPrinterByStoreParams({
    @Default(null) String? storeId,
  }) = _GetPrinterByStoreParams;

  factory GetPrinterByStoreParams.fromJson(Map<String, dynamic> json) =>
      _$GetPrinterByStoreParamsFromJson(json);
}
