import 'package:logger/logger.dart';

final log = Logger(
  printer: PrettyPrinter(
    methodCount: 1,
    lineLength: 110,
  ),
);

void safeEmit<T>(
  T state, {
  bool isClosed = false,
  required void Function(T) emit,
}) {
  if (isClosed) {
    log.d("Cubit is closed");
    return;
  } else {
    emit(state);
  }
}
