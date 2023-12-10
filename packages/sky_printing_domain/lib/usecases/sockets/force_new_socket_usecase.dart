import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:socket_io_client/socket_io_client.dart';

class ForceNewSocketUsecase extends UseCase<Socket, void> {
  final SocketClient _client;

  ForceNewSocketUsecase(this._client);

  @override
  Future<Either<Failure, Socket>> call(void params) {
    final socket = _client.forceNew();
    if (socket != null) {
      return Future.value(Right(socket));
    } else {
      return Future.value(const Left(ServerFailure('Cannot connect to socket')));
    }
  }
}
