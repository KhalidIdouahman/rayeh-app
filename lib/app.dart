import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'navigation_menu.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (ctx,child) => MaterialApp(
        title: 'Rayeh App', 
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: ThemeData(),
        // darkTheme: ThemeData(),
        home: NavigationBottomMenu(),
      ),
    );
  }
}
