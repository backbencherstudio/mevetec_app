import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constant/icons.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final String? img;
  final String? icon;
  final void Function()? onTap;
  const CustomAppBar({super.key, this.title, this.img, this.onTap , this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title: title != null ? Text(title!) : SizedBox.shrink(),
      leading: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(icon ?? AppIcons.backButton),
        ),
      ),
      actions: [
        GestureDetector(onTap: onTap, child: img !=null ? Padding(
          padding: EdgeInsets.only(right: 24.w),
          child: SvgPicture.asset(img!),
        ): SizedBox()),
      ],
    );
  }
}
