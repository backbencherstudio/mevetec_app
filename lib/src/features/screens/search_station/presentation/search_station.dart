import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mevetec_app/src/core/constant/padding.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';
import 'package:mevetec_app/src/features/screens/search_station/Riverpod/search_provider.dart';
import 'package:mevetec_app/src/features/screens/search_station/presentation/widgets/custom_list_tile.dart';

import '../../../../core/constant/icons.dart';
import '../../../../core/routes/route_name.dart';

class SearchStation extends ConsumerStatefulWidget {
  const SearchStation({super.key});

  @override
  ConsumerState<SearchStation> createState() => _SearchStationState();
}

class _SearchStationState extends ConsumerState<SearchStation> {
  late final FocusNode _focusNode;
  late final TextEditingController _searchController;

  @override
  void initState() {
    _focusNode = FocusNode();
    _searchController = TextEditingController();
    super.initState();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        ref.read(searchProvider.notifier).clearSearch();
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final searchResult = ref.watch(searchProvider);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Padding(
                padding: AppPadding.horizontalPadding,
                child: Column(
                  children: [
                    TextFormField(
                      focusNode: _focusNode,
                      onTapOutside: (_) {
                        if (_searchController.text.isEmpty) {
                          _focusNode.unfocus();
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: AppColorScheme.shadowColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: AppColorScheme.borderColor.withValues(
                              alpha: 0.5,
                            ),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: AppColorScheme.borderColor,
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        ref
                            .read(searchProvider.notifier)
                            .searchQuery(query: value);
                      },
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: searchResult.filteredQuery.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              CustomListTile(
                                icon: index % 2 == 0
                                    ? AppIcons.locationRed
                                    : AppIcons.locationGreen,
                                title: searchResult.filteredQuery[index],
                              ),
                              Divider(
                                color: AppColorScheme.onSurface,
                                thickness: 0.5,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 30.h),
                  ],
                ),
              ),
            ),

            Positioned(
              left: 0,
             // right: 0,
              bottom: 100.h,
              child: GestureDetector(
                onTap: () {
                  context.push(RouteName.allStationList);
                },
                child: Container(
                  margin: AppPadding.horizontalPadding,
                  padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 19.h),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.16)
                      )
                    ],
                    borderRadius: BorderRadius.circular(999),
                    color: AppColorScheme.surface
                  ),
                  child: Text(
                    'View all station list',
                    style: textTheme.bodyLarge!.copyWith(
                      color: AppColorScheme.primary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
