import 'package:auth/auth_exports.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginWithEmailAndPasswordUseCase {
  final AuthService _authService;

  LoginWithEmailAndPasswordUseCase(this._authService);

  Future<bool> execute(String email, String password) async {
    // UserCredential? user = await _authService.logInWithEmailAndPassword(email, password);
    UserCredential? user = await _authService.logInWithGoogleProvider();

    if(user!.credential!.accessToken!.isNotEmpty){
      return true;
    }

    return false;
  }
}