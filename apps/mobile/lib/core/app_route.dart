import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/dependencies_injection.dart';
import 'package:sky_printing/features/login/ui/cubit/auth_cubit.dart'; 
import 'package:sky_printing/features/login/ui/pages/login_page.dart'; 
import 'package:sky_printing/features/register/ui/cubit/register_cubit.dart';
import 'package:sky_printing/features/register/ui/pages/register_page.dart';
import 'package:sky_printing/features/main/ui/cubit/main_cubit.dart';
import 'package:sky_printing/features/main/ui/pages/main_page.dart';
import 'package:sky_printing/features/settings/ui/pages/settings_page.dart';
import 'package:sky_printing/features/splashscreen/ui/pages/splash_screen_page.dart';
import 'package:sky_printing/features/users/domain/usecases/get_users.dart';
import 'package:sky_printing/features/users/pages/dashboard/cubit/users_cubit.dart';
import 'package:sky_printing/features/users/pages/dashboard/dashboard_page.dart';
import 'package:sky_printing/utils/utils.dart';

enum Routes {
  root("/"),
  splashScreen("/splashscreen"),

  /// Home Page
  dashboard("/dashboard"),
  settings("/settings"),

  // Auth Page
  login("/auth/login"),
  register("/auth/register"),
  ;

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
              create: (_) => sl<UsersCubit>()..fetchUsers(const UsersParams()),
              child: const DashboardPage(),
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
    redirect: (_, GoRouterState state) {
      final bool isLoginPage = state.matchedLocation == Routes.login.path ||
          state.matchedLocation == Routes.register.path;

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
