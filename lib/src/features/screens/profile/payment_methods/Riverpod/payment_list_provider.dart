import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mevetec_app/src/core/constant/images.dart';
import 'package:mevetec_app/src/features/screens/profile/payment_methods/Riverpod/state_model.dart';

final paymentlistProvider =
    StateNotifierProvider<PaymentNotifier, List<PaymentModel>>(
      (ref) => PaymentNotifier(),
    );

class PaymentNotifier extends StateNotifier<List<PaymentModel>> {
  PaymentNotifier()
    : super([
        PaymentModel(img: AppImages.paypalIcon, title: "PayPal"),
        PaymentModel(img: AppImages.googleIcon, title: "Google Pay"),
        PaymentModel(img: AppImages.appleIcon, title: "Apple Pay"),
        PaymentModel(img: AppImages.visaIcon, title: "•••• •••• 5567"),
      ]);
}
