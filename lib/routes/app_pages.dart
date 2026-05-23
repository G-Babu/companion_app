import 'package:companion_app/features/theme_preview/bindings/theme_preview_binding.dart';
import 'package:companion_app/features/theme_preview/page/theme_preview.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.themePreview,
      page: () => const ThemePreviewScreen(),
      binding: ThemePreviewBinding(),
    ),
  ];
}
