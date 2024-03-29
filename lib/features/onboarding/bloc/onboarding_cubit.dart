import 'package:flutter_bloc/flutter_bloc.dart';


import '../data/onboarding_repository.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
  final _onboardingRepository = OnBoardingRepository();
  void getOnboarding() async{
    emit(OnboardingLogin());
    final result = await _onboardingRepository.getCheckOnBoarding();
    emit(OnboardingSuccess(checkOnboarding: result));
  }
  void setOnboarding() async{
    await _onboardingRepository.setCheckOnBoarding();
  }

}
