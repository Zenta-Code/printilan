import 'package:dartz/dartz.dart'; 
import 'package:sky_printing_core/sky_printing_core.dart'; 

class ConnectSocket extends UseCase<void, void> {
  final SocketClient _client;

  ConnectSocket(this._client);

  @override
  Future<Either<Failure, void>> call(void params) {
    _client.connect();
    return Future.value(const Right(null));
  }
}
