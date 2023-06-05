part of 'cam_cubit.dart';

@immutable
abstract class CamState {}

class CamInitialState extends CamState {}
class CamSucessState extends CamState {}
class CamErrorState extends CamState {}
class CamLoadingState extends CamState {}
