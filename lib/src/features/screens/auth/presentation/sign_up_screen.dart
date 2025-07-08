import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:mevetec_app/src/core/routes/route_name.dart';
import 'package:mevetec_app/src/features/screens/auth/presentation/widgets/policy.dart';

import '../../../../core/constant/padding.dart';
import '../../../../core/theme/theme_extension/color_scheme.dart';
import '../../../common_widegts/commonWidget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
          context.push(RouteName.otpScreen);
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
                    "Hello there 👋",
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
                  "Please enter your phone number. You will receive an OTP code in the next step for the verification process.",
                  style: textStyle.bodyLarge!.copyWith(
                    color: AppColorScheme.primaryTextColor,
                  ),
                ),
                SizedBox(height: 32.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Phone Number",
                    style: textStyle.bodyLarge!.copyWith(
                      color: AppColorScheme.primaryTextColor,
                    ),
                  ),
                ),
                InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {},
                  onInputValidated: (bool isValid) {},
                  initialValue: PhoneNumber(isoCode: 'US'),
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.DROPDOWN,
                    showFlags: true,
                  ),
                  hintText: "Enter your phone number",
                  textFieldController: TextEditingController(),
                  inputDecoration: InputDecoration(
                    hintText: "Phone Number",
                    contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  spaceBetweenSelectorAndTextField: 1.0,
                ),

                Divider(color: AppColorScheme.primary, thickness: 1.0),
                SizedBox(height: 24.h),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(value: true, onChanged: (v) {}),
                    Policy(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
