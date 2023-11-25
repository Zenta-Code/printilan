import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final log = kDebugMode
    ? Logger(
        printer: PrettyPrinter(
          methodCount: 1,
          lineLength: 110,
        ),
      )
    : Logger(filter: null);

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
