import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mevetec_app/src/core/constant/images.dart';
import 'package:mevetec_app/src/core/constant/padding.dart';
import 'package:mevetec_app/src/core/routes/route_name.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';
import 'package:mevetec_app/src/features/common_widegts/social_login_buttons/apple_login_button.dart';
import 'package:mevetec_app/src/features/common_widegts/social_login_buttons/google_login_button.dart';

class OnboardingScreen extends StatelessWidget{
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(AppImages.onboarding,fit: BoxFit.cover,),
          Positioned(
            left: 0,
            right: 0,
            top: (deviceHeight/2)+20.h,
            child:Padding(
              padding: AppPadding.horizontalPadding,
              child: Column(
                spacing: 4.h,
                children: [
                  Text("Let's Get Started",style: textTheme.headlineLarge,),
                  Text("Welcome to Joul — Your EV Charging Companion",style: textTheme.bodyMedium?.copyWith(color: AppColorScheme.onSurface),),
                  SizedBox(height: 20.h,),
                  SizedBox(width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    context.push(RouteName.signUpScreen);
                  }, child: Text("Continue with Phone Number")),
                  ),
                  SizedBox(height: 32.h,),
                  Row(
                    spacing: 12.w,
                    children: [
                      Expanded(child: GoogleLoginButton()),
                      Expanded(child: AppleLoginButton()),
                    ],
                  ),
                  SizedBox(height: 46.h,),
                  Row(
                    spacing: 10.w,
                    children: [
                      Expanded(child: Divider(color: Color(0xff4A4C56),)),
                      Text("Or"),
                      Expanded(child: Divider(color: Color(0xff4A4C56),)),
                    ],
                  ),
                  SizedBox(height: 16.h,),
                  RichText(text: TextSpan(
                    text: "Already have an account? ",
                      style: textTheme.bodyLarge,
                    children: [
                      TextSpan(
                        text: "Sign In",
                        style: textTheme.bodyLarge?.copyWith(color: AppColorScheme.primary),
                        recognizer: TapGestureRecognizer()..onTap = (){
                          context.push(RouteName.signUpScreen);
                          debugPrint("\nNavigating to sign in screen.\n");
                        }
                      )
                    ]
                  ))

                ],
              ),
            )
          )
        ],
      ),
    );
  }
}