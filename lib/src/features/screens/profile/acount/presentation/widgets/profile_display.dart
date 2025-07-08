import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mevetec_app/src/core/constant/images.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';

class ProfileDisplay extends StatelessWidget {
  const ProfileDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Row(
      children: [
        Image.asset(AppImages.profilImage, height: 80.h, width: 80.w),
        SizedBox(width: 20.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Andrew Ainsley", style: textStyle.titleMedium),
            SizedBox(height: 6.h),
            Text(
              "+1 111 467 378 399",
              style: textStyle.labelLarge!.copyWith(
                color: AppColorScheme.labelTextColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
