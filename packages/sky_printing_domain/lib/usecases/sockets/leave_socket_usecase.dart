import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/usecases/sockets/socket_params.dart';

class LeaveSocketUsecase extends UseCase<void, SocketParams> {
  final SocketClient _client;

  LeaveSocketUsecase(this._client);

  @override
  Future<Either <Failure, void>> call(SocketParams params) {
    _client.leave(params);
    return Future.value(const Right(null));
  }
}