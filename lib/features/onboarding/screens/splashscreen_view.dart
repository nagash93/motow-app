import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/onboarding/controller/onboarding_controller.dart';
import 'package:motow_app/features/onboarding/data/onboarding_repository.dart';
import 'package:motow_app/generated/assets.dart';
import 'package:motow_app/routing/route_paths.dart';
import 'package:rive/rive.dart';

class SplashScreenView extends HookConsumerWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,ref) {
    final controller = SimpleAnimation('Animation 1', autoplay: true);
    useEffect((){
      controller.isActiveChanged.addListener(() {
        if (!controller.isActive) {
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            nextScreen(await ref.read(onboardingRepository).getCheckOnboarding(), context);
          });
        }
      });
      return null;
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
  nextScreen(bool isCheck,BuildContext context){
    if(isCheck){
      Navigator.pushReplacementNamed(context, RoutePaths.main);
    }else{
      Navigator.pushReplacementNamed(context, RoutePaths.onboarding);
    }

  }
}
