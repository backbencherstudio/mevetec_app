import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mevetec_app/src/core/constant/padding.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';

class AllStationList extends StatelessWidget {
  const AllStationList({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPadding.horizontalPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  context.pop(); // Close the screen
                },
                child: SvgPicture.asset('assets/icons/home/cross.svg'),
              ),
              SizedBox(height: 23.h,),

              Container(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 20.w,
                  vertical: 16.h,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColorScheme.cardBgColor,
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Row(
                  children: [
                    Container(height: 10, width: 10, color: AppColorScheme.primary),
                    SizedBox(width: 10),
                    Text('47, Sector Sohana road', style: textTheme.titleMedium),
                  ],
                ),
              ),

              SizedBox(height: 23.h,),

              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10.h),
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 20.w,
                        vertical: 16.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColorScheme.cardBgColor,
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Location name',
                                    style: textTheme.bodyMedium!.copyWith(
                                      color: AppColorScheme.primary,
                                    ),
                                  ),
                                  SizedBox(height: 5.h,),
                                  Text(
                                    '47, Sector Sohana road',
                                    style: textTheme.bodyLarge,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                              SvgPicture.asset('assets/icons/search_station/location_red.svg'),
                            ],
                          ),

                          SizedBox(height: 20.h,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Distance',style: textTheme.bodyMedium,),
                                  Text('30 min',style: textTheme.bodyLarge,)
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Power',style: textTheme.bodyMedium,),
                                  Text('7.00k W',style: textTheme.bodyLarge,)
                                ],
                              ),Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Connection',style: textTheme.bodyMedium,),
                                  Text('Type 4',style: textTheme.bodyLarge,)
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h,),

                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(onPressed: (){

                            }, child: Text('Send Direction ')),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
