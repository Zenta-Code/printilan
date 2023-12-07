import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'order_cubit.freezed.dart';
part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> with MainBoxMixin {
  OrderCubit(
    this._socketClient,
    this._dioClient,
    this._getOrderByStoreUsecase,
  ) : super(
          const _Loading(),
        );

  final SocketClient _socketClient;
  final DioClient _dioClient;
  final GetOrderByStoreUsecase _getOrderByStoreUsecase;
  final List<OrderEntity> orderData = [];

  Future<void> bootStrap() async {
    message();
    await fetchData();
  }

  Future<void> fetchData() async {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    final store = getData(MainBoxKeys.store);

    final response = await _getOrderByStoreUsecase
        .call(GetOrderByStoreParams(storeId: store.id));

    response.fold((l) {
      if (l is ServerFailure) {
        safeEmit(
          _Failure(l.message.toString()),
          emit: emit,
          isClosed: isClosed,
        );
      }
    }, (r) {
      orderData.addAll(r);

      safeEmit(
        _Success(r),
        emit: emit,
        isClosed: isClosed,
      );
    });
  }

  void message() {
    _socketClient.socket.on('message', (data) async {
      safeEmit(
        const _Loading(),
        emit: emit,
        isClosed: isClosed,
      );
      final order = OrderModel.fromJson(data["order"]).toEntity();

      orderData.add(order);

      final savePath = await getApplicationDocumentsDirectory();

      log.f(data);
      final path = data["document"]["filePath"].split("/");
      log.e(path);
      final folder = path[0];
      final userFolder = path[1];
      final fileName = path[2];
      final dir =
          Directory("${savePath.path}/Sky Printing/$folder/$userFolder");
      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }

      try {
        final res = await _dioClient.getRequest(
          "${ListAPI.document}/download",
          queryParameters: {
            "dir": folder,
            "userId": data["document"]["userId"],
            "fileName": fileName,
          },
          converter: (response) {
            return response;
          },
        );
        res.fold((l) {
          log.e(l);
        }, (success) async {
          // log.e(success);
          if (success != null) {
            final List<dynamic> bytes = success['data']['data'];
            var newBytes = bytes.map((e) => e as int).toList();
            final Uint8List xBytes = Uint8List.fromList(newBytes);
            final file = File("${dir.path}/$fileName");
            file.writeAsBytesSync(newBytes);
            final jobs = await Printing.directPrintPdf(
              printer: const Printer(url: 'EPSON L3210 Series'),
              onLayout: (format) => xBytes,
              name: fileName,
            );
            if (jobs) {
              safeEmit(
                _Success(orderData),
                emit: emit,
                isClosed: isClosed,
              );
            }
          } else {
            log.e('Invalid response or empty data.');
          }
        });
      } catch (e) {
        log.e(e);
      }
    });
  }

  void clearOrder() {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    final store = getData(MainBoxKeys.store);
    _dioClient.getRequest(
      "${ListAPI.order}/clear/${store!.id}",
      converter: (response) {
        return response;
      },
    );
    orderData.clear();
    safeEmit(
      _Success(orderData),
      emit: emit,
      isClosed: isClosed,
    );
  }
}
