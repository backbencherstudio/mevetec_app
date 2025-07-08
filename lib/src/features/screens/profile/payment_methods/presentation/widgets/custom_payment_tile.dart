import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';

class CustomPaymentTile extends StatelessWidget {
  final String title;
  final String img;
  const CustomPaymentTile({super.key,
  required this.img,
  required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Color(0xff1A1A1A),
        border: Border.all(
          color: AppColorScheme.dividerColor
        )
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical:16.h ),
        child: Row(
          children: [
            Image.asset( img,
            height: 60.h,
            width: 60.w,
            ),
            SizedBox(width: 16.w),
            Text(
              title,
              style: textStyle.bodyLarge!.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColorScheme.onPrimary,
              ),
            ),
            Spacer(),
            Text(
              "Connected",
              style: textStyle.bodyLarge!.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
