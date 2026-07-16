import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_summer/app.dart';
import 'package:window_manager/window_manager.dart';

import 'app_injector.dart';
import 'bloc_observer.dart';
import 'core/helpers/l10n.dart';
import 'core/helpers/system_ui_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Window setup (desktop only)
  await windowManager.ensureInitialized();
  WindowOptions windowOptions = const WindowOptions(
    size: Size(1440, 900),
    minimumSize: Size(1024, 700),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.normal,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  AppInjector.setUpGetIt();
  EasyLocalization.ensureInitialized();
  SystemUIHelper.configureSystemUI();
  Bloc.observer = AppBlocObserver();
  runApp(
    EasyLocalization(
      supportedLocales: L10n.all,
      path: L10n.languagePath,
      saveLocale: true,
      startLocale: L10n.arabic,
      fallbackLocale: L10n.arabic,
      child: const TalabyDashboardApp(),
    ),
  );
}

// flutter build apk --release --no-tree-shake-icons
// dart run build_runner build --delete-conflicting-outputs