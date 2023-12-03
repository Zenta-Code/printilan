import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class JoinSocketUsecase extends UseCase<void, SocketParams> {
  final SocketClient _client;

  JoinSocketUsecase(this._client);

  @override
  Future<Either<Failure, void>> call(SocketParams params) {
    _client.join(params);
    return Future.value(const Right(null));
  }
}
