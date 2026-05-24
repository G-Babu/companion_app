import 'package:companion_app/features/auth/binding/login_binding.dart';
import 'package:companion_app/features/auth/pages/login_screen.dart';
import 'package:companion_app/features/home/bindings/home_binding.dart';
import 'package:companion_app/features/home/pages/home_screen.dart';
import 'package:companion_app/features/splash_screen/bindings/splash_binding.dart';
import 'package:companion_app/features/splash_screen/pages/splash_screen.dart';
import 'package:companion_app/features/theme_preview/bindings/theme_preview_binding.dart';
import 'package:companion_app/features/theme_preview/page/theme_preview.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),

    GetPage(
      name: AppRoutes.themePreview,
      page: () => ThemePreviewScreen(),
      binding: ThemePreviewBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
