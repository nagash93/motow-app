import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:motow_app/features/onboarding/screens/Components/onboarding_indicator.dart';
import 'package:motow_app/routing/route_paths.dart';

import 'Components/onboarding_item.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController? _pageController;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: const Alignment(0, 1),
        children: [
          PageView(
            controller: _pageController,
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
              setState(() {
                selectedIndex = indexPage;
                if (indexPage == 3) {
                  Future.delayed(const Duration(milliseconds:1500 )).then(
                      (value) => Navigator.pushNamed(context, RoutePaths.main));
                }
              });
            },
          ),
          OnboardingIndicator(selectedIndex: selectedIndex)
        ],
      ),
    );
  }
}
