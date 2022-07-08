import 'package:flutter/widgets.dart';
import 'package:motow_app/generated/assets.dart';
import 'package:motow_app/routing/route_paths.dart';
import 'package:rive/rive.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  late RiveAnimationController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('Animation 1',autoplay: true);
    _controller.isActiveChanged.addListener(() {
      if(!_controller.isActive) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushNamed(context, RoutePaths.onboarding);
        });

      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(80.0),
      child: Center(
        child: RiveAnimation.asset(Assets.animationsSplanscreen,
          controllers: [_controller],

        ),
      ),
    );
  }
}
