import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/dependencies_injection.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/get_location.dart';
import 'package:sky_printing/modules/dashboard/ui/cubit/dashboard_cubit.dart';
import 'package:sky_printing/modules/dashboard/ui/pages/dashboard_page.dart';
import 'package:sky_printing/modules/history/ui/pages/history_page.dart';
import 'package:sky_printing/modules/login/domain/usecases/post_me.dart';
import 'package:sky_printing/modules/login/ui/cubit/login_cubit.dart';
import 'package:sky_printing/modules/login/ui/pages/login_page.dart';
import 'package:sky_printing/modules/main/ui/cubit/main_cubit.dart';
import 'package:sky_printing/modules/main/ui/pages/main_page.dart';
import 'package:sky_printing/modules/register/ui/cubit/register_cubit.dart';
import 'package:sky_printing/modules/register/ui/pages/register_page.dart';
import 'package:sky_printing/modules/settings/ui/pages/settings_page.dart';
import 'package:sky_printing/modules/splashscreen/ui/pages/splash_screen_page.dart';
import 'package:sky_printing/modules/wallet/ui/pages/wallet_page.dart';
import 'package:sky_printing/utils/utils.dart';

enum Routes {
  root("/"),
  splashScreen("/splashscreen"),

  /// Main Page
  dashboard("/dashboard"),
  history("/history"),
  wallet("/wallet"),
  settings("/settings"),

  // Login Page
  login("/login/login"),
  register("/login/register");

  const Routes(this.path);

  final String path;
}

class AppRoute {
  static late BuildContext context;

  AppRoute.setStream(BuildContext ctx) {
    context = ctx;
  }

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.splashScreen.path,
        name: Routes.splashScreen.name,
        builder: (_, __) => const SplashScreenPage(),
      ),
      GoRoute(
        path: Routes.root.path,
        name: Routes.root.name,
        redirect: (_, __) => Routes.splashScreen.path,
      ),
      GoRoute(
        path: Routes.login.path,
        name: Routes.login.name,
        builder: (_, __) => const LoginPage(),
      ),
      GoRoute(
        path: Routes.register.path,
        name: Routes.register.name,
        builder: (_, __) => BlocProvider(
          create: (_) => sl<RegisterCubit>(),
          child: const RegisterPage(),
        ),
      ),
      ShellRoute(
        builder: (_, __, child) => BlocProvider(
          create: (context) => sl<MainCubit>(),
          child: MainPage(child: child),
        ),
        routes: [
          GoRoute(
            path: Routes.dashboard.path,
            name: Routes.dashboard.name,
            builder: (_, __) => BlocProvider(
              create: (_) =>
                  sl<DashboardCubit>()..getLocation(const LocationParams()),
              child: const DashboardPage(),
            ),
          ),
          GoRoute(
            path: Routes.history.path,
            name: Routes.history.name,
            builder: (context, state) => HistoryPage(),
          ),
          GoRoute(
            path: Routes.wallet.path,
            name: Routes.wallet.name,
            builder: (context, state) => WalletPage(),
          ),
          GoRoute(
            path: Routes.settings.path,
            name: Routes.settings.name,
            builder: (_, __) => const SettingsPage(),
          ),
        ],
      ),
    ],
    initialLocation: Routes.root.path,
    routerNeglect: true,
    debugLogDiagnostics: kDebugMode,
    refreshListenable: GoRouterRefreshStream(context.read<LoginCubit>().stream),
    redirect: (_, GoRouterState state) async {
      final bool isLoginPage = state.matchedLocation == Routes.login.path ||
          state.matchedLocation == Routes.register.path;
      final token =
          MainBoxMixin.mainBox?.get(MainBoxKeys.token.name) as String?;
      final me =
          await context.read<LoginCubit>().me(MeParams(token: token ?? ''));
      log.e('IS AUTH: ${me}');

      if (!((MainBoxMixin.mainBox?.get(MainBoxKeys.isLogin.name) as bool?) ??
          false)) {
        return isLoginPage ? null : Routes.splashScreen.path;
      } else if (state.matchedLocation == Routes.splashScreen.path) {
        return Routes.dashboard.path;
      }

      if (isLoginPage &&
          ((MainBoxMixin.mainBox?.get(MainBoxKeys.isLogin.name) as bool?) ??
              false)) {
        return Routes.dashboard.path;
      }

      /// No direct
      return null;
    },
  );
}
