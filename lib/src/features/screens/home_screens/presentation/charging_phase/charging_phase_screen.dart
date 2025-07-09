import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mevetec_app/src/core/constant/icons.dart';

import '../../riverpod/charging_phase_provider.dart';
import '../../widget/charging_circle_indicator.dart';
import '../../widget/charging_details.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';
import 'package:mevetec_app/src/core/constant/images.dart';

class ChargingPhaseScreen extends ConsumerWidget {
  const ChargingPhaseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextTheme textTheme = Theme.of(context).textTheme;

    final currentPhase = ref.watch(chargingPhaseProvider);
    Color buttonColor = AppColorScheme.secondary;
    String buttonText = 'Start Charging';
    String ringStyle = 'assets/images/home_flow/not_charging_circle.svg';

    String phaseText = '';
    String iconPath = '';
    switch (currentPhase) {
      case ChargingPhase.ready:
        phaseText = 'Ready';
        iconPath = AppIcons
            .readyCharging; // You can replace with your icon for "Ready"
        buttonColor = AppColorScheme.secondary;
        buttonText = 'Start Charging';
        ringStyle = 'assets/images/home_flow/not_charging_circle.svg';
        break;
      case ChargingPhase.charging:
        phaseText = 'Charging';
        buttonColor = AppColorScheme.error;
        buttonText = 'Stop Charging';
        iconPath =
            AppIcons.chargingIcon; // Replace with your charging icon path
        ringStyle = 'Charging';
        break;
      case ChargingPhase.complete:
        phaseText = 'Complete';
        buttonText = 'Find New Location';
        ringStyle = 'assets/images/home_flow/charge_complete.svg';
        buttonColor = AppColorScheme.primary;
        iconPath =
            AppIcons.completeCharging; // Replace with your complete icon path
        break;
    }

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
              ChargingCircleIndicator(
                ringStyle: ringStyle,
                textTheme: textTheme,
                content: Positioned(
                  bottom: 110.h,
                  child: Column(
                    children: [
                      Text(
                        '3.24',
                        style: textTheme.headlineLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text('kWh', style: textTheme.bodyMedium),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(iconPath),
                  SizedBox(width: 5.w,),
                  Text(phaseText, style: textTheme.bodyLarge),
                ],
              ),
              SizedBox(height: 10.h),
              Text('7kW'),
              SizedBox(height: 24.h),
              ChargingDetails(textTheme: textTheme),
              SizedBox(height: 32.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                  ),
                  onPressed: () {
                    if (currentPhase == ChargingPhase.ready) {
                      ref
                          .read(chargingPhaseProvider.notifier)
                          .setChargingPhase(ChargingPhase.charging);
                    } else if (currentPhase == ChargingPhase.charging) {
                      ref
                          .read(chargingPhaseProvider.notifier)
                          .setChargingPhase(ChargingPhase.complete);
                    }
                  },
                  child: Text(
                    buttonText
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
