import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mevetec_app/src/features/screens/home_screens/widget/circle_box_shadow.dart';

class ChargingCircleIndicator extends StatelessWidget {
  const ChargingCircleIndicator({
    super.key,
    required this.textTheme,
    required this.content,
    this.ringStyle,
  });

  final TextTheme textTheme;
  final Widget content;
  final String? ringStyle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (ringStyle == 'Charging')
          Column(
            children: [
              SizedBox(height: 20.h),
              AiVoiceRecordingWidgets(),
            ],
          ),
        if (ringStyle != 'Charging')
          SvgPicture.asset(
            ringStyle ?? 'assets/images/home_flow/not_charging_circle.svg',
            height: 270.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        if (ringStyle != 'Charging') content,
      ],
    );
  }
}
