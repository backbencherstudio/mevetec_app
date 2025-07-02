import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_scheme.dart';

class AppTextTheme {
  static final TextTheme darkTextTheme = TextTheme(
    ///display
    headlineLarge: GoogleFonts.poppins(
      fontSize: 32.0.sp,
      fontWeight: FontWeight.w600,
      color: AppColorScheme.onPrimary,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 28.0.sp,
      fontWeight: FontWeight.w600,
      color: AppColorScheme.onPrimary,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 24.0.sp,
      fontWeight: FontWeight.w700,
      color: AppColorScheme.onPrimary,
    ),

    ///title
    titleLarge: GoogleFonts.poppins(
      fontSize: 24.0.sp,
      fontWeight: FontWeight.w600,
      color: AppColorScheme.onPrimary,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 22.0.sp,
      fontWeight: FontWeight.w600,
      color: AppColorScheme.onPrimary,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 20.0.sp,
      fontWeight: FontWeight.w600,
      color: AppColorScheme.onPrimary,
    ),

    ///body
    bodyLarge: GoogleFonts.poppins(
      fontSize: 16.0.sp,
      fontWeight: FontWeight.normal,
      color: AppColorScheme.onPrimary,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14.0.sp,
      fontWeight: FontWeight.normal,
      color: AppColorScheme.onPrimary,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 12.0.sp,
      fontWeight: FontWeight.normal,
      color: AppColorScheme.onPrimary,
    ),

    ///label
    labelLarge: GoogleFonts.poppins(
      fontSize: 14.0.sp,
      fontWeight: FontWeight.w400,
      color: AppColorScheme.labelTextColor,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 12.0.sp,
      fontWeight: FontWeight.w400,
      color: AppColorScheme.labelTextColor,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 10.0.sp,
      fontWeight: FontWeight.w400,
      color: AppColorScheme.labelTextColor,
    ),
  );
}
