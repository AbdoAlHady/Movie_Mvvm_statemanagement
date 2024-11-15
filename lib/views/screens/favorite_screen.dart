import 'package:flutter/material.dart';
import 'package:movie_mvvm_state_management/core/utils/app_strings.dart';
import 'package:movie_mvvm_state_management/core/widgets/custom_app_bar.dart';
import 'package:movie_mvvm_state_management/views/widgets/favorite/favorite_screen_body.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const FavoriteScreenBody(),
    );
  }

  CustomAppBar _buildAppBar() {
    return CustomAppBar(
      title: AppStrings.favoriteMovies,
      showBackArrow: true,
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () {},
        ),
      ],
    );
  }
}
