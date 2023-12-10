import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> with MainBoxMixin {
  SettingsCubit(
    this._getStoreByIdUsecase,
    this._putStoreUsecase,
  ) : super(const _Loading());

  final GetStoreByIdUsecase _getStoreByIdUsecase;
  final PutStoreUsecase _putStoreUsecase;
  void updateTheme(ActiveTheme activeTheme) {
    addData(MainBoxKeys.theme, activeTheme.name);
  }

  void updateLanguage(String type) {
    addData(MainBoxKeys.locale, type);
  }

  ActiveTheme getActiveTheme() {
    final activeTheme = ActiveTheme.values.singleWhere(
      (element) =>
          element.name ==
          (getData(MainBoxKeys.theme) ?? ActiveTheme.system.name),
    );

    return activeTheme;
  }

  StoreEntity? storeLocal;
  StoreEntity? storeRemote;
  init() async {
    getStoreLocal();
    await getStoreRemote();
  }

  void getStoreLocal() async {
    storeLocal = getData<StoreEntity>(MainBoxKeys.store);
  }

  Future<void> getStoreRemote() async {
    if (storeLocal == null) return;
    final res = await _getStoreByIdUsecase.call(
      GetStoreByIdParams(
        id: storeLocal!.id!,
      ),
    );
    res.fold((l) {
      if (l is ServerFailure) {}
    }, (r) {
      log.f(r);
      storeRemote = r;
    });
  }

  updateStore({
    required String name,
    required String phone,
    required String password,
    required String street,
    required String city,
    required String state,
    required String country,
    required String zipCode,
    required BuildContext context,
  }) async {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    final res = await _putStoreUsecase.call(
      StoreUpdateParams(
        id: storeLocal!.id!,
        name: name,
        phone: phone,
        password: password,
        street: street,
        city: city,
        state: state,
        country: country,
        zipCode: zipCode,
      ),
    );
    storeLocal = null;
    storeRemote = null;
    res.fold((l) {
      if (l is ServerFailure) {
        displayInfoBar(
          context,
          builder: (context, close) {
            return InfoBar(
              title: Text(
                l.message.toString(),
              ),
              severity: InfoBarSeverity.error,
            );
          },
        );
      }
    }, (r) {
      getStoreLocal();
      getStoreRemote();
      displayInfoBar(
        context,
        builder: (context, close) {
          return InfoBar(
            title: Text(
              Strings.of(context)!.store_updated,
            ),
            severity: InfoBarSeverity.success,
          );
        },
      );
    });
  }
}
