import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/dependencies_injection.dart';
import 'package:sky_printing/ui/dashboard/cubit/dashboard_cubit.dart';
import 'package:sky_printing/ui/dashboard/pages/dashboard_page.dart';
import 'package:sky_printing/ui/history/pages/history_page.dart';
import 'package:sky_printing/ui/login/cubit/login_cubit.dart';
import 'package:sky_printing/ui/login/pages/login_page.dart';
import 'package:sky_printing/ui/main/cubit/main_cubit.dart';
import 'package:sky_printing/ui/main/pages/main_page.dart';
import 'package:sky_printing/ui/order/cubit/order_cubit.dart';
import 'package:sky_printing/ui/order/pages/order_page.dart';
import 'package:sky_printing/ui/register/cubit/register_cubit.dart';
import 'package:sky_printing/ui/register/pages/register_page.dart';
import 'package:sky_printing/ui/settings/pages/settings_page.dart';
import 'package:sky_printing/ui/splashscreen/pages/splash_screen_page.dart';
import 'package:sky_printing/ui/wallet/pages/wallet_page.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

enum Routes {
  root("/"),
  splashScreen("/splashscreen"),

  /// Main Page
  dashboard("/dashboard"),
  history("/history"),
  wallet("/wallet"),
  settings("/settings"),

  // sub page
  order("/dashboard/order"),

  // Login Page
  login("/login/login"),
  register("/login/register");

  const Routes(this.path);

  final String path;
}

class AppRoute with MainBoxMixin {
  static late BuildContext context;
  static late String? token;
  static late bool isLogin;
  AppRoute.setStream(BuildContext ctx) {
    context = ctx;
    token = getData(MainBoxKeys.token);
    isLogin = getData(MainBoxKeys.isLogin) ?? false;
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
        redirect: (_, __) =>
            isLogin ? Routes.splashScreen.path : Routes.login.path,
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
            path: Routes.order.path,
            name: Routes.order.name,
            builder: (context, state) => BlocProvider(
              create: (_) => sl<OrderCubit>()..getStore(),
              child: OrderPage(),
            ),
          ),
          GoRoute(
            path: Routes.history.path,
            name: Routes.history.name,
            builder: (context, state) => const HistoryPage(),
          ),
          GoRoute(
            path: Routes.wallet.path,
            name: Routes.wallet.name,
            builder: (context, state) => const WalletPage(),
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
      if (token == null) {
        log.e('Token : $token');
        return isLoginPage ? null : Routes.splashScreen.path;
      }

      final me =
          await context.read<LoginCubit>().me(MeParams(token: token ?? ''));
      log.e('IS AUTH: $me');

      if (!me) {
        return Routes.splashScreen.path;
      }
      if (me && isLoginPage) {
        return isLoginPage ? null : Routes.dashboard.path;
      }

      return null;
    },
  );
}
