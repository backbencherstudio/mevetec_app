import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mevetec_app/src/core/routes/route_name.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/constant/padding.dart';
import '../../../../core/theme/theme_extension/color_scheme.dart';
import '../../../common_widegts/commonWidget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
        child: ElevatedButton(onPressed: () {
          context.push(RouteName.completeProfileScreen);
        }, child: Text("Continue")),
      ),
      body: Column(
        children: [
          CommonWidget.appBar(title: ""),

          Padding(
            padding: AppPadding.horizontalPadding,
            child: Column(
              children: [
                SizedBox(height: 24.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "OTP code verification ",
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
                  "We have sent an OTP code to phone number ●●● ●●● ●●● ●99. Enter the OTP code below to continue.",
                  style: textStyle.bodyLarge!.copyWith(
                    color: AppColorScheme.primaryTextColor,
                  ),
                ),
                SizedBox(height: 32.h),

                PinCodeTextField(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  appContext: context,

                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.numberWithOptions(),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(16.r),
                    fieldHeight: 70.h,
                    fieldWidth: 83.w,
                    activeFillColor: Color(0xff7ED957),
                    selectedFillColor: AppColorScheme.primary,
                    inactiveFillColor: Colors.transparent,
                    inactiveColor: Color(0xff4A4C56),
                    activeColor: AppColorScheme.primary,
                    selectedColor: AppColorScheme.primary,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(height: 40.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Didn't receive email?",
                    style: textStyle.titleSmall!.copyWith(
                      color: AppColorScheme.primaryTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "You can resend code in ",
                          style: textStyle.titleSmall!.copyWith(
                            color: AppColorScheme.primaryTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        
                        ),
                        TextSpan(text: "48 s",
                        style: textStyle.titleSmall!.copyWith(
                            color: AppColorScheme.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
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
