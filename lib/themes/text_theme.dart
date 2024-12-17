import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/font_sizes.dart';

class AppTextTheme {
  AppTextTheme._();

  // LIGHT Mode Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: FontSizes.biggestFont,
        fontWeight: FontWeight.bold,
        color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: FontSizes.biggerFont,
        fontWeight: FontWeight.w600,
        color: Colors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: FontSizes.bigFont,
        fontWeight: FontWeight.w500,
        color: Colors.black),

    // title theme
    titleLarge: const TextStyle().copyWith(
        fontSize: FontSizes.biggerFont,
        fontWeight: FontWeight.bold,
        color: Colors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: FontSizes.bigFont,
        fontWeight: FontWeight.w700,
        color: Colors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: FontSizes.mediumFont,
        fontWeight: FontWeight.w400,
        color: Colors.black),

    // label theme
    bodyLarge: const TextStyle().copyWith(
        fontSize: FontSizes.biggerFont,
        fontWeight: FontWeight.bold,
        color: Colors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: FontSizes.mediumFont,
        fontWeight: FontWeight.w500,
        color: Colors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: FontSizes.smallFont,
        fontWeight: FontWeight.w400,
        color: Colors.black),

    // label theme
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black),
  );

  // DARK Mode Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: FontSizes.biggestFont,
        fontWeight: FontWeight.bold,
        color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: FontSizes.biggerFont,
        fontWeight: FontWeight.w600,
        color: Colors.white),
    headlineSmall: const TextStyle().copyWith(
        fontSize: FontSizes.bigFont,
        fontWeight: FontWeight.w500,
        color: Colors.white),

    // title theme
    titleLarge: const TextStyle().copyWith(
        fontSize: FontSizes.biggerFont,
        fontWeight: FontWeight.bold,
        color: Colors.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: FontSizes.bigFont,
        fontWeight: FontWeight.w600,
        color: Colors.white),
    titleSmall: const TextStyle().copyWith(
        fontSize: FontSizes.mediumFont,
        fontWeight: FontWeight.w600,
        color: Colors.white),

    // label theme
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),

    // label theme
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white),
  );

  // Miscellaneous Themes
  // Splash Screen Text Theme
  static TextStyle splashScreenTextStyle = GoogleFonts.londrinaSketch(
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
      fontSize: FontSizes.mediumFont,
      color: AppColors.secondaryColor);

  // Splash Screen Text Theme
  static TextStyle metaTextTheme = GoogleFonts.montserrat(
      fontWeight: FontWeight.w600,
      color: AppColors.secondaryColor,
      fontSize: FontSizes.smallerFont);
}
