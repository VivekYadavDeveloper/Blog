import 'package:bloc_learning/Core/Constant/strings.dart';
import 'package:bloc_learning/Core/Themes/app.themes.dart';
import 'package:bloc_learning/Presentation/Router/router.imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        splitScreenMode: true,
        designSize: const Size(390, 844),
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: MyStrings.appTitle,
            theme: MyTheme.light,
            darkTheme: MyTheme.dark,
            routerConfig: _appRouter.config(),
            // home: const MyHomePage(title: 'Bloc'),
          );
        });
  }
}


