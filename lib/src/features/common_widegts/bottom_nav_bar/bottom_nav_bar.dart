import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constant/icons.dart';
import 'bottom_sheet_provider.dart';

class BottomNavBar extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavBar({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isBottomSheetOpen = ref.watch(bottomSheetVisibilityProvider);

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: isBottomSheetOpen
          ? SizedBox.shrink() // Hide nav bar when bottom sheet is open
          : SafeArea(
            child: ClipRRect(
                    borderRadius: BorderRadius.circular(60.r),
                    child: Container(
            height: 80.h,
            margin: EdgeInsets.only(left: 40.w,right: 40.w,bottom: 20.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(60.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(
                  index: 0,
                  icon: AppIcons.homeSolid,
                  outlineIcon: AppIcons.homeOutlined,
                  label: 'Home',
                  onTap: () => navigationShell.goBranch(0),
                ),
                _buildNavItem(
                  index: 1,
                  icon: AppIcons.locationSolid,
                  outlineIcon: AppIcons.locationOutlined,
                  label: 'Map',
                  onTap: () => navigationShell.goBranch(1),
                ),
                _buildNavItem(
                  index: 2,
                  icon: AppIcons.userSolid,
                  outlineIcon: AppIcons.userOutlined,
                  label: 'Profile',
                  onTap: () => navigationShell.goBranch(2),
                ),
              ],
            ),
                    ),
                  ),
          ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String icon,
    required String outlineIcon,
    required String label,
    required VoidCallback onTap,
  }) {


    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.h),
        padding: EdgeInsets.all(15.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          color: navigationShell.currentIndex == index
              ? Color(0xff070707)
              : Colors.transparent,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              navigationShell.currentIndex == index ? icon : outlineIcon,
              width: 24.w,
              height: 24.w,
            ),
            if (navigationShell.currentIndex == index) ...[
              SizedBox(width: 5.w),
              Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}