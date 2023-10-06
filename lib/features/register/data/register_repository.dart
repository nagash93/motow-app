import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:motow_app/features/register/data/register_repository_abstract.dart';
import 'package:motow_app/features/register/data/register_service.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class RegisterRepository extends IRegisterRepository {


 final _service = RegisterService();

  @override
  Future<bool> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? userGoogle = await _service.signInWithGoogle();

      _service.registerUserGoogle(userGoogle!);

      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  @override
  Future<bool> signInWithApple() async {
    try {
      final userApple = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      _service.registerUserApple(userApple);

      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
