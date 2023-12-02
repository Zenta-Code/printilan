import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';
 
class GetPrinterByStoreUsecase
    extends UseCase<List<PrinterEntity>, GetPrinterByStoreParams> {
  final PrinterRepository _repo;

  GetPrinterByStoreUsecase(this._repo);

  @override
  Future<Either<Failure, List<PrinterEntity>>> call(
          GetPrinterByStoreParams params) =>
      _repo.getPrinterByStore(params);
}
