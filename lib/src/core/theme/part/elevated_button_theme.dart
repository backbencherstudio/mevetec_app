import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme_extension/color_scheme.dart';

class AppEvaluatedButtonThemes {
  AppEvaluatedButtonThemes._();

  // Light mode Evaluated Button Theme
  static final darkEvaluatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      foregroundColor: Colors.white,
      backgroundColor: AppColorScheme.primary,
      textStyle: GoogleFonts.urbanist(
        textStyle: TextStyle(fontSize: 15.sp),
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
    ),
  );
}
