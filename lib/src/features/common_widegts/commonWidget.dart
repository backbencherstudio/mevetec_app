import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';

import '../../core/constant/icons.dart';

class CommonWidget {


static PreferredSizeWidget appBar({required String title, required BuildContext context} ){
      final textStyle = Theme.of(context).textTheme;

 return AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          title,
          style: textStyle.headlineSmall!.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColorScheme.onPrimary,
          ),
        ),
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
