import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_mvvm_state_management/core/helpers/env_variables.dart';
import 'package:movie_mvvm_state_management/core/routing/app_router.dart';
import 'package:movie_mvvm_state_management/core/routing/routes.dart';
import 'package:movie_mvvm_state_management/core/service/setup_getit.dart';
import 'package:movie_mvvm_state_management/core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables().init();
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,

      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          navigatorKey: AppRouter.navigatorKey,
          onGenerateRoute: AppRouter().onGenerateRoute,
          initialRoute: Routes.home,
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
        );
      },
    );
  }
}
