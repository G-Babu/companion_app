import 'package:companion_app/features/auth/controller/login_controller.dart';
import 'package:companion_app/shared/widgets/buttons/primary_button.dart';
import 'package:companion_app/shared/widgets/inputs/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Welcome Back',
              style: Theme.of(context).textTheme.headlineLarge,
            ),

            const SizedBox(height: 8),

            Text(
              'Login to continue',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 32),

            AppTextField(
              controller: controller.phoneController,
              hintText: 'Enter phone number',
            ),

            const SizedBox(height: 24),

            PrimaryButton(text: 'Continue', onPressed: controller.login),
          ],
        ),
      ),
    );
  }
}
