import 'package:flutter/material.dart';
import 'package:movie_mvvm_state_management/core/network/api_service.dart';
import 'package:movie_mvvm_state_management/core/routing/routes.dart';
import 'package:movie_mvvm_state_management/core/service/setup_getit.dart';
import 'package:movie_mvvm_state_management/core/utils/app_icons.dart';
import 'package:movie_mvvm_state_management/core/utils/app_strings.dart';
import 'package:movie_mvvm_state_management/core/widgets/custom_app_bar.dart';

import '../widgets/home/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: const HomeScreenBody(),
    );
  }

  CustomAppBar _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppStrings.popularMovies,
      actions: [
        IconButton(
          icon: const Icon(
            AppIcons.favoriteRounded,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, Routes.favorite);
          },
        ),
        IconButton(
          icon: const Icon(
            AppIcons.darkMode,
          ),
          onPressed: () async {},
        ),
      ],
    );
  }
}
