import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing_admin/dependencies_injection.dart';
import 'package:sky_printing_admin/ui/dashboard/cubit/dashboard_cubit.dart';
import 'package:sky_printing_admin/ui/login/cubit/auth_cubit.dart';
import 'package:sky_printing_admin/ui/login/login_page.dart';
import 'package:sky_printing_admin/ui/main/cubit/main_cubit.dart';
import 'package:sky_printing_admin/ui/main/main_page.dart';
import 'package:sky_printing_admin/ui/order/cubit/order_cubit.dart';
import 'package:sky_printing_admin/ui/order/order_page.dart';
import 'package:sky_printing_admin/ui/printer/cubit/printer_cubit.dart';
import 'package:sky_printing_admin/ui/printer/printer_page.dart';
import 'package:sky_printing_admin/ui/register/cubit/register_cubit.dart';
import 'package:sky_printing_admin/ui/register/register_page.dart';
import 'package:sky_printing_admin/ui/register/store_pricing_page.dart';
import 'package:sky_printing_admin/ui/settings/settings.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

import '../ui/dashboard/dashboard_page.dart';

enum Routes {
  root("/"),

  /// Home Page
  dashboard("/dashboard"),
  order("/order"),
  printer("/printer"),
  settings("/settings"),

  // Auth Page
  login("/auth/login"),
  register("/auth/register"),
  storePricing("/auth/register/pricing");

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
        path: Routes.root.path,
        name: Routes.root.name,
        redirect: (_, __) => Routes.dashboard.path,
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
      GoRoute(
        path: Routes.storePricing.path,
        name: Routes.storePricing.name,
        builder: (ctx, GoRouterState state) => BlocProvider(
          create: (_) => sl<RegisterCubit>(),
          child: StorePricingPage(data: state.extra as StoreRegisterParams),
        ),
      ),
      ShellRoute(
        builder: (_, __, child) => BlocProvider(
          create: (_) => sl<MainCubit>()..bootstrap(),
          child: MainPage(child: child),
        ),
        routes: [
          GoRoute(
            path: Routes.dashboard.path,
            name: Routes.dashboard.name,
            builder: (_, __) => BlocProvider(
              create: (_) => sl<DashboardCubit>()..fetchData(),
              child: const DashboardPage(),
            ),
          ),
          GoRoute(
            path: Routes.order.path,
            name: Routes.order.name,
            builder: (_, __) => BlocProvider(
              create: (_) => sl<OrderCubit>()..bootStrap(),
              child: const OrderPage(),
            ),
          ),
          GoRoute(
            path: Routes.printer.path,
            name: Routes.printer.name,
            builder: (_, __) => BlocProvider(
              create: (_) => sl<PrinterCubit>()..pollingPrinter(),
              child: const PrinterPage(),
            ),
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
    refreshListenable: GoRouterRefreshStream(context.read<AuthCubit>().stream),
    redirect: validateToken,
  );
}

FutureOr<String?> validateToken(
  BuildContext context,
  GoRouterState state,
) async {
  ///
  /// DEBUGGING
  ///
  // if (state.matchedLocation == Routes.storePricing.path) {
  //   return Routes.storePricing.path;
  // }
  // return Routes.register.path;

  ///
  /// DEBUGGING
  ///
  final bool isLoginPage = state.matchedLocation == Routes.login.path ||
      state.matchedLocation == Routes.register.path;
  final user = MainBoxMixin().getData<UserEntity?>(MainBoxKeys.user);
  if (state.matchedLocation == Routes.storePricing.path) {
    return null;
  }
  if (user == null && isLoginPage) {
    return null;
  }
  if (user == null &&
      !isLoginPage &&
      state.matchedLocation != Routes.root.path) {
    return Routes.login.path;
  }
  if (user == null &&
      !isLoginPage &&
      state.matchedLocation == Routes.root.path) {
    return Routes.dashboard.path;
  }
  if (user == null &&
      isLoginPage &&
      state.matchedLocation == Routes.root.path) {
    return Routes.login.path;
  }
  if (user == null &&
      isLoginPage &&
      state.matchedLocation != Routes.root.path) {
    return null;
  }

  if (user == null) {
    log.e("user is null");
    return Routes.login.path;
  }
  final res = await context.read<AuthCubit>().me(MeParams(
        id: user!.id,
      ));

  if (res == null || res is ServerFailure) {
    log.e("res is null");
    Future.wait([
      MainBoxMixin().removeData(MainBoxKeys.user),
      MainBoxMixin().removeData(MainBoxKeys.store),
      MainBoxMixin().removeData(MainBoxKeys.token),
    ]);

    return Routes.login.path;
  }
  if (res.id == null) {
    log.e("res.id is null");
    return Routes.login.path;
  }
  if (res.id != null && isLoginPage && res.role == "seller") {
    log.e("res.id is not null");
    return Routes.dashboard.path;
  }
  if (res.id != null && state.matchedLocation == Routes.root.path) {
    log.e("res.id is not null");
    return Routes.dashboard.path;
  }
  return null;
}
