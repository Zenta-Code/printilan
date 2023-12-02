import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> with MainBoxMixin {
  MainCubit(
    this._getPrinterByStoreUsecase,
    this._joinSocketUsecase,
  ) : super(const _Loading());

  final GetPrinterByStoreUsecase _getPrinterByStoreUsecase;
  final JoinSocketUsecase _joinSocketUsecase;

  int _currentIndex = 0;
  late List<DataHelper> dataMenus;
  late List<PrinterEntity> printerData;

  void updateIndex(int index, {BuildContext? context}) {
    emit(const _Loading());
    _currentIndex = index;
    if (context != null) {
      initMenu(context);
    }
    emit(_Success(dataMenus[_currentIndex]));
  }

  void initMenu(BuildContext context) {
    bootstrap();
    dataMenus = [
      DataHelper(
        title: Strings.of(context)!.dashboard,
        isSelected: true,
        icon: Icons.home,
      ),
      DataHelper(
        title: Strings.of(context)!.history,
        icon: Icons.history,
      ),
      DataHelper(
        title: Strings.of(context)!.wallet,
        icon: Icons.wallet,
      ),
      DataHelper(
        title: Strings.of(context)!.profile,
        icon: Icons.person_2_outlined,
      ),
    ];
    updateIndex(_currentIndex);
  }

  void bootstrap() {
    fetchPrinters();
    joinRoom();
    pollingPrinter();
  }

  void fetchPrinters() async {
    final res = await _getPrinterByStoreUsecase.call(
      GetPrinterByStoreParams(
        storeId: getData<StoreEntity>(MainBoxKeys.store).id,
      ),
    );
    res.fold(
      (l) => printerData = [],
      (r) => printerData = r,
    );
  }

  void pollingPrinter() async {
    try {
      Stream.periodic(const Duration(minutes: 1), (i) => i)
          .listen((event) async {
        fetchPrinters();
      });
    } catch (e) {}
  }

  void joinRoom() {
    final store = getData(MainBoxKeys.store);
    _joinSocketUsecase.call(store!.id);
  }
}
