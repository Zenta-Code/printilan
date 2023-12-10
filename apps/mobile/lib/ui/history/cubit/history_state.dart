part of 'history_cubit.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.loading() = _Loading;
  const factory HistoryState.success(List<OrderEntityResponse> data) = _Success;
  const factory HistoryState.failure(String message) = _Failure;
  const factory HistoryState.empty() = _Empty;
}
