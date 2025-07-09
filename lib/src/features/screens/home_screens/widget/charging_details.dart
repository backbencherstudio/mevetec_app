import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/icons.dart';
import '../../../../core/theme/theme_extension/color_scheme.dart';

class ChargingDetails extends StatelessWidget {
  const ChargingDetails({super.key, required this.textTheme});

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w, vertical: 24.h),
      decoration: BoxDecoration(
        color: AppColorScheme.cardBgColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Middleton Pool #1', style: textTheme.headlineMedium),
          SizedBox(height: 10.h),
          Row(
            children: [
              SvgPicture.asset(
                AppIcons.locationOutlined,
                colorFilter: ColorFilter.mode(
                  AppColorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(width: 10.w),
              Text('Middleton Pool #1', style: textTheme.bodyLarge),
            ],
          ),
          SizedBox(height: 10.h),
          Divider(color: AppColorScheme.dividerColor, thickness: 2),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Session Time',
                    style: textTheme.titleMedium!.copyWith(
                      color: AppColorScheme.onSurface,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '00:01:00',
                    style: textTheme.titleMedium!.copyWith(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
                child: VerticalDivider(
                  color: AppColorScheme.dividerColor,
                  width: 2,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Rate',
                    style: textTheme.titleMedium!.copyWith(
                      color: AppColorScheme.onSurface,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '\$0.45/kWh',
                    style: textTheme.titleMedium!.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
