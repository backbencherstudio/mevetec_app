import 'package:flutter/material.dart';

class AppColorScheme {
  static const Color screenBackground = Color(0xFF101010);
  static const Color primary = Color(0xFF4A9E30);
  static const Color onPrimary = Colors.white;
  static const Color secondary = Color(0xFF3C91E6);
  static const Color onSecondary = Colors.white;
  static const Color onError = Color(0xFFD7CCC8);
  static const Color error = Color(0xFFF75555);
  static const Color surface = Color(0xFF1A1A1A);
  static const Color onSurface = Color(0xFFA5A5AB);
  static const Color primaryTextColor = Colors.white;
  static const Color secondaryTextColor = Color(0xffE0E0E0);
  static const Color labelTextColor = Color(0xffBDBDBD);
  static const Color borderColor = Color(0xffE9E9EA);
  static const Color shadowColor = Color.fromRGBO(0, 0, 0, 0.10);
  static const Color dividerColor = Color(0xff35383F);
  static const Color cardBgColor =Color(0xff1A1A1A);
  static const Color tileTextColor = Color(0xffA5A5AB);
  static ColorScheme colorScheme = ColorScheme.light(
    primary: primary,
    secondary: secondary,
    surface: surface,
    onPrimary: onPrimary,
    onSecondary: onSecondary,
    onSurface: onSurface,
    error: error,
    onError: onError,
    brightness: Brightness.light,
    errorContainer: error,
  );
}
