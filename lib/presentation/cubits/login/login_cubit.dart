import 'package:dailyx/helpers/constants/strings/error_messages.dart';
import 'package:dailyx/presentation/cubits/cubit_base.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends CubitBase<LoginState>{
  LoginCubit() : super(const LoginState.created());

  Future<void> runLoginFlow() async {
    final isAuthorized = await startAuth();

    if(isAuthorized){
      emit(const LoginState.success());
    }

    emit(const LoginState.failed(failedLogin));
  }

  Future<bool> startAuth() async {
    FirebaseApp defaultApp = await Firebase.initializeApp();
    GoogleSignIn _googleSignIn = GoogleSignIn();
    FirebaseAuth _auth = FirebaseAuth.instanceFor(app: defaultApp);   
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return credential.accessToken != null;
  }
}