import 'package:dailyx/domain/use_cases/login/login_with_email_and_password_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState>{
  final LoginWithEmailAndPasswordUseCase _loginWithEmailAndPasswordUseCase;

  LoginCubit(this._loginWithEmailAndPasswordUseCase) : super(const LoginState.loading());

  Future<void> loginWithEmailAndPassword() async {
    bool isLogged = await _loginWithEmailAndPasswordUseCase.execute("email", "password");
    print(isLogged);
  }
}