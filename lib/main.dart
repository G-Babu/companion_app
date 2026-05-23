import 'package:companion_app/bindings/initial_binding.dart';
import 'package:companion_app/routes/app_pages.dart';
import 'package:companion_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.themePreview,
      getPages: AppPages.pages,
      initialBinding: InitialBinding(),
      // const Scaffold(body: Center(child: Text('Hridaya'))),
    );
  }
}
