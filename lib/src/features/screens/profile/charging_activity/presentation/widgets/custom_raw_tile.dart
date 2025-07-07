import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';

class CustomRawTile extends StatelessWidget {
  final String title;
  final String price;
  const CustomRawTile({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 16.h),
      child: Row(
        children: [
          Text(
            title,
            style: textStyle.labelMedium!.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColorScheme.labelTextColor,
            ),
          ),
          Spacer(),
          Text(
            price,
            style: textStyle.labelMedium!.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColorScheme.primaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
