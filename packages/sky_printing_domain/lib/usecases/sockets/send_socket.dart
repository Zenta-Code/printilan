import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/usecases/sockets/socket_params.dart';

class SendSocket extends UseCase<void, SocketParams> {
  final SocketClient _client;

  SendSocket(this._client);

  @override
  Future<Either<Failure, dynamic>> call(SocketParams params) {
    _client.send(params.receiver, params.sender, params.roomId, params.content);
    return Future.value(const Right(null));
  }
}
