import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mevetec_app/src/core/constant/icons.dart';
import 'package:mevetec_app/src/core/constant/images.dart';

class ProfilePic extends StatelessWidget {
  final String? img;
  const ProfilePic({super.key,
  this.img,
  
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset(
             img ?? AppImages.profileUp,
              height: 120.h,
              width: 120.w,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 10,
            child: SvgPicture.asset(
              AppIcons.editIcon,
              height: 25.h,
              width: 25.w,
            ),
          ),
        ],
      ),
    );
  }
}
