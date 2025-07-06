import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mevetec_app/src/core/constant/icons.dart';
import 'package:mevetec_app/src/core/routes/route_name.dart';
import 'package:mevetec_app/src/features/screens/profile/models/profile_list_model.dart';

final listProvider = StateNotifierProvider<ListNotifier, List<ProfileListModel>>(
  (ref){
    return ListNotifier();
  }
);

class ListNotifier extends StateNotifier<List<ProfileListModel>>{
  ListNotifier():super([
    ProfileListModel(name: "Personal Info", imgIcon: AppIcons.profileIcon, routName: RouteName.profileInfoScreen),
    ProfileListModel(name: "Charging Activity", imgIcon: AppIcons.statsIcon, routName: ""),
    ProfileListModel(name: "Payment Methods", imgIcon: AppIcons.paymentIcon, routName: ""),
    ProfileListModel(name: "Saved Places", imgIcon: AppIcons.locationIcon, routName: ""),
    ProfileListModel(name: "Privacy Policy", imgIcon: AppIcons.privacyIcon, routName: ""),
  ]);
}