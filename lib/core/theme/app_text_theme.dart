import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = GoogleFonts.plusJakartaSansTextTheme(
    const TextTheme(
      displayLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w800,
        height: 56 / 48,
        letterSpacing: -0.02,
      ),
      displayMedium: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w800,
        height: 44 / 36,
        letterSpacing: -0.02,
      ),
      headlineLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        height: 38 / 30,
        letterSpacing: -0.01,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 28 / 20,
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 28 / 18,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 20 / 14,
        letterSpacing: 0.01,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: 16 / 12,
        letterSpacing: 0.03,
      ),
    ),
  );

  static TextTheme darkTextTheme = GoogleFonts.plusJakartaSansTextTheme(
    const TextTheme(
      displayLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w800,
        height: 56 / 48,
        letterSpacing: -0.02,
      ),
      displayMedium: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w800,
        height: 44 / 36,
        letterSpacing: -0.02,
      ),
      headlineLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        height: 38 / 30,
        letterSpacing: -0.01,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 28 / 20,
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 28 / 18,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 20 / 14,
        letterSpacing: 0.01,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: 16 / 12,
        letterSpacing: 0.03,
      ),
    ),
  );
}
