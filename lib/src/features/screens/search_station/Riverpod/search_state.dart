class SearchState {
  final String query;
  final List<String> filteredQuery;

  SearchState({required this.query, required this.filteredQuery});

  SearchState copyWith({
    required String? query,
    required List<String>? filteredQuery,
  }) {
    return SearchState(
      query: query ?? this.query,
      filteredQuery: filteredQuery ?? this.filteredQuery,
    );
  }
}
