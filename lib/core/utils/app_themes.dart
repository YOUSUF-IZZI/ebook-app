import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppThemes {
  static ThemeData get light => ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static ThemeData get dark => ThemeData(
    scaffoldBackgroundColor: AppColors.primaryColor,
    // App bar theme
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    // Text theme
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
