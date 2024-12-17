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
        fontWeight: FontWeight.w600,
        color: Colors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: FontSizes.mediumFont,
        fontWeight: FontWeight.w400,
        color: Colors.black),

    // label theme
    bodyLarge: const TextStyle().copyWith(
        fontSize: FontSizes.bigFont,
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
    labelLarge: const TextStyle()
        .copyWith(fontSize: FontSizes.smallFont, color: Colors.grey),
    labelMedium: const TextStyle().copyWith(
        fontSize: FontSizes.smallerFont,
        color: Colors.grey),
  );
}
