import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mevetec_app/src/core/constant/images.dart';

import '../../../../core/constant/padding.dart';
import '../../../../core/routes/route_name.dart';
import '../../../../core/theme/theme_extension/color_scheme.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          top: 24.h,
          bottom: 36.h,
        ),
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: AppColorScheme.dividerColor)),
        ),
        child: ElevatedButton(
          onPressed: () {
            context.go(RouteName.homeScreen);
          },
          child: Text("Continue"),
        ),
      ),
      body: Column(
        children: [

          Padding(
            padding: AppPadding.horizontalPadding,
            child: Column(
              children: [
                SizedBox(height: 300.h),
                Image.asset(AppImages.groupIcon, height: 180.h, width: 186.w),
                SizedBox(height: 24.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Sign up Successful!",
                    textAlign: TextAlign.left,
                    style: textStyle.headlineLarge!.copyWith(
                      fontSize: 32.sp,
                      color: AppColorScheme.primaryTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),

                Text(
                  "Please wait...",
                  style: textStyle.bodyLarge!.copyWith(
                    color: AppColorScheme.primaryTextColor,
                  ),
                ),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "You will be directed to the homepage.",
                    style: textStyle.bodyLarge!.copyWith(
                      color: AppColorScheme.primaryTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
