abstract class IRegisterRepository {
  Future<bool> signInWithGoogle();
  Future<bool> signInWithApple();
}
