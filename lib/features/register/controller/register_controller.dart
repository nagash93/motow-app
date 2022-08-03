import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/features/register/data/register_repository.dart';
import 'package:motow_app/features/register/data/register_repository_abstract.dart';
import 'package:motow_app/features/register/data/register_service.dart';

class RegisterController extends StateNotifier<AsyncValue<void>> {
  final IRegisterRepository _repository;

  RegisterController({required repository})
      : _repository = repository,
        super(const AsyncData(null));

  final bonusList = [
    'Guardar tus anuncios favoritos ',
    'Calificar anuncios',
    'Comentar anuncios',
    'Reportar anuncios',
    'Recibir novedades y \nnuevas funciones de la app '
  ];

  Future<bool> signInWithGoogle() {
    return _repository.signInWithGoogle();
  }

  void signInWithApple() {
    _repository.signInWithGoogle();
  }
}

final registerController =
    StateNotifierProvider<RegisterController, AsyncValue<void>>((ref) {
  return RegisterController(repository: ref.watch(registerRepository));
});
