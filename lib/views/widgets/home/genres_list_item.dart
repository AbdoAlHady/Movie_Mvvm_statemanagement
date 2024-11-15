import 'package:flutter/material.dart';
import 'package:movie_mvvm_state_management/core/utils/app_constants.dart';
import 'package:movie_mvvm_state_management/views/widgets/home/genres_item.dart';

class GenresListItem extends StatelessWidget {
  const GenresListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(AppConstants.genres.length, (index) {
        return GenresItem(label: AppConstants.genres[index]);
      }),
    );
  }
}
