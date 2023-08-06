import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motow_app/constants/styles/color_app.dart';
import 'package:motow_app/features/onboarding/bloc/onboarding_cubit.dart';
import 'package:motow_app/routing/route_paths.dart';
import 'package:motow_app/routing/routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>  with RouterMixin {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => OnboardingCubit()),
        ],
        child: MaterialApp.router(
      title: 'Motow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'JosefinSans',
        scaffoldBackgroundColor: ColorApp.white,
        primaryColor: ColorApp.grey,
      ),
      routerConfig: router,
    ));
  }
}
