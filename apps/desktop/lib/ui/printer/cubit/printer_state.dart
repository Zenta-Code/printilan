part of 'printer_cubit.dart';

@freezed
class PrinterState with _$PrinterState {
  const factory PrinterState.loading() = _Loading;
  const factory PrinterState.success(dynamic data) = _Success;
  const factory PrinterState.failure(String message) = _Failure;
  const factory PrinterState.empty() = _Empty;
}
