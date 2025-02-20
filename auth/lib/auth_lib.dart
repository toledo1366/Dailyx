import 'package:auth/domain/auth_service.dart';
import 'package:get_it/get_it.dart';

class AuthLib {
  static late GetIt authSl;

  Future<void> init(GetIt sl) async {
    authSl = sl;

    sl.registerLazySingleton<AuthService>(() => AuthService());
  }
}