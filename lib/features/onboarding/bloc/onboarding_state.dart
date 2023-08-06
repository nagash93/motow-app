part of 'onboarding_cubit.dart';


abstract class OnboardingState {}

class OnboardingInitial extends OnboardingState {}
class OnboardingLogin extends OnboardingState {}
class OnboardingSuccess extends OnboardingState {
  bool checkOnboarding;
  OnboardingSuccess({required this.checkOnboarding});
}
