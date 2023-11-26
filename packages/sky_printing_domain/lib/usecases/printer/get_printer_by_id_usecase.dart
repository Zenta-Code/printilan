import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'get_printer_by_id_usecase.freezed.dart';
part 'get_printer_by_id_usecase.g.dart';

class GetPrinterByIdUsecase extends UseCase<PrinterEntity, GetPrinterByIdParams> {
  final PrinterRepository _repo;

  GetPrinterByIdUsecase(this._repo);

  @override
  Future<Either<Failure, PrinterEntity>> call(GetPrinterByIdParams params) =>
      _repo.getPrinterById(params);
}

@freezed
class GetPrinterByIdParams with _$GetPrinterByIdParams {
  const factory GetPrinterByIdParams({
    @Default(null) String? id,
  }) = _GetPrinterByIdParams;

  factory GetPrinterByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetPrinterByIdParamsFromJson(json);
}