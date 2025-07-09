import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mevetec_app/src/core/constant/icons.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';
import 'package:mevetec_app/src/features/screens/profile/charging_activity/presentation/widgets/custom_raw_tile.dart';

class CustomBillContainer extends StatelessWidget {
  const CustomBillContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(top: 24.h),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColorScheme.cardBgColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Home Charging",
                style: textStyle.labelLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColorScheme.onPrimary,
                ),
              ),

              SizedBox(height: 4.h),
              Text(
                "5-33 Samin Long UK",
                style: textStyle.labelLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColorScheme.tileTextColor,
                ),
              ),
              CustomRawTile(title: 'Charge Power', price: '50 kWh'),
              CustomRawTile(title: 'Rate', price: '\$0.45/kWh'),
              CustomRawTile(title: 'Data & Time', price: '25 Nov 23, 07:50AM'),
              SizedBox(height: 24.h),
              Row(
                children: [
                  SvgPicture.asset(AppIcons.masterCard),
                  SizedBox(width: 8.w),
                  Text(
                    "•••1234",
                    style: textStyle.labelMedium!.copyWith(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColorScheme.onPrimary,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$15.12",
                    style: textStyle.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),

              DottedLine(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 4.0,
                dashColor: AppColorScheme.dividerColor,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
              ),

              SizedBox(height: 24.h),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Download Invoice"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
