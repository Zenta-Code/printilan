import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:socket_io_client/socket_io_client.dart';

class ConnectSocketUsecase extends UseCase<Socket, NoParams> {
  final SocketClient _client;

  ConnectSocketUsecase(this._client);

  @override
  Future<Either<Failure, Socket>> call(NoParams params) async {
    final socket = _client.connect();
    if (socket.connected) {
      return Right(socket);
    } else {
      return Left(ServerFailure('Cannot connect to socket'));
    }
  }
}
