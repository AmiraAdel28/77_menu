part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitialstate extends LoginState {}
class LoginLodingstate extends LoginState {}
class LoginSuccessstate extends LoginState {}
class LoginErrorstate extends LoginState {}
