import 'package:flutter/material.dart';
import 'package:mevetec_app/src/core/theme/part/app_bar_theme.dart';

import 'part/elevated_button_theme.dart';
import 'part/input_decoration_theme.dart';
import 'theme_extension/color_scheme.dart';
import 'theme_extension/text_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xff101010),
    textTheme: AppTextTheme.darkTextTheme,
    colorScheme: AppColorScheme.colorScheme,
    inputDecorationTheme: AppInputDecorationTheme.darkInputDecorationTheme,
    elevatedButtonTheme: AppEvaluatedButtonThemes.darkEvaluatedButtonTheme,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
  );
}
