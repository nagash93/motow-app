import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/onboarding/controller/onboarding_controller.dart';
import 'package:motow_app/features/onboarding/screens/Components/onboarding_indicator.dart';
import 'package:motow_app/features/onboarding/screens/onboarding_view_constants.dart';
import 'package:motow_app/routing/route_paths.dart';

class OnBoardingView extends HookConsumerWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    final selectedIndex = useState(0);

    final controller = ref.read(onBoardingController.notifier);
    ref.listen<AsyncValue>(onBoardingController, (data, state) {
      if (state.value == true) {
        Navigator.pushReplacementNamed(context, RoutePaths.main);
      }
    });

    return Scaffold(
      body: Stack(
        alignment: const Alignment(0, 1),
        children: [
          PageView(
            controller: pageController,
            children: OnBoardingViewConstants.listPage,
            onPageChanged: (indexPage) {
              selectedIndex.value = indexPage;
              controller.validateIndexPage(indexPage);
            },
          ),
          OnboardingIndicator(
            selectedIndex: selectedIndex.value,
            length: OnBoardingViewConstants.listPage.length,
          ),
        ],
      ),
    );
  }
}
