import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/onboarding/controller/onboarding_controller.dart';
import 'package:motow_app/generated/assets.dart';
import 'package:motow_app/routing/route_paths.dart';
import 'package:rive/rive.dart';

class SplashScreenView extends HookConsumerWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = SimpleAnimation('Animation 1', autoplay: true);

    ref.listen<AsyncValue>(onBoardingController, (data, state) {
      if (state.value == true) {
        Navigator.pushReplacementNamed(context, RoutePaths.main);
      } else {
        Navigator.pushReplacementNamed(context, RoutePaths.onboarding);
      }
    });

    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Center(
        child: RiveAnimation.asset(
          Assets.animationsSplashscreen,
          controllers: [controller],
        ),
      ),
    );
  }
}
