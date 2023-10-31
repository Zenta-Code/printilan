import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sky_printing/utils/utils.dart';

void main() {
  runZonedGuarded(
    /// Lock device orientation to portrait
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await FirebaseServices.init();

      return SystemChrome.setPreferredOrientations(
        [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ],
      ).then((_) => runApp(LzyctApp()));
    },
    (error, stackTrace) async {
      FirebaseCrashlytics.instance.recordError(error, stackTrace);
    },
  );
}

class LzyctApp extends StatelessWidget {
  const LzyctApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lzyct',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
