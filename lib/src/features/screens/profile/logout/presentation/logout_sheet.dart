import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mevetec_app/src/core/routes/route_name.dart';
import '../../../../../core/theme/theme_extension/color_scheme.dart';
import '../../../../common_widegts/bottom_nav_bar/bottom_sheet_provider.dart';

void showLogouttSheet(BuildContext context, WidgetRef ref) {
  final textStyle = Theme.of(context).textTheme;

  /// Set bottom sheet visibility to true when showing the logout sheet
  ref.read(bottomSheetVisibilityProvider.notifier).state = true;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    useSafeArea: true,
    builder: (context) {
      return IntrinsicHeight(
        child: Container(
          padding: EdgeInsets.all(24.r),
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          decoration: const BoxDecoration(
            color: Color(0xFF1A1A1A),
            borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
          ),
          child: Consumer(
            builder: (context, ref, _) {
              return Column(
                children: [
                  Center(
                    child: Container(
                      height: 3.w,
                      width: 38.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xff171717),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    "Logout",
                    style: textStyle.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColorScheme.error,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Divider(color: AppColorScheme.onSurface, thickness: 0.5),

                  SizedBox(height: 24.h),
                  Text(
                    "Are you sure you want to log out?",
                    style: textStyle.titleMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColorScheme.primaryTextColor,
                    ),
                  ),
                  SizedBox(height: 24.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 62.h,
                          width: 183.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff1C1E22),
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 18.h,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context); // Close the sheet
                            },
                            child: Text("Cancel"),
                          ),
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: SizedBox(
                          height: 62.h,
                          width: 183.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColorScheme.primary,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 18.h,
                              ),
                            ),
                            onPressed: () {
                              context.push(RouteName.onboardingScreen); // Navigate to onboarding
                            },
                            child: Text("Yes, Logout"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      );
    },
  ).whenComplete(() {
    // Reset bottom sheet visibility to false after the sheet is dismissed
    ref.read(bottomSheetVisibilityProvider.notifier).state = false;
  });
}
