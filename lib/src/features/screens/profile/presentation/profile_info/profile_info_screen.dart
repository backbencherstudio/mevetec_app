// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mevetec_app/src/core/constant/padding.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';
import 'package:mevetec_app/src/features/common_widegts/commonWidget.dart';
import 'package:mevetec_app/src/features/screens/profile/presentation/profile_info/widgets/profile_pic.dart';

class ProfileInfoScreen extends StatelessWidget {
  const ProfileInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
  
  bottomNavigationBar: Container(
    width: double.infinity,
    padding: EdgeInsets.only(left: 24.w,right: 24.w,top: 24.h,bottom: 36.h),
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Colors.white
        )
      )
    ),
    child: ElevatedButton(onPressed: (){}, child: Text("Save")),
  ),
      body: SingleChildScrollView(
      child: Padding(
        padding: AppPadding.horizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonWidget.appBar(title: "Personal Info"),
            ProfilePic(),
            SizedBox(height:16.h,),
            Text("Full Name",style: textStyle.bodyLarge!.copyWith(fontWeight: FontWeight.w500,color: AppColorScheme.primaryTextColor,),),
            SizedBox(height:16.h,),
            TextFormField(),
            SizedBox(height: 24.h,),
            Text("Phone Number",style: textStyle.bodyLarge!.copyWith(fontWeight: FontWeight.w500,color: AppColorScheme.primaryTextColor,),),
            SizedBox(height:16.h,),
            TextFormField(),
            SizedBox(height: 24.h,),
            Text("Email",style: textStyle.bodyLarge!.copyWith(fontWeight: FontWeight.w500,color: AppColorScheme.primaryTextColor,),),
            SizedBox(height:16.h,),
            TextFormField(),
            SizedBox(height: 24.h,),
            Text("Gender",style: textStyle.bodyLarge!.copyWith(fontWeight: FontWeight.w500,color: AppColorScheme.primaryTextColor,),),
            SizedBox(height:16.h,),
            TextFormField(),
            SizedBox(height: 24.h,),
            Text("Date of Birth",style: textStyle.bodyLarge!.copyWith(fontWeight: FontWeight.w500,color: AppColorScheme.primaryTextColor,),),
            SizedBox(height:16.h,),
            TextFormField(),
            SizedBox(height: 24.h,),
            Text("Street Address",style: textStyle.bodyLarge!.copyWith(fontWeight: FontWeight.w500,color: AppColorScheme.primaryTextColor,),),
            SizedBox(height:16.h,),
            TextFormField(),
            SizedBox(height: 24.h,),
            Text("Country",style: textStyle.bodyLarge!.copyWith(fontWeight: FontWeight.w500,color: AppColorScheme.primaryTextColor,),),
            SizedBox(height:16.h,),
            TextFormField(),
            SizedBox(height: 24.h,), 
          ],
        ),
      ),
              ),
  
    );
  }
}
