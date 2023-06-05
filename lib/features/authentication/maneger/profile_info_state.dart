part of 'profile_info_cubit.dart';

@immutable
abstract class ProfileInfoState {}

class ProfileInfoInitialState extends ProfileInfoState {}

class ProfileSuccessState extends ProfileInfoState {}

class ProfileErrorState extends ProfileInfoState {}

class ProfileLoadingState extends ProfileInfoState {}
