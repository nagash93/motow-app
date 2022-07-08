import 'package:flutter/material.dart';
import 'package:motow_app/features/onboarding/screens/onboarding_view.dart';
import 'package:motow_app/features/splashscreen/screen/splashscreen_view.dart';
import 'package:motow_app/routing/route_phats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutePhats.splashScreen,
      routes: {
        '/': (context)=>const SplashScreenView(),
        '/onboarding': (context)=>const OnboardingView()
      },
    );
  }
}

