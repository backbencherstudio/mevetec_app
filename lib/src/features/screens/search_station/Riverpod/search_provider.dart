import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mevetec_app/src/features/screens/search_station/Riverpod/search_state.dart';

final searchProvider = StateNotifierProvider<SearchNotifier, SearchState>((
  ref,
) {
  return SearchNotifier();
});

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier() : super(SearchState(query: "", filteredQuery: []));
  final List<String> allStations = [
    "ImPark Underhill Garage",
    "99 Prospect Park W",
    "Walgreens - Brooklyn, NY",
    "Rapidpark 906 Union St.",
    "ImPark 302 2nd St",
    "MTP Parking 755 Kent Ave",
  ];

  void searchQuery({required String query}) {
    state = SearchState(
      query: query,
      filteredQuery: allStations
          .where((v) => v.toLowerCase().contains(query.toLowerCase()))
          .toList(),
    );
  }
  void clearSearch(){
    state = SearchState(query: "", filteredQuery: []);
  }
}
