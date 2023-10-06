import 'package:motow_app/features/onboarding/data/onboarding_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingLocalRepository implements OnBoardingRepository {
  static const keyCheckOnBoarding = 'checkOnBoarding';
  final SharedPreferences prefs;

  OnBoardingLocalRepository({required this.prefs});

  @override
  Future<bool> getCheckOnBoarding() async {
    return prefs.getBool(keyCheckOnBoarding) ?? false;
  }

  @override
  Future<void> setCheckOnBoarding() async {
    await prefs.setBool(keyCheckOnBoarding, true);
  }
}
