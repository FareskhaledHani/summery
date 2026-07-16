import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_summer/config/routes/app_navigator.dart';
import 'package:my_summer/config/routes/app_routes.dart';
import 'package:my_summer/config/routes/route_generator.dart';
import 'package:toastification/toastification.dart';

import 'config/theme/app_theme.dart';


class TalabyDashboardApp extends StatelessWidget {
  const TalabyDashboardApp({super.key});
  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();
    final easyLoadingBuilder = EasyLoading.init();
    return ScreenUtilInit(
      designSize: const Size(1440, 900),
      minTextAdapt: false,
      splitScreenMode: false,
      useInheritedMediaQuery: true,
      builder: (context, child) => ToastificationWrapper(
        child: MaterialApp(
          locale: context.locale,
          theme: AppTheme.talabyDashboardTheme,
          debugShowCheckedModeBanner: false,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          navigatorKey: AppNavigator.navigatorKey,
          initialRoute: AppRoutes.splashScreen,
          onGenerateRoute: RouteGenerator.getRoute,
          builder: (context, child) {
            child = easyLoadingBuilder(context, child);
            child = botToastBuilder(context, child);

            final mediaQueryData = MediaQuery.of(context);
            final fixedScale = mediaQueryData.textScaler.clamp(
              minScaleFactor: 1.0,
              maxScaleFactor: 1.0,
            );
            return MediaQuery(
              data: mediaQueryData.copyWith(textScaler: fixedScale),
              child: child,
            );
          },
        ),
      ),
    );
  }
}