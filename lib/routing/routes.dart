import 'package:flutter/material.dart';
import 'package:motow_app/features/addscreen/add_view.dart';
import 'package:motow_app/features/favorites/favorites_view.dart';
import 'package:motow_app/features/main/screen/main_view.dart';
import 'package:motow_app/features/onboarding/screens/onboarding_view.dart';
import 'package:motow_app/features/register/register_view.dart';
import 'package:motow_app/features/search/search_view.dart';
import 'package:motow_app/features/splashscreen/screen/splashscreen_view.dart';
import 'package:motow_app/routing/route_paths.dart';

class Routes{
  static var  routerList = <String, WidgetBuilder>{
    RoutePaths.splashScreen: (context) =>  SplashScreenView(),
    RoutePaths.onboarding: (context) => OnboardingView(),
    RoutePaths.main: (context) =>  MainView(),
    RoutePaths.favorites: (context) => const FavoritesView(),
    RoutePaths.search: (context) =>  SearchView(),
    RoutePaths.addScreen: (context) => const AddView(),
    RoutePaths.register: (context) =>  RegisterView(),
  };
}