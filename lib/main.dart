import 'package:flutter/material.dart';
import 'package:movie_mvvm_state_management/core/theme/app_theme.dart';
import 'package:movie_mvvm_state_management/views/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
