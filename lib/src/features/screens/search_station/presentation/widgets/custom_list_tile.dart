import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mevetec_app/src/core/constant/icons.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String icon;
  const CustomListTile({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return ListTile(
      title: Text(
        title,
        style: textStyle.titleMedium!.copyWith(
          fontSize: 16.sp,
          color: AppColorScheme.onPrimary,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "Brooklyn, 105 Underhill Ave",
        style: textStyle.bodyMedium!.copyWith(
          color: AppColorScheme.labelTextColor,
          fontWeight: FontWeight.w400,
        ),
      ),

      leading: SvgPicture.asset(icon,
      height: 52.h,
      width: 52.w,
      ),
      trailing: GestureDetector(
        onTap: () {
          
        },
        child: SvgPicture.asset(AppIcons.forwardIcon)),
    );
  }
}
