import 'package:flutter/material.dart';
import 'package:hw3/resources/themeManager.dart';
import 'package:hw3/routing/navigations.dart';
import 'package:hw3/routing/routes.dart';
import 'package:hw3/ui/page/splashPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeManager.lightTheme,
        debugShowCheckedModeBanner: false,
        navigatorKey: ServiceNavigations.serviceNavi.navKey,
        onGenerateRoute: RoutsGnerate.generateRoute,
        home: SplashPage(),
      ),
    );
  }
}
