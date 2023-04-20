import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/utils/helper/helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return ScreenUtilInit(
      /// Set screen size to make responsive
      /// Almost all device

      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, __) {
        /// Pass context to appRoute
        AppRoute.setStream(context);

        return MaterialApp.router(
          routeInformationProvider: AppRoute.router.routeInformationProvider,
          routeInformationParser: AppRoute.router.routeInformationParser,
          routerDelegate: AppRoute.router.routerDelegate,
          debugShowCheckedModeBanner: false,
          builder: (BuildContext context, Widget? child) {
            final MediaQueryData data = MediaQuery.of(context);

            return MediaQuery(
              data: data.copyWith(
                textScaleFactor: 1,
                alwaysUse24HourFormat: true,
              ),
              child: child!,
            );
          },
          title: Constants.get.appName,
          theme: themeLight(context),
          darkTheme: themeDark(context),
        );
      },
    );
  }
}
