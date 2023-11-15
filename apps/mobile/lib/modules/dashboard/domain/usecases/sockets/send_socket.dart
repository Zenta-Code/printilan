import 'package:dartz/dartz.dart'; 
import 'package:sky_printing/modules/dashboard/domain/usecases/sockets/socket_params.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

class SendSocket extends UseCase<void, SocketParams> {
  final SocketClient _client;

  SendSocket(this._client);

  @override
  Future<Either<Failure, dynamic>> call(SocketParams params) {
    _client.send(params.receiver, params.sender, params.roomId, params.content);
    return Future.value(const Right(null));
  }
}
