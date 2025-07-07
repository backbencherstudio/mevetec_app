import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mevetec_app/src/features/screens/profile/charging_activity/presentation/widgets/custom_bill_container.dart';
import '../../../../../core/constant/padding.dart';
import '../../../../common_widegts/commonWidget.dart';

class ChargingActivityScreen extends StatelessWidget {
  const ChargingActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          CommonWidget.appBar(title: "Charging Activity"),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: AppPadding.horizontalPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomBillContainer(),
                        CustomBillContainer(),
                        CustomBillContainer(),
                        SizedBox(height: 50.h,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
