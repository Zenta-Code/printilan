import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/error/failure.dart';
import 'package:sky_printing/core/services/remote/socket/socket_client.dart';
import 'package:sky_printing/core/usecase/usecase.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/sockets/socket_params.dart';

class SendSocket extends UseCase<void, SocketParams> {
  final SocketClient _client;

  SendSocket(this._client);

  @override
  Future<Either<Failure, dynamic>> call(SocketParams params) {
    _client.send(params.receiver, params.sender, params.roomId, params.content);
    return Future.value(const Right(null));
  }
}
