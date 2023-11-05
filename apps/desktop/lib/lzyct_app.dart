import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:oktoast/oktoast.dart';
import 'package:sky_printing_admin/core/core.dart';
import 'package:sky_printing_admin/dependencies_injection.dart';
import 'package:sky_printing_admin/features/features.dart';
import 'package:sky_printing_admin/module/settings/cubit/settings_cubit.dart';
import 'package:sky_printing_admin/utils/helper/helper.dart';

class LzyctApp extends StatelessWidget {
  const LzyctApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<SettingsCubit>()..getActiveTheme()),
        BlocProvider(create: (_) => sl<AuthCubit>()),
      ],
      child: OKToast(
        child: BlocBuilder<SettingsCubit, DataHelper>(
          builder: (context, data) {
            AppRoute.setStream(context);
            context.read<AuthCubit>().logout();
            return MaterialApp.router(
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
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              locale: Locale(data.type ?? "en"),
              supportedLocales: L10n.all,
              themeMode: data.activeTheme.mode,
              // themeMode: ThemeMode.light,
            );
          },
        ),
      ),
    );
  }
}
