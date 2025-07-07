class SavedStateModel {
  final String img;
  final String title;
  final String subtitle;
  SavedStateModel({
    required this.img,
    required this.title,
    required this.subtitle,
  });

  SavedStateModel copyWith({
    required String? img,
    required String? title,
    required String? subtitle,
  }) {
    return SavedStateModel(
      img: img ?? this.img,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
    );
  }
}
