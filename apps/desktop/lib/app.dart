import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:oktoast/oktoast.dart';
import 'package:sky_printing_admin/core/core.dart';
import 'package:sky_printing_admin/core/themes/theme_bloc.dart';
import 'package:sky_printing_admin/dependencies_injection.dart';
import 'package:sky_printing_admin/ui/login/cubit/auth_cubit.dart';
import 'package:sky_printing_admin/ui/settings/cubit/settings_cubit.dart';
import 'package:sky_printing_admin/utils/helper/helper.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<SettingsCubit>()..getActiveTheme()),
        BlocProvider(create: (_) => sl<AuthCubit>()),
        BlocProvider(create: (_) => sl<ThemeBloc>()),
      ],
      child: OKToast(
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            AppRoute.setStream(context);
            final router = AppRoute.router;
            return FluentApp.router(
              title: Constants.get.appName,
              themeMode: state.mode,
              debugShowCheckedModeBanner: false,
              color: Colors.blue,
              darkTheme: FluentThemeData(
                brightness: Brightness.dark,
                accentColor: Colors.blue,
                visualDensity: VisualDensity.standard,
                focusTheme: FocusThemeData(
                  glowFactor: is10footScreen(context) ? 2.0 : 0.0,
                ),
              ),
              theme: FluentThemeData(
                accentColor: Colors.blue,
                visualDensity: VisualDensity.standard,
                focusTheme: FocusThemeData(
                  glowFactor: is10footScreen(context) ? 2.0 : 0.0,
                ),
              ),
              locale: state.locale,
              builder: (context, child) {
                return Directionality(
                  textDirection: state.textDirection,
                  child: NavigationPaneTheme(
                    data: NavigationPaneThemeData(
                      backgroundColor: state.windowEffect !=
                              flutter_acrylic.WindowEffect.disabled
                          ? Colors.transparent
                          : null,
                    ),
                    child: child!,
                  ),
                );
              },
              routeInformationParser: router.routeInformationParser,
              routerDelegate: router.routerDelegate,
              routeInformationProvider: router.routeInformationProvider,
              localizationsDelegates: const [
                Strings.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
            );
          },
        ),
      ),
    );
  }
}
