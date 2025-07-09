import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mevetec_app/src/core/constant/padding.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';

import '../../../../core/routes/route_name.dart';

class SearchStation extends StatelessWidget {
  const SearchStation({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPadding.horizontalPadding,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: AppColorScheme.shadowColor
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          color: AppColorScheme.borderColor.withValues(alpha: 0.5)
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          color: AppColorScheme.borderColor
                      )
                  ),
                ),
              ),

              SizedBox(height:30.h,),
              GestureDetector(
                  onTap: (){
                    context.push(RouteName.allStationList);
                  },
                  child: Text('View all station list',style: textTheme.bodyLarge!.copyWith(color: AppColorScheme.primary),))

            ],
          ),
        ),
      ),
    );
  }
}
