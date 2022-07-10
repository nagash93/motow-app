import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:motow_app/features/onboarding/screens/Components/onboarding_indicator.dart';
import 'package:motow_app/routing/route_paths.dart';

import 'Components/onboarding_item.dart';

class OnboardingView extends HookWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final selectedIndex = useState(0);
    return Scaffold(
      body: Stack(
        alignment: const Alignment(0, 1),
        children: [
          PageView(
            controller: pageController,
            children: const [
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
            ],
            onPageChanged: (indexPage) {
              selectedIndex.value = indexPage;
                if (indexPage == 3) {
                  Future.delayed(const Duration(milliseconds:1200 )).then(
                      (value) => Navigator.pushNamed(context, RoutePaths.main));
                }
            },
          ),
          OnboardingIndicator(selectedIndex: selectedIndex.value)
        ],
      ),
    );
  }
}
