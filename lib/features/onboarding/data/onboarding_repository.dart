import 'package:motow_app/features/onboarding/data/onboarding_repository_abstract.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingRepository extends IOnboardingRepository{


  static const keyCheckOnboarding = 'checkOnboarding';

  @override
  Future<bool> getCheckOnboarding() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(keyCheckOnboarding)??false;
  }

  @override
  Future<void> setCheckOnboarding() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(keyCheckOnboarding, true);
  }

}

