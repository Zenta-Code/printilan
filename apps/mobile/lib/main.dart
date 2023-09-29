import 'package:flutter/material.dart';
import 'package:sky_printing/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: "SKy Printing",
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
