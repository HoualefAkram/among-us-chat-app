part of 'auth_bloc.dart';

sealed class AuthState {}

final class AuthUninitializedState extends AuthState {}

final class AuthLoggedInState extends AuthState {}

final class AuthLoggedOutState extends AuthState {}
