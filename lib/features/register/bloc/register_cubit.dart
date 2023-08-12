import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:motow_app/features/register/data/register_repository.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  final _repository = RegisterRepository();

  void registerGoogle() async{
    emit(RegisterLoading());
    final result = await _repository.signInWithGoogle();
    emit(RegisterSuccess());
  }

  void registerApple() async{
    emit(RegisterLoading());
    final result = await _repository.signInWithApple();
    emit(RegisterSuccess());
  }
}
