part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState{
  const factory LoginState.created() = _Created;
  const factory LoginState.failed(String message) = _Failed;
  const factory LoginState.success() = _Success;
}