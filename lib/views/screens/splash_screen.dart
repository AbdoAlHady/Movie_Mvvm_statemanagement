import 'package:flutter/material.dart';
import 'package:movie_mvvm_state_management/core/widgets/custom_error_wiget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomErrorWidget(errorText: "Error Text", retryFuction: () {}),
    );
  }
}
