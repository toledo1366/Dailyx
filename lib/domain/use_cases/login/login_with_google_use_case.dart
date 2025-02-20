import 'package:auth/auth_exports.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginWithGoogleUseCase {
  final AuthService _authService;

  LoginWithGoogleUseCase(this._authService);

  Future<bool> execute() async {
    UserCredential? user = await _authService.logInWithGoogleProvider();

    if(user!.credential!.accessToken!.isNotEmpty){
      return true;
    }

    return false;
  }
}