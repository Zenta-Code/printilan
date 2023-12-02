import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class GetPrinterByIdUsecase
    extends UseCase<PrinterEntity, GetPrinterByIdParams> {
  final PrinterRepository _repo;

  GetPrinterByIdUsecase(this._repo);

  @override
  Future<Either<Failure, PrinterEntity>> call(GetPrinterByIdParams params) =>
      _repo.getPrinterById(params);
}
