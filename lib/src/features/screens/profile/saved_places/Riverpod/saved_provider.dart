import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mevetec_app/src/core/constant/icons.dart';
import 'package:mevetec_app/src/features/screens/profile/saved_places/Riverpod/saved_state_model.dart';

final savedlistProvider =
    StateNotifierProvider<SavedListtNotifier, List<SavedStateModel>>(
      (ref) => SavedListtNotifier(),
    );

class SavedListtNotifier extends StateNotifier<List<SavedStateModel>> {
  SavedListtNotifier()
    : super([
       SavedStateModel(img: AppIcons.locationIcon, title: 'ImPark 302 2nd St', subtitle: 'Brooklyn, 302 2nd St'),
        SavedStateModel(img: AppIcons.homeIcon, title: 'Home', subtitle: 'Brooklyn, 302 2nd St'),
         SavedStateModel(img: AppIcons.officeIcon, title: 'Work', subtitle: 'Brooklyn, 302 2nd St'),
      ]);
}
