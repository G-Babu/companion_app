import 'package:companion_app/features/theme_preview/controller/theme_preview_controller.dart';
import 'package:companion_app/shared/widgets/buttons/primary_button.dart';
import 'package:companion_app/shared/widgets/inputs/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:companion_app/core/theme/app_theme.dart';
import 'package:get/get.dart';

class ThemePreviewScreen extends GetView<ThemePreviewController> {
  const ThemePreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    return Obx(() {
      final theme = controller.isDark.value
          ? AppTheme.darkTheme
          : AppTheme.lightTheme;
      return Theme(
        data: theme,
        child: Scaffold(
          appBar: AppBar(title: const Text('Theme Preview')),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SwitchListTile(
                  title: const Text('Dark Mode'),
                  value: controller.isDark.value,
                  onChanged: controller.toggleTheme,
                ),
                const SizedBox(height: 16),
                Text('Display Large', style: theme.textTheme.displayLarge),
                const SizedBox(height: 8),
                Text('Headline Medium', style: theme.textTheme.headlineMedium),
                const SizedBox(height: 8),
                Text('Body Medium', style: theme.textTheme.bodyMedium),
                const SizedBox(height: 24),
                PrimaryButton(text: 'Primary Button', onPressed: () {}),
                const SizedBox(height: 16),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Secondary Button'),
                ),
                const SizedBox(height: 16),
                AppTextField(
                  controller: textController,
                  hintText: 'Enter text here...',
                ),
                const SizedBox(height: 16),
                Card(
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Card content'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
