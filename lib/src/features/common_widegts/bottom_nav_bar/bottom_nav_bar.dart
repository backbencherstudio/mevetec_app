import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constant/icons.dart';

class BottomNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(60.r),
        child: Container(
          height: 80.h,
          margin: EdgeInsets.symmetric(horizontal: 40.w),
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
                onTap: () => navigationShell.goBranch(0),
              ),
              _buildNavItem(
                index: 1,
                icon: AppIcons.locationSolid,
                outlineIcon: AppIcons.locationOutlined,
                onTap: () => navigationShell.goBranch(1),
              ),
              _buildNavItem(
                index: 2,
                icon: AppIcons.userSolid,
                outlineIcon: AppIcons.userOutlined,
                onTap: () => navigationShell.goBranch(2),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String icon,
    required String outlineIcon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsetsGeometry.symmetric(vertical: 5.h),
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
            ),
            if(navigationShell.currentIndex == index)
              SizedBox(width: 5,),
              if(navigationShell.currentIndex==2)
                Text('Profile'),
              if(navigationShell.currentIndex ==1)
                Text('Map'),
              if(navigationShell.currentIndex==0)
                Text('Home')
          ],
        ),
      ),
    );
  }
}
