import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_printing_admin/core/themes/theme_bloc.dart';
import 'package:sky_printing_admin/ui/settings/cubit/settings_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart' hide DropDown;
import 'package:sky_printing_domain/entities/store/store_entity.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with MainBoxMixin {
  late final SettingsCubit _settingsCubit = context.read<SettingsCubit>();
  late final List<DataHelper> _listLanguage = [
    DataHelper(title: Constants.get.english, type: "en"),
    DataHelper(title: Constants.get.bahasa, type: "id"),
  ];
  late DataHelper _selectedLanguage =
      (getData(MainBoxKeys.locale) ?? "en") == "en"
          ? _listLanguage[0]
          : _listLanguage[1];

  late TextEditingController _conStoreName;
  late TextEditingController _conPhone;
  late TextEditingController _conPassword;
  late TextEditingController _conStreet;
  late TextEditingController _conCity;
  late TextEditingController _conState;
  late TextEditingController _conCountry;
  late TextEditingController _conZipCode;

  late FocusNode _fnStoreName;
  late FocusNode _fnPhone;
  late FocusNode _fnPassword;
  late FocusNode _fnStreet;
  late FocusNode _fnCity;
  late FocusNode _fnState;
  late FocusNode _fnCountry;
  late FocusNode _fnZipCode;

  late StoreEntity? storeRead;
  final _keyForm = GlobalKey<FormState>();
  @override
  void initState() {
    _conStoreName = TextEditingController();
    _conPhone = TextEditingController();
    _conPassword = TextEditingController();
    _conStreet = TextEditingController();
    _conCity = TextEditingController();
    _conState = TextEditingController();
    _conCountry = TextEditingController();
    _conZipCode = TextEditingController();

    _fnStoreName = FocusNode();
    _fnPhone = FocusNode();
    _fnPassword = FocusNode();
    _fnStreet = FocusNode();
    _fnCity = FocusNode();
    _fnState = FocusNode();
    _fnCountry = FocusNode();
    _fnZipCode = FocusNode();
    storeRead = context.read<SettingsCubit>().storeLocal;
    super.initState();
  }

  @override
  void dispose() {
    _conStoreName.dispose();
    _conPhone.dispose();
    _conPassword.dispose();
    _conStreet.dispose();
    _conCity.dispose();
    _conState.dispose();
    _conCountry.dispose();
    _conZipCode.dispose();

    _fnStoreName.dispose();
    _fnPhone.dispose();
    _fnPassword.dispose();
    _fnStreet.dispose();
    _fnCity.dispose();
    _fnState.dispose();
    _fnCountry.dispose();
    _fnZipCode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<ThemeBloc>();
    final theme = FluentTheme.of(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    if (mounted) {
      setState(() {
        _conStoreName.text = storeRead?.name ?? "";
        _conPhone.text = storeRead?.phone ?? "";
        _conStreet.text = storeRead?.address?.street ?? "";
        _conCity.text = storeRead?.address?.city ?? "";
        _conState.text = storeRead?.address?.state ?? "";
        _conCountry.text = storeRead?.address?.country ?? "";
        _conZipCode.text = storeRead?.address?.zipCode ?? "";
      });
    }
    return ScaffoldPage(
      header: PageHeader(
        title: Text(Strings.of(context)!.settings),
        commandBar: DropDownButton(
          title: Text(_selectedLanguage.title ?? ""),
          items: _listLanguage
              .map(
                (e) => MenuFlyoutItem(
                  text: Text(e.title ?? ""),
                  onPressed: () {
                    _selectedLanguage = e;
                    if (!mounted) return;
                    context
                        .read<SettingsCubit>()
                        .updateLanguage(e.type ?? "en");
                    setState(() {});
                  },
                ),
              )
              .toList(),
        ),
      ),
      content: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Form(
          key: _keyForm,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: ((width / 2) - 75),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.of(context)!.store_info,
                            style: theme.typography.subtitle!.copyWith(
                              fontSize: 24.sp,
                            ),
                          ),
                          SizedBox(
                            height: 16.sp,
                          ),
                          InfoLabel(
                            label: Strings.of(context)!.store_name,
                            labelStyle: TextStyle(fontSize: 16),
                            child: TextFormBox(
                              style: TextStyle(height: 2, fontSize: 14),
                              controller: _conStoreName,
                              focusNode: _fnStoreName,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return Strings.of(context)!.store_name_empty;
                                }
                                return null;
                              },
                              onEditingComplete: () {
                                _fnStoreName.unfocus();
                                FocusScope.of(context).requestFocus(_fnPhone);
                              },
                            ),
                          ),
                          SizedBox(height: 16.h),
                          InfoLabel(
                            label: Strings.of(context)!.phone,
                            labelStyle: TextStyle(fontSize: 16),
                            child: TextFormBox(
                              style: TextStyle(height: 2, fontSize: 14),
                              controller: _conPhone,
                              focusNode: _fnPhone,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return Strings.of(context)!.phone_empty;
                                }
                                return null;
                              },
                              onEditingComplete: () {
                                _fnPhone.unfocus();
                                FocusScope.of(context)
                                    .requestFocus(_fnPassword);
                              },
                            ),
                          ),
                          SizedBox(height: 16.h),
                          InfoLabel(
                            label: Strings.of(context)!.password,
                            labelStyle: TextStyle(fontSize: 16),
                            child: TextFormBox(
                              style: TextStyle(height: 2, fontSize: 14),
                              controller: _conPassword,
                              focusNode: _fnPassword,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return Strings.of(context)!.password_empty;
                                }
                                return null;
                              },
                              onEditingComplete: () {
                                _fnPassword.unfocus();
                                FocusScope.of(context).requestFocus(_fnStreet);
                              },
                            ),
                          ),
                          SizedBox(height: 16.h),
                          InfoLabel(
                            label: Strings.of(context)!.street,
                            labelStyle: TextStyle(fontSize: 16),
                            child: TextFormBox(
                              style: TextStyle(height: 2, fontSize: 14),
                              controller: _conStreet,
                              focusNode: _fnStreet,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return Strings.of(context)!.street_empty;
                                }
                                return null;
                              },
                              onEditingComplete: () {
                                _fnStreet.unfocus();
                                FocusScope.of(context).requestFocus(_fnCity);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    width: ((width / 2) - 75),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "",
                            style: theme.typography.subtitle!.copyWith(
                              fontSize: 24.sp,
                            ),
                          ),
                          SizedBox(
                            height: 16.sp,
                          ),
                          InfoLabel(
                            label: Strings.of(context)!.city,
                            labelStyle: TextStyle(fontSize: 16),
                            child: TextFormBox(
                              style: TextStyle(height: 2, fontSize: 14),
                              controller: _conCity,
                              focusNode: _fnCity,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return Strings.of(context)!.city_empty;
                                }
                                return null;
                              },
                              onEditingComplete: () {
                                _fnCity.unfocus();
                                FocusScope.of(context).requestFocus(_fnState);
                              },
                            ),
                          ),
                          SizedBox(height: 16.h),
                          InfoLabel(
                            label: Strings.of(context)!.state,
                            labelStyle: TextStyle(fontSize: 16),
                            child: TextFormBox(
                              style: TextStyle(height: 2, fontSize: 14),
                              controller: _conState,
                              focusNode: _fnState,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return Strings.of(context)!.state_empty;
                                }
                                return null;
                              },
                              onEditingComplete: () {
                                _fnState.unfocus();
                                FocusScope.of(context).requestFocus(_fnCountry);
                              },
                            ),
                          ),
                          SizedBox(height: 16.h),
                          InfoLabel(
                            label: Strings.of(context)!.country,
                            labelStyle: TextStyle(fontSize: 16),
                            child: TextFormBox(
                              style: TextStyle(height: 2, fontSize: 14),
                              controller: _conCountry,
                              focusNode: _fnCountry,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return Strings.of(context)!.country_empty;
                                }
                                return null;
                              },
                              onEditingComplete: () {
                                _fnCountry.unfocus();
                                FocusScope.of(context).requestFocus(_fnZipCode);
                              },
                            ),
                          ),
                          SizedBox(height: 16.h),
                          InfoLabel(
                            label: Strings.of(context)!.zip_code,
                            labelStyle: TextStyle(fontSize: 16),
                            child: TextFormBox(
                              style: TextStyle(height: 2, fontSize: 14),
                              controller: _conZipCode,
                              focusNode: _fnZipCode,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return Strings.of(context)!.zip_code_empty;
                                }
                                return null;
                              },
                              onEditingComplete: () {
                                _fnZipCode.unfocus();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.h),
              Container(
                width: width / 3,
                padding:
                    EdgeInsets.symmetric(vertical: 16.sp, horizontal: 8.sp),
                child: FilledButton(
                  child: Text(Strings.of(context)!.update_profile),
                  onPressed: () {
                    if (_keyForm.currentState!.validate()) {
                      _settingsCubit.updateStore(
                        name: _conStoreName.text,
                        phone: _conPhone.text,
                        password: _conPassword.text,
                        street: _conStreet.text,
                        city: _conCity.text,
                        state: _conState.text,
                        country: _conCountry.text,
                        zipCode: _conZipCode.text,
                        context: context,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getThemeName(ActiveTheme activeTheme, BuildContext context) {
    if (activeTheme == ActiveTheme.system) {
      return Strings.of(context)!.theme_system;
    } else if (activeTheme == ActiveTheme.dark) {
      return Strings.of(context)!.theme_dark;
    } else {
      return Strings.of(context)!.theme_light;
    }
  }
}
