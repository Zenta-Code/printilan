import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/dependencies_injection.dart';
import 'package:sky_printing/modules/login/ui/cubit/login_cubit.dart';
import 'package:sky_printing/modules/settings/ui/cubit/settings_cubit.dart';
import 'package:sky_printing/utils/helper/helper.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<SettingsCubit>()..getActiveTheme()),
        BlocProvider(create: (_) => sl<LoginCubit>()),
      ],
      child: OKToast(
        child: ScreenUtilInit(
          designSize: const Size(360, 756),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, __) {
            AppRoute.setStream(context);

            return BlocBuilder<SettingsCubit, DataHelper>(
              builder: (_, data) => MaterialApp.router(
                routerConfig: AppRoute.router,
                localizationsDelegates: const [
                  Strings.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                debugShowCheckedModeBanner: false,
                builder: (BuildContext context, Widget? child) {
                  final MediaQueryData data = MediaQuery.of(context);

                  return MediaQuery(
                    data: data.copyWith(
                      textScaleFactor: 1,
                      alwaysUse24HourFormat: true,
                    ),
                    child: child!,
                  );
                },
                title: Constants.get.appName,
                theme: themeLight(context),
                darkTheme: themeDark(context),
                locale: Locale(data.type ?? "en"),
                supportedLocales: L10n.all,
                themeMode: ThemeMode.light,
              ),
            );
          },
        ),
      ),
    );
  }
}
