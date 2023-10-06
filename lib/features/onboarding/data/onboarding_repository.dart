import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingRepository {


  static const keyCheckOnboarding = 'checkOnboarding';

  Future<bool> getCheckOnBoarding() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(keyCheckOnboarding)??false;
  }

  Future<void> setCheckOnBoarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(keyCheckOnboarding, true);
  }

}

