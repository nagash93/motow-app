import 'package:flutter/material.dart';
import 'package:motow_app/constants/color_app.dart';
import 'package:motow_app/routing/route_paths.dart';
import 'package:motow_app/routing/routes.dart' ;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motow',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorApp.white,
        primaryColor: ColorApp.grey,
      ),
      initialRoute: RoutePaths.splashScreen,
      routes: Routes.routerList,
    );
  }
}

