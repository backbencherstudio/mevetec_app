class ProfileListModel {
  final String name;
  final String imgIcon;
  final String routName;

  ProfileListModel({
    required this.name,
    required this.imgIcon,
    required this.routName,
  });

  ProfileListModel copyWith({
    required String? name,
    required String? imgIcon,
    required String? routName,
  }) {
    return ProfileListModel(
      name: name ?? this.name,
      imgIcon: imgIcon ?? this.imgIcon,
      routName: routName ?? this.routName,
    );
  }
}
