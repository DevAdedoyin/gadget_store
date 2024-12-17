import 'package:flutter/material.dart';
import 'package:gadget_store/themes/text_theme.dart';

import '../constants/colors.dart';


class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    // primaryColor: AppColors.primaryColor,
    // backgroundColor: AppColors.secondaryColor,
    scaffoldBackgroundColor:  AppColors.secondaryColor,
    textTheme: AppTextTheme.lightTextTheme,
    // elevatedButtonTheme: ElevatedButtonThemes.lightElevatedButtonTheme,
    // appBarTheme: AppbarTheme.lightAppBarTheme,
    // iconButtonTheme: IconButtonThemes.lightModeIconButton,
  );
}
