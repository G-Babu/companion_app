import 'package:companion_app/core/theme/app_dimensions.dart';
import 'package:companion_app/features/splash_screen/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final splashController = controller;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [colorScheme.primary, colorScheme.primaryContainer],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 3),
              // Logo Section
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: colorScheme.onPrimary.withOpacity(0.15),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Icon(
                    Icons.shield_outlined,
                    size: 80,
                    color: colorScheme.onPrimary,
                  ),
                  Positioned(
                    top: 58,
                    child: Icon(
                      Icons.favorite,
                      size: 32,
                      color: colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppDimensions.xl),
              // App Name
              Text(
                'Hridaya',
                style: theme.textTheme.displayMedium?.copyWith(
                  color: colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppDimensions.xs),
              // Tagline
              Text(
                'Talk. Connect. Feel Better.',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onPrimary.withOpacity(0.9),
                ),
              ),
              const Spacer(flex: 4),
              // Avatars Row
              _buildAvatarGroup(context),
              const SizedBox(height: AppDimensions.xl),
              // Progress Indicator
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.roundedFull,
                  ),
                  child: LinearProgressIndicator(
                    value: 0.6,
                    minHeight: 4,
                    backgroundColor: colorScheme.onPrimary.withOpacity(0.2),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: AppDimensions.xl),
              // Footer Text
              Text(
                'DESIGNED FOR CONNECTION',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.onPrimary.withOpacity(0.7),
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: AppDimensions.xl),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvatarGroup(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final images = [
      'https://i.pravatar.cc/150?u=1',
      'https://i.pravatar.cc/150?u=2',
      'https://i.pravatar.cc/150?u=3',
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 44,
          width: 140,
          child: Stack(
            children: [
              ...List.generate(images.length, (index) {
                return Positioned(
                  left: index * 28.0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: colorScheme.onPrimary,
                        width: 1.5,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(images[index]),
                    ),
                  ),
                );
              }),
              Positioned(
                left: images.length * 28.0,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withOpacity(0.6),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: colorScheme.onPrimary,
                      width: 1.5,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '+5k',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: colorScheme.onPrimary,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
