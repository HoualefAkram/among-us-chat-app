import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthUninitializedState()) {
    on<AuthInitializeEvent>((event, emit) {});
    on<AuthLoginEvent>((event, emit) {});
    on<AuthLogoutEvent>((event, emit) {});
  }
}
