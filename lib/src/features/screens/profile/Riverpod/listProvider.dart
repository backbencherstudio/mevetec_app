import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mevetec_app/src/core/constant/icons.dart';
import 'package:mevetec_app/src/features/screens/profile/presentation/models/profile_list_model.dart';

final listProvider = StateNotifierProvider<ListNotifier, List<ProfileListModel>>(
  (ref){
    return ListNotifier();
  }
);

class ListNotifier extends StateNotifier<List<ProfileListModel>>{
  ListNotifier():super([
    ProfileListModel(name: "Personal Info", imgIcon: AppIcons.profileIcon, routName: ""),
    ProfileListModel(name: "Charging Activity", imgIcon: AppIcons.statsIcon, routName: ""),
    ProfileListModel(name: "Payment Methods", imgIcon: AppIcons.paymentIcon, routName: ""),
    ProfileListModel(name: "Saved Places", imgIcon: AppIcons.locationIcon, routName: ""),
    ProfileListModel(name: "Privacy Policy", imgIcon: AppIcons.privacyIcon, routName: ""),
  ]);
}