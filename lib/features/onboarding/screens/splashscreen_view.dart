import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:motow_app/features/onboarding/bloc/onboarding_cubit.dart';
import 'package:motow_app/generated/assets.dart';
import 'package:motow_app/routing/route_paths.dart';
import 'package:rive/rive.dart';

class SplashScreenView extends HookWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = SimpleAnimation('Animation 1', autoplay: true);
    useEffect(() {
      controller.isActiveChanged.addListener(() {
        if (!controller.isActive) {
          context.read<OnboardingCubit>().getOnboarding();
        }
      });
    });
    return BlocListener<OnboardingCubit, OnboardingState>(
      listener: (context, state) {
        if (state is OnboardingSuccess) {
          nextScreen(state.checkOnboarding, context);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Center(
          child: RiveAnimation.asset(
            Assets.animationsSplashscreen,
            controllers: [controller],
          ),
        ),
      ),
    );
  }

  nextScreen(bool isCheck, BuildContext context) {
    if (isCheck) {
      context.pushReplacementNamed(RouteName.main);
    } else {
      context.pushReplacementNamed(RouteName.onboarding);
    }
  }
}
