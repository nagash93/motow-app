import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/app/general_providers.dart';
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

final onBoardingRepository = Provider<OnBoardingRepository>((ref) {
  return OnBoardingLocalRepository(
    prefs: ref.watch(sharedPreferencesProvider),
  );
});
