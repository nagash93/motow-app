
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:motow_app/app/my_app.dart';
import 'package:motow_app/features/main/screens/main_view.dart';
import 'package:motow_app/features/onboarding/screens/onboarding_view.dart';
import 'package:motow_app/features/onboarding/screens/splashscreen_view.dart';
import 'package:motow_app/features/register/screens/register_view.dart';
import 'package:motow_app/routing/route_paths.dart';

mixin RouterMixin on State<MyApp> {
  final GlobalKey<NavigatorState> _rootNavigatorKey =
  GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _shellNavigatorKey =
  GlobalKey<NavigatorState>();
  GoRouter? _router;
  GoRouter get router {
    _router ??= GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: RoutePaths.splashScreen,
      routes: [
        GoRoute(
          name: RouteName.splashScreen,
          path: RoutePaths.splashScreen,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            name: state.name,
            key: state.pageKey,
            child: const SplashScreenView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                FadeTransition(opacity: animation, child: child),
          ),
        ),
        GoRoute(
          name: RouteName.onboarding,
          path: RoutePaths.onboarding,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            name: state.name,
            key: state.pageKey,
            child: const OnboardingView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                FadeTransition(opacity: animation, child: child),
          ),
        ),
        GoRoute(
          name: RouteName.main,
          path: RoutePaths.main,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            name: state.name,
            key: state.pageKey,
            child: const MainView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                FadeTransition(opacity: animation, child: child),
          ),
        ),
        GoRoute(
          name: RouteName.register,
          path: RoutePaths.register,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            name: state.name,
            key: state.pageKey,
            child: const RegisterView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                FadeTransition(opacity: animation, child: child),
          ),
        ),

      ],
    );
    return _router!;
  }
}