import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mevetec_app/src/core/constant/icons.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';

class CustomInfoTile extends StatelessWidget {
  final String title;
  final String subtitile;
  final String icon;

  const CustomInfoTile({super.key,
  required this.title,
  required this.subtitile,
  required this.icon
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(icon),
              SizedBox(width: 10.w),
              Text(
              title,
                style: textStyle.titleSmall!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColorScheme.onPrimary,
                ),
              ),
              Spacer(),
              SvgPicture.asset(AppIcons.penIcon),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
             subtitile,
              style: textStyle.labelLarge!.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColorScheme.labelTextColor,
              ),
            ),
          ),
          SizedBox(height: 16.h,),
          Divider(color: AppColorScheme.onSurface, thickness: 0.5),
        ],
      ),
    );
  }
}
