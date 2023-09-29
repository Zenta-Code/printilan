import 'package:go_router/go_router.dart';
import 'package:sky_printing/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => LoginScreen(),
      routes: [
        GoRoute(
          path: "settings",
          builder: (context, state) => SettingScreen(),
        ),
        GoRoute(
          path: 'login',
          builder: (context, state) => LoginScreen(),
        ),
      ],
    ),
  ],
);
