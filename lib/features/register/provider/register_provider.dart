import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/register/data/register_repository.dart';


class RegisterController extends StateNotifier<AsyncValue<void>>{


  RegisterController(): super(const AsyncData(null));

  getUser(){
    RegisterRepository().signInWithGoogle();
  }
}

final myController = StateNotifierProvider<RegisterController,AsyncValue<void>>((ref) => RegisterController());