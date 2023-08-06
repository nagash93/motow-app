import 'package:motow_app/features/register/data/register_repository_abstract.dart';

class RegisterController {
  late final IRegisterRepository _repository;

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

