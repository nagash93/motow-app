import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/onboarding/data/onboarding_repository.dart';
import 'package:motow_app/features/onboarding/screens/Components/onboarding_indicator.dart';
import 'package:motow_app/routing/route_paths.dart';

import '../controller/onboarding_controller.dart';
import 'Components/onboarding_item.dart';

class OnboardingView extends HookConsumerWidget {
  const OnboardingView({Key? key}) : super(key: key);

  final listPage = const [
    OnboardingItem(
      secondaryText: 'Encuentra Gruas para moto',
    ),
    OnboardingItem(
      primaryText: 'Guarda, califica y comenta.',
    ),
    OnboardingItem(
      secondaryText: 'Ayuda a la comunidad agregando nuevo datos.',
    ),
    OnboardingItem(
      primaryText: 'Buenas rutas!',
      blackBackground: true,
    ),
  ];

  @override
  Widget build(BuildContext context,ref) {
    final pageController = usePageController();
    final selectedIndex = useState(0);
    return Scaffold(
      body: Stack(
        alignment: const Alignment(0, 1),
        children: [
          PageView(
            controller: pageController,
            children: listPage,
            onPageChanged: (indexPage) {
              selectedIndex.value = indexPage;
              if (indexPage == 3) {
                Future.delayed(const Duration(milliseconds: 1200)).then(
                    (value) {
                      ref.read(onboardingController.notifier).setCheckOnboarding();
                      Navigator.pushReplacementNamed(context, RoutePaths.main);
                    });
              }
            },
          ),
          OnboardingIndicator(
              selectedIndex: selectedIndex.value, length: listPage.length)
        ],
      ),
    );
  }
}
