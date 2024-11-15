import 'package:flutter/material.dart';
import 'package:movie_mvvm_state_management/core/routing/routes.dart';
import 'package:movie_mvvm_state_management/core/routing/slide_page_route_animation.dart';
import 'package:movie_mvvm_state_management/views/screens/favorite_screen.dart';
import 'package:movie_mvvm_state_management/views/screens/home_screen.dart';
import 'package:movie_mvvm_state_management/views/screens/movie_details_screen.dart';
import 'package:movie_mvvm_state_management/views/screens/splash_screen.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return SlidePageRouteAnimation(page: const HomeScreen());
      case Routes.splash:
        return SlidePageRouteAnimation(page: const SplashScreen());
      case Routes.movieDetails:
        return SlidePageRouteAnimation(page: const MovieDetailsScreen());
      case Routes.favorite:
        return SlidePageRouteAnimation(page: const FavoriteScreen());

      default:
        return null;
    }
  }
}
