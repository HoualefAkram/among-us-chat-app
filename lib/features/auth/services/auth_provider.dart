import 'package:amonguschat/features/auth/models/user.dart';
import 'package:amonguschat/features/auth/services/auth_service.dart';

class AuthProvider extends AuthService {
  @override
  void initialize() {
    throw UnimplementedError();
  }

  @override
  Future<User> login({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  void logout() {
    throw UnimplementedError();
  }
}
