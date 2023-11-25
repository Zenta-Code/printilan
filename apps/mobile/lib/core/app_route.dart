import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/dependencies_injection.dart';
import 'package:sky_printing/ui/history/pages/history_page.dart';
import 'package:sky_printing/ui/home/cubit/home_cubit.dart';
import 'package:sky_printing/ui/home/pages/home_page.dart';
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
  home("/home"),
  history("/history"),
  wallet("/wallet"),
  settings("/settings"),

  // sub page
  order("order"),

  // Login Page
  login("/login/login"),
  register("/login/register");

  const Routes(this.path);

  final String path;
}

class AppRoute with MainBoxMixin {
  static late BuildContext context;
  static late String? token;
  AppRoute.setStream(BuildContext ctx) {
    context = ctx;
    token = getData(MainBoxKeys.token);
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
            token == null ? Routes.splashScreen.path : Routes.login.path,
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
        builder: (_, __, child) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => sl<MainCubit>(),
            ),
          ],
          child: MainPage(child: child),
        ),
        routes: [
          GoRoute(
              path: Routes.home.path,
              name: Routes.home.name,
              builder: (_, __) => BlocProvider(
                    create: (_) =>
                        sl<HomeCubit>()..getLocation(const LocationParams()),
                    child: const HomePage(),
                  ),
              routes: [
                GoRoute(
                  path: Routes.order.path,
                  name: Routes.order.name,
                  builder: (context, state) => BlocProvider(
                    create: (_) => sl<OrderCubit>()..getStore(),
                    child: const OrderPage(),
                  ),
                ),
              ]),
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
      // if (token == null) {
      //   log.e('Token : $token');
      //   return isLoginPage ? null : Routes.splashScreen.path;
      // }

      final me =
          await context.read<LoginCubit>().me(MeParams(token: token ?? ''));
      log.e('IS AUTH: $me');

      if (!me) {
        log.i("!me Condition");
        // return Routes.splashScreen.path;
        // final isLogout = await logout();
        // if (!isLogout) {
        //   log.e('Logout : $isLogout');
        //   return Routes.splashScreen.path;
        // }
      }
      if (me && isLoginPage) {
        log.i("me && isLoginPage Condition");
        return isLoginPage ? null : Routes.home.path;
      }
      if (me && state.matchedLocation == Routes.splashScreen.path) {
        log.i("me Condition");
        return isLoginPage ? null : Routes.home.path;
      }
      return null;
    },
  );
}

FutureOr<String?> validateToken(
  BuildContext context,
  GoRouterState state,
) async {
  final bool isLoginPage = state.matchedLocation == Routes.login.path ||
      state.matchedLocation == Routes.register.path;
  final token = MainBoxMixin().getData(MainBoxKeys.token);
  if (token == null) {
    return Routes.login.path;
  }
  final res = await context.read<LoginCubit>().me(MeParams(
        token: token,
      ));
  if (res) {
    return isLoginPage ? Routes.splashScreen.path : null;
  }
  return isLoginPage ? null : Routes.login.path;
}
