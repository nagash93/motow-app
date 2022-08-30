import 'package:flutter/material.dart';
import 'package:motow_app/app/app_constants.dart';
import 'package:motow_app/constants/styles/color_app.dart';
import 'package:motow_app/routing/route_paths.dart';
import 'package:motow_app/routing/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.title,
      theme: ThemeData(
        fontFamily: AppConstants.fontFamily,
        scaffoldBackgroundColor: ColorApp.white,
        primaryColor: ColorApp.grey,
      ),
      initialRoute: RoutePaths.splashScreen,
      routes: Routes.routerList,
    );
  }
}