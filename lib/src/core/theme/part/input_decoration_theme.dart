import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme_extension/color_scheme.dart';

class AppInputDecorationTheme {
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.zero,
    filled: false,
    hintStyle: GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff35383F),
    ),
    labelStyle: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: AppColorScheme.primaryTextColor,
    ),
    prefixIconColor: Color(0xff6A707C),
    suffixIconColor: Color(0xff6A707C),
    errorStyle: GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xffFC5733),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xff4A4C56)),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xff4A4C56)),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColorScheme.primary.withValues(alpha: 0.5),
      ),
    ),
    disabledBorder: InputBorder.none,
    errorBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: Color(0xff4A4C56)),
    ),
  );
}
