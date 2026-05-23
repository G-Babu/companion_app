import 'package:companion_app/features/theme_preview/controller/theme_preview_controller.dart';
import 'package:flutter/material.dart';
import 'package:companion_app/core/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ThemePreviewScreen extends StatefulWidget {
  const ThemePreviewScreen({super.key});

  @override
  State<ThemePreviewScreen> createState() => _ThemePreviewScreenState();
}

class _ThemePreviewScreenState extends State<ThemePreviewScreen> {
  bool isDark = false;
  final controller = Get.find<ThemePreviewController>();
  @override
  Widget build(BuildContext context) {
    final theme = isDark ? AppTheme.darkTheme : AppTheme.lightTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Theme Preview')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: const Text('Dark Mode'),
              value: isDark,
              onChanged: (value) => setState(() => isDark = value),
            ),
            const SizedBox(height: 16),
            Text('Display Large', style: theme.textTheme.displayLarge),
            const SizedBox(height: 8),
            Text('Headline Medium', style: theme.textTheme.headlineMedium),
            const SizedBox(height: 8),
            Text('Body Medium', style: theme.textTheme.bodyMedium),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Primary Button'),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Secondary Button'),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text('Card content'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
