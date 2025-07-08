import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mevetec_app/src/core/routes/route_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/app_logo.png',
                  height: 55.h,
                  width: 90.w,
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/home_flow/not_charging_circle.svg',
                    height: 270.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 110.h,
                    child: ElevatedButton(
                      onPressed: () {
                        context.push(RouteName.qrScanner);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Text('Scan', style: textTheme.bodyLarge),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 6,
                children: [
                  SvgPicture.asset('assets/icons/home/not_charging_icon.svg'),
                  Text('Not Selected', style: textTheme.bodyLarge),
                ],
              ),
              SizedBox(height: 32.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Find Location'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
