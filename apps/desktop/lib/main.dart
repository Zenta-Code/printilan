import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;
import 'package:sky_printing_admin/app.dart';
import 'package:sky_printing_admin/dependencies_injection.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:system_theme/system_theme.dart';
import 'package:window_manager/window_manager.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      if (!kIsWeb &&
          [
            TargetPlatform.windows,
            TargetPlatform.android,
          ].contains(defaultTargetPlatform)) {
        SystemTheme.accentColor.load();
      }
      await flutter_acrylic.Window.initialize();
      if (TargetPlatform.windows == defaultTargetPlatform) {
        await flutter_acrylic.Window.hideWindowControls();
      }
      await WindowManager.instance.ensureInitialized();
      windowManager.waitUntilReadyToShow().then((_) async {
        if (TargetPlatform.windows == defaultTargetPlatform) {
          await windowManager.setTitleBarStyle(
            TitleBarStyle.hidden,
            windowButtonVisibility: false,
          );
        }
        // await windowManager.setMinimumSize(const Size(500, 600));
        await windowManager.show();
        await windowManager.setPreventClose(true);
        await windowManager.setSkipTaskbar(false);
      });
      await serviceLocator();
      runApp(const MyApp());
    },
    (error, stackTrace) async {
      log.e('Main Error $error', stackTrace: stackTrace);
    },
  );
}
