import 'package:flutter/material.dart';
import 'package:motow_app/features/main/screen/main_view.dart';
import 'package:motow_app/features/onboarding/screens/onboarding_view.dart';
import 'package:motow_app/features/splashscreen/screen/splashscreen_view.dart';
import 'package:motow_app/routing/route_paths.dart';

class Routes{
  static var  routerList = <String, WidgetBuilder>{
    RoutePaths.splashScreen: (context) => const SplashScreenView(),
    RoutePaths.onboarding: (context) => const OnboardingView(),
    RoutePaths.main: (context) => const MainView()
  };
}