import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/register/data/register_repository_abstract.dart';
import 'package:motow_app/features/register/data/register_service.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class RegisterRepository extends IRegisterRepository {
  final RegisterService _service;

  RegisterRepository({required service}) : _service = service;

  @override
  Future<bool> signInWithGoogle() async {
    try {
      final userGoogle = await _service.signInWithGoogle();

      _service.registerUserGoogle(userGoogle);

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

final registerRepository = Provider<IRegisterRepository>((ref) {
  return RegisterRepository(service: RegisterService());
});
