import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mevetec_app/src/core/constant/icons.dart';
import 'package:mevetec_app/src/core/routes/route_name.dart';
import 'package:mevetec_app/src/features/screens/profile/payment_methods/Riverpod/payment_list_provider.dart';
import 'package:mevetec_app/src/features/screens/profile/payment_methods/presentation/widgets/add_new_payment_tile.dart';
import 'package:mevetec_app/src/features/screens/profile/payment_methods/presentation/widgets/custom_payment_tile.dart';
import '../../../../../core/constant/padding.dart';
import '../../../../common_widegts/commonWidget.dart';

class PaymentMthdScreen extends StatelessWidget {
  const PaymentMthdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          CommonWidget.appBar(title: "Payment Methods", img: AppIcons.scanner, onTap: () {
            
          }, ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: AppPadding.horizontalPadding,
                    child: Consumer(
                      builder: (context, ref, _) {
                        final data = ref.watch(paymentlistProvider);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: data.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(top: 24.h),
                                  child: CustomPaymentTile(
                                    img: data[index].img,
                                    title: data[index].title,
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: 24.h),

                            AddNewPaymentTile(onTap: () {
                              context.push(RouteName.addNewPaymentMethodScreen
                              );
                            }),
                            SizedBox(height: 50.h),
                          ],
                        );
                      },
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
