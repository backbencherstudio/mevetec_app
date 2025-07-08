import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mevetec_app/src/core/constant/images.dart';
import '../../../../../../core/constant/icons.dart';
import '../../../../../../core/constant/padding.dart';
import '../../../../../../core/theme/theme_extension/color_scheme.dart';
import '../../../../../common_widegts/commonWidget.dart';

class AddNewPaymentMthdScreen extends StatelessWidget {
  const AddNewPaymentMthdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          top: 24.h,
          bottom: 36.h,
        ),
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: AppColorScheme.dividerColor)),
        ),
        child: ElevatedButton(onPressed: () {}, child: Text("Save")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonWidget.appBar(title: "Add New Payment",
            icon: AppIcons.cross
            ),

            Padding(
              padding: AppPadding.horizontalPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AppImages.card),
                  SizedBox(height: 24.h),
                  Text(
                    "Card Holder Name",
                    style: textStyle.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColorScheme.primaryTextColor,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  TextFormField(),
                  SizedBox(height: 24.h),
                  Text(
                    "Card Number",
                    style: textStyle.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColorScheme.primaryTextColor,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  TextFormField(),
                  SizedBox(height: 24.h),
                  Text(
                    "Expiry Date",
                    style: textStyle.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColorScheme.primaryTextColor,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(AppIcons.calender),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    "CVV",
                    style: textStyle.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColorScheme.primaryTextColor,
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
