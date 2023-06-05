part of 'password_cubit.dart';

@immutable
abstract class PasswordState {}

class ForgetPasswordInitialState extends PasswordState {}

class ForgetPasswordLoadingState extends PasswordState {}

class ForgetPasswordSuccessState extends PasswordState {}

class ForgetPasswordErrorState extends PasswordState {}


class ChangePasswordInitialState extends PasswordState {}

class ChangePasswordSuccessState extends PasswordState {}

class ChangePasswordLoadingState extends PasswordState {}

class ChangePasswordErrorState extends PasswordState {}



class OtpPasswordInitialState extends PasswordState {}

class OtpPasswordSuccessState extends PasswordState {}

class OtpPasswordLoadingState extends PasswordState {}

class OtpPasswordErrorState extends PasswordState {}
