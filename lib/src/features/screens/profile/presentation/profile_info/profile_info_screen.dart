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
      appBar: CommonWidget.appBar(title: "Personal Info", context: context),
      body: Stack(
        children:[
          
          
          
          
          SingleChildScrollView(
          child: Padding(
            padding: AppPadding.horizontalPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
        Positioned(
          top: 700,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 122.h,
          decoration: BoxDecoration(
            color: AppColorScheme.screenBackground
          ),
          child: Column(
            children: [
             Divider(color: AppColorScheme.onSurface, thickness: 0.5),
              Center(child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColorScheme.primary),
                 shape: MaterialStateProperty.all(
                 RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(100.r))),),
                  onPressed: (){}, child: Text("save") )
              
              ),
            ],
          ),
        ))
      
      
      
      ]),
  
    );
  }
}
