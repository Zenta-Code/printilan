part of 'printer_bloc.dart';

@freezed
class PrinterEvent with _$PrinterEvent {
  const factory PrinterEvent.fetchData() = _FetchData;
}