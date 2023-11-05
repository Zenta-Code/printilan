import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sky_printing_admin/dependencies_injection.dart';
import 'package:sky_printing_admin/lzyct_app.dart';
import 'package:sky_printing_admin/utils/utils.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await serviceLocator();
      runApp(LzyctApp());
    },
    (error, stackTrace) async {
      log.e('Main Error $error', stackTrace: stackTrace);
    },
  );
}
