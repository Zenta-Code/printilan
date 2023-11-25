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
  register("/auth/register");

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
              create: (_) => sl<DashboardCubit>()..fetchData(),
              child: const DashboardPage(),
            ),
          ),
          GoRoute(
            path: Routes.order.path,
            name: Routes.order.name,
            builder: (_, __) => BlocProvider(
              create: (_) => sl<OrderCubit>()..fetchData(),
              child: const OrderPage(),
            ),
          ),
          GoRoute(
            path: Routes.printer.path,
            name: Routes.printer.name,
            builder: (_, __) => BlocProvider(
              create: (_) => sl<PrinterCubit>()..fetchPrinters(),
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
  final bool isLoginPage = state.matchedLocation == Routes.login.path ||
      state.matchedLocation == Routes.register.path;
  final token = MainBoxMixin().getData(MainBoxKeys.token);
  if (token == null) {
    return Routes.login.path;
  }
  final res = await context.read<AuthCubit>().me(MeParams(
        token: token,
      ));
  if (res.id == null) {
    return Routes.login.path;
  }
  if (res.id != null && isLoginPage && res.role == "seller") {
    return Routes.dashboard.path;
  }
  if (res.id != null && state.matchedLocation == Routes.root.path) {
    return Routes.dashboard.path;
  }
  return null;
}
