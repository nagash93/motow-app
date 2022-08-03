import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/onboarding/data/onboarding_repository_abstract.dart';

import '../data/onboarding_repository.dart';

class OnboardingController extends StateNotifier<bool> {
  final IOnboardingRepository _repository;
  OnboardingController({required repository}) :_repository = repository, super(false);


  Future<bool> getCheckOnboarding(){
    return _repository.getCheckOnboarding();
  }
  void setCheckOnboarding(){
  _repository.setCheckOnboarding();
  }
}
final onboardingController =
StateNotifierProvider<OnboardingController, bool>((ref) {
  return OnboardingController(repository:ref.watch(onboardingRepository));
});

