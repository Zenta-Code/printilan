import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

class JoinSocketUsecase extends UseCase<void, String> {
  final SocketClient _client;

  JoinSocketUsecase(this._client);

  @override
  Future<Either<Failure, void>> call(String params) {
    _client.join(params);
    return Future.value(const Right(null));
  }
}
