import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mevetec_app/src/features/screens/profile/saved_places/Riverpod/saved_provider.dart';
import 'package:mevetec_app/src/features/screens/profile/saved_places/presentation/widgets/custom_info_tile.dart';
import '../../../../../core/constant/padding.dart';
import '../../../../common_widegts/commonWidget.dart';

class SavedPlaceScreen extends StatelessWidget {
  const SavedPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          CommonWidget.appBar(title: "Saved Places"),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: AppPadding.horizontalPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Consumer(
                          builder: (context, ref,_) {
                  final data = ref.watch(savedlistProvider);

                            return SizedBox(
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: data.length,
                                itemBuilder: (context, index) {
                                  return CustomInfoTile(
                                    icon: data[index].img,
                                    title:data[index].title,
                                    subtitile: data[index].subtitle,
                                  );
                                },
                              ),
                            );
                          }
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
