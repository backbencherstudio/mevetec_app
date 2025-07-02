import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constant/icons.dart';

class CustomAppBar extends StatelessWidget{
  final String? title;
  const CustomAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title: title != null ? Text(
        title!,
      ) : SizedBox.shrink(),
      leading: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(AppIcons.backButton),
        ),
      ),
    );
  }
}