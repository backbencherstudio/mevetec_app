import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as ref;
import 'package:mevetec_app/src/core/constant/icons.dart';
import 'package:mevetec_app/src/core/constant/padding.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';
import 'package:mevetec_app/src/features/common_widegts/commonWidget.dart';
import 'package:mevetec_app/src/features/screens/profile/acount/Riverpod/listProvider.dart';
import 'package:mevetec_app/src/features/screens/profile/acount/presentation/widgets/custom_list_tile.dart';
import 'package:mevetec_app/src/features/screens/profile/acount/presentation/widgets/profile_display.dart';
import 'package:mevetec_app/src/features/screens/profile/logout/presentation/logout_sheet.dart';

import '../../../../common_widegts/bottom_nav_bar/bottom_sheet_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CommonWidget.appBar(title: "Account"),
          Padding(
            padding: AppPadding.horizontalPadding,
            child: Column(
              children: [
                SizedBox(height: 24.w),
                ProfileDisplay(),
                SizedBox(height: 32.h),
                Divider(color: AppColorScheme.onSurface, thickness: 0.5),
                SizedBox(
                  child: Consumer(
                    builder: (context, ref, _) {
                      final tileInfo = ref.watch(listProvider);
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: tileInfo.length,
                        itemBuilder: (context, index) {
                          return Customlisttile(
                            title: tileInfo[index].name,
                            leadingIcon: tileInfo[index].imgIcon,
                            onTap: () {
                              context.push(tileInfo[index].routName);
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 32.h),
                Consumer(
                  builder: (context, ref,_) {
                    return Customlisttile(
                      title: "Logout",
                      onTap: () {
                        showLogouttSheet(context,ref);
                      },
                      textColor: AppColorScheme.error,
                      textSize: 18.sp,
                      leadingIcon: AppIcons.logoutIcon,
                      isLeadingOff: true,
                    );
                  }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
