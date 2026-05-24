import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemePreviewController extends GetxController {
  final isDark = false.obs;
  final textController = TextEditingController();

  void toggleTheme(bool value) {
    isDark.value = value;
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }
}
