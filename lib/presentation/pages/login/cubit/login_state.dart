part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState{
  const factory LoginState.loading() = _Loading;
  const factory LoginState.askForLogIn() = _AskForLogIn;
  const factory LoginState.failed() = _Failed;
  const factory LoginState.loggedBackground() = _LoggedBackground;
}