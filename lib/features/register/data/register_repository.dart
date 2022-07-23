import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/register/data/register_repository_abstract.dart';
import 'package:motow_app/features/register/data/register_service.dart';

class RegisterRepository extends IRegisterRepository {
  final RegisterService _service;

  RegisterRepository({required service}) : _service = service;

  @override
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

final registerRepository = Provider<IRegisterRepository>((ref) {
  return RegisterRepository(service: RegisterService());
});
