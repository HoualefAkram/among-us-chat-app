part of 'auth_bloc.dart';

sealed class AuthEvent {}

class AuthInitializeEvent extends AuthEvent {}

class AuthLoginEvent extends AuthEvent {}

class AuthLogoutEvent extends AuthEvent {}
