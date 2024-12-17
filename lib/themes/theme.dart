import 'package:flutter/material.dart';
import 'package:gadget_store/themes/text_theme.dart';


class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.green[900],
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    // elevatedButtonTheme: ElevatedButtonThemes.lightElevatedButtonTheme,
    // appBarTheme: AppbarTheme.lightAppBarTheme,
    // iconButtonTheme: IconButtonThemes.lightModeIconButton,
  );
}
