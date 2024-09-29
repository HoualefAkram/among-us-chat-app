import 'package:amonguschat/features/auth/models/user.dart';

abstract class AuthService {
  void initialize();

  void logout();

  Future<User> login({
    required String email,
    required String password,
  });
}
