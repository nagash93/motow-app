import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:motow_app/features/onboarding/bloc/onboarding_cubit.dart';
import 'package:motow_app/features/onboarding/screens/Components/onboarding_indicator.dart';
import 'package:motow_app/features/onboarding/screens/onboarding_view_constants.dart';
import 'package:motow_app/routing/route_paths.dart';

import 'components/onboarding_item.dart';

class OnboardingView extends HookWidget {
  OnboardingView({Key? key}) : super(key: key);

  final listPage = const [
    OnBoardingItem(
      secondaryText: 'Encuentra Gruas para moto',
    ),
    OnBoardingItem(
      primaryText: 'Guarda, califica y comenta.',
    ),
    OnBoardingItem(
      secondaryText: 'Ayuda a la comunidad agregando nuevo datos.',
    ),
    OnBoardingItem(
      primaryText: 'Buenas rutas!',
      blackBackground: true,
    ),
  ];

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
            children: OnBoardingViewConstants.listPage,
            onPageChanged: (indexPage) {
              selectedIndex.value = indexPage;
              if (indexPage == 3) {
                Future.delayed(const Duration(milliseconds: 1200))
                    .then((value) {
                  context.read<OnboardingCubit>().setOnboarding();
                  context.pushReplacementNamed(RouteName.main);
                });
              }
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
