import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';

class AddNewPaymentTile extends StatelessWidget {
  final void Function()? onTap;
  const AddNewPaymentTile({super.key,
  required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r),
          color: Color(0xff1C1E22),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add,
              color: Color(0xffffffff),
              ),
              SizedBox(width: 16.w,),
              Text("Add New Payment",
              style: textStyle.bodyLarge!.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColorScheme.primaryTextColor,
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}