class PaymentModel {
  final String img;
  final String title;
  PaymentModel({required this.img, required this.title});

  PaymentModel copyWith({required String? img, required String? title}) {
    return PaymentModel(img: img ?? this.img, title: title ?? this.title);
  }
}
