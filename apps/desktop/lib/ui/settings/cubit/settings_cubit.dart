import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

class SettingsCubit extends Cubit<DataHelper> with MainBoxMixin {
  SettingsCubit(
    this._getStoreByIdUsecase,
  ) : super(DataHelper(type: "en"));

  final GetStoreByIdUsecase _getStoreByIdUsecase;

  void updateTheme(ActiveTheme activeTheme) {
    addData(MainBoxKeys.theme, activeTheme.name);
    emit(
      DataHelper(
        activeTheme: activeTheme,
        type: getData(MainBoxKeys.locale) ?? "en",
      ),
    );
  }

  void updateLanguage(String type) {
    /// Update locale code
    addData(MainBoxKeys.locale, type);
    emit(DataHelper(type: type, activeTheme: getActiveTheme()));
  }

  ActiveTheme getActiveTheme() {
    final activeTheme = ActiveTheme.values.singleWhere(
      (element) =>
          element.name ==
          (getData(MainBoxKeys.theme) ?? ActiveTheme.system.name),
    );
    emit(
      DataHelper(
        activeTheme: activeTheme,
        type: getData(MainBoxKeys.locale) ?? "en",
      ),
    );
    return activeTheme;
  }

  init() async {
    final storeId = getData(MainBoxKeys.store)['_id'];
    log.e(storeId);
    if (storeId == null) return;
    final res = await _getStoreByIdUsecase.call(
      GetStoreByIdParams(
        id: storeId,
      ),
    );
    res.fold((l) {
      if (l is ServerFailure) {
        log.e(l.message.toString());
      }
    }, (r) {
      log.e(r);
    });
  }
}
