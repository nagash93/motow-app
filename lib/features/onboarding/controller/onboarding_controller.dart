import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/onboarding/data/onboarding_local_repository.dart';
import 'package:motow_app/features/onboarding/data/onboarding_repository.dart';

class OnBoardingController extends StateNotifier<AsyncValue<bool>> {
  final OnBoardingRepository _repository;

  OnBoardingController({
    required repository,
  })  : _repository = repository,
        super(const AsyncData(false));

  void validateOnBoarding() {
    _getCheckOnBoarding();
  }

  void validateIndexPage(int indexPage) {
    if (indexPage == 3) {
      Future.delayed(const Duration(milliseconds: 800)).then((value) {
        _setCheckOnBoarding();
      });
    }
  }

  Future<void> _getCheckOnBoarding() async {
    state = await AsyncValue.guard(_repository.getCheckOnBoarding);
  }

  Future<void> _setCheckOnBoarding() async {
    state = const AsyncValue.loading();
    await _repository.setCheckOnBoarding();
    await _getCheckOnBoarding();
  }
}

final onBoardingController = StateNotifierProvider<OnBoardingController, AsyncValue<bool>>((ref) {
  OnBoardingController controller = OnBoardingController(repository: ref.watch(onBoardingRepository));
  controller.validateOnBoarding();

  return controller;
});
