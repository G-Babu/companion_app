import 'package:companion_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final phoneController = TextEditingController();

  @override
  void onClose() {
    phoneController.dispose();

    super.onClose();
  }

  void login() {
    if (phoneController.text.trim().isEmpty) {
      Get.snackbar('Error', 'Please enter phone number');
      return;
    }

    Get.offNamed(AppRoutes.home);
  }
}
