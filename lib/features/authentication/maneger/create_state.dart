part of 'create_cubit.dart';

@immutable
abstract class CreateState {}

class CreateInitialstate extends CreateState {}
class CreateLoadingstate extends CreateState {}
class CreateSuccessstate extends CreateState {}
class CreateErrorstate extends CreateState {}
