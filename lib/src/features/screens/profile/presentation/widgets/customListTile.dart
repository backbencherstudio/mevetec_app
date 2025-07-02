import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mevetec_app/src/core/constant/icons.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';

class Customlisttile extends StatelessWidget {
  final String title;
  final String leadingIcon;
  final void Function()? onTap;
  final Color? textColor;
  final double? textSize;
  final bool? isLeadingOff;

  const Customlisttile({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.onTap,
    this.textColor,
    this.textSize,
    this.isLeadingOff,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        title: Text(
          title,
          style: textStyle.bodyLarge!.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: textSize ?? 16.sp,
            color: textColor ?? AppColorScheme.onPrimary,
          ),
        ),
        leading: SvgPicture.asset(leadingIcon),
        trailing: isLeadingOff == true? null: GestureDetector(
        child: SvgPicture.asset(AppIcons.forwardIcon),
        ),
      ),
    );
  }
}
