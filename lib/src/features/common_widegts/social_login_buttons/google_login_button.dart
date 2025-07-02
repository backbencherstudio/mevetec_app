import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mevetec_app/src/core/constant/icons.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff1C1E22),),
      onPressed: () {
        debugPrint("\nGoogle Login Successful.\n");
      },
      child: Row(
        spacing: 12.w,
        children: [SvgPicture.asset(AppIcons.google), Text("With Google")],
      ),
    );
  }
}
