import 'package:dartz/dartz.dart';
import 'package:sky_printing/core/error/failure.dart';
import 'package:sky_printing/core/services/remote/socket/socket_client.dart';
import 'package:sky_printing/core/usecase/usecase.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/sockets/socket_params.dart';

class ReceiveSocket extends UseCase<void, SocketParams> {
  final SocketClient _client;

  ReceiveSocket(this._client);

  @override
  Future<Either<Failure, dynamic>> call(SocketParams params) {
    dynamic socketEntity;
    _client.message((p0) {
      socketEntity = p0;
    });
    return Future.value(Right(socketEntity));
  }
}
