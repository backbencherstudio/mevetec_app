import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme_extension/color_scheme.dart';

class AppEvaluatedButtonThemes {
  AppEvaluatedButtonThemes._();

  // Light mode Evaluated Button Theme
  static final darkEvaluatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
      foregroundColor: Colors.white,
      backgroundColor: AppColorScheme.primary,
      textStyle: GoogleFonts.poppins(
        textStyle: TextStyle(fontSize: 16.sp),
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
    ),
  );
}
