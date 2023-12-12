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
  UserEntity? userLocal;
  init() async {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    getStoreLocal();
    final user = getUserLocal();
    final storeRemote = await getStoreRemote();

    safeEmit(
      _Success(
        storeRemote!,
        user!,
      ),
      emit: emit,
      isClosed: isClosed,
    );
  }

  StoreEntity? getStoreLocal() {
    storeLocal = getData<StoreEntity>(MainBoxKeys.store);
    return storeLocal;
  }

  UserEntity? getUserLocal() {
    userLocal = getData<UserEntity>(MainBoxKeys.user);
    return userLocal;
  }

  Future<StoreEntity?> getStoreRemote() async {
    if (storeLocal == null) return null;
    final res = await _getStoreByIdUsecase.call(
      GetStoreByIdParams(
        id: storeLocal!.id!,
      ),
    );
    res.fold((l) {
      if (l is ServerFailure) {
        return null;
      }
    }, (r) {
      log.f(r);
      storeRemote = r;
      return r;
    });
    return storeRemote;
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
      final store = getStoreLocal();
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
      safeEmit(
        _Success(
          store!,
          userLocal!,
        ),
        emit: emit,
        isClosed: isClosed,
      );
    });
  }
}
