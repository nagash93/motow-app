import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:motow_app/generated/assets.dart';
import 'package:motow_app/routing/route_paths.dart';
import 'package:rive/rive.dart';

class SplashScreenView extends HookWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = SimpleAnimation('Animation 1', autoplay: true);
    useEffect((){
      controller.isActiveChanged.addListener(() {
        if (!controller.isActive) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacementNamed(context, RoutePaths.main);
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
}
