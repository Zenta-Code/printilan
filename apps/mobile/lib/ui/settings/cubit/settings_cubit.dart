import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class SettingsCubit extends Cubit<DataHelper> with MainBoxMixin {
  final GetDistrictByPostalCodeUsecase _getDistrictByPostalCodeUsecase;
  SettingsCubit(
    this._getDistrictByPostalCodeUsecase,
  ) : super(DataHelper(type: "en"));

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

  Future<String> getDistrictByPostalCode(int postalCode) async {
    final district = await _getDistrictByPostalCodeUsecase(
      GetDistrictByPostalCodeParams(postalCode: postalCode),
    );
    return district.fold(
      (l) => "",
      (r) => r,
    );
  }
}
