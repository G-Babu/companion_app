import 'package:companion_app/features/theme_preview/controller/theme_preview_controller.dart';
import 'package:get/get.dart';

class ThemePreviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThemePreviewController());
  }
}
