import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sky_printing/dependencies_injection.dart';
import 'package:sky_printing/lzyct_app.dart';
import 'package:sky_printing/utils/utils.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await serviceLocator();
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
