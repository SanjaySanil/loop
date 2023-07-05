import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loop/routes/routes.dart';
import 'package:loop/theme/app_theme.dart';
import 'package:loop/views/pages/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Music app",
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      getPages:AppRoutes.getPages,
    );
  }
}
