import 'package:flutter/material.dart';
import 'package:motow_app/features/register/data/register_service.dart';

class RegisterRepository  {
  RegisterService _service = RegisterService();

  Future<bool> signInWithGoogle() async {
    try {
      final userGoogle = await _service.signInWithGoogle();

      _service.registerUser(userGoogle);

      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
