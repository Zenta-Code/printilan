import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/dependencies_injection.dart';
import 'package:sky_printing/ui/settings/cubit/settings_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> with MainBoxMixin {
  late final ActiveTheme _selectedTheme = sl<SettingsCubit>().getActiveTheme();

  late final List<DataHelper> _listLanguage = [
    DataHelper(title: Constants.get.english, type: "en"),
    DataHelper(title: Constants.get.bahasa, type: "id"),
  ];
  late DataHelper _selectedLanguage =
      (getData(MainBoxKeys.locale) ?? "en") == "en"
          ? _listLanguage[0]
          : _listLanguage[1];
  dynamic user;
  @override
  void initState() {
    user = getData(MainBoxKeys.user);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 32.h,
          horizontal: 24.w,
        ),
        color: const Color.fromARGB(255, 235, 244, 253),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: Dimens.space12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DropDown<DataHelper>(
                        key: const Key("dropdown_language"),
                        value: _selectedLanguage,
                        hintIsVisible: false,
                        width: 90.w,
                        prefixIcon: const Icon(Icons.language_outlined),
                        items: _listLanguage
                            .map(
                              (data) => DropdownMenuItem(
                                value: data,
                                child: Text(
                                  data.type ?? "-",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (DataHelper? value) async {
                          _selectedLanguage = value ?? _listLanguage[0];

                          /// Reload theme
                          if (!mounted) return;
                          context
                              .read<SettingsCubit>()
                              .updateLanguage(value?.type ?? "en");
                        },
                      ),
                    ],
                  ),
                  Text(
                    Strings.of(context)!.welcome_to,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    Constants.get.appName,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/greeting.png',
                width: 320,
              ),
              ButtonText(
                onPressed: () => context.pushNamed(Routes.login.name),
                title: Strings.of(context)!.get_started,
                color: Colors.black,
                fontSize: Dimens.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
