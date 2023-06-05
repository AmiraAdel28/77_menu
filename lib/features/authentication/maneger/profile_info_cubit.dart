import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/features/authentication/data/data_provider/remote/dio_helper.dart';
import 'package:menu_app/features/authentication/data/profile_model.dart';
import 'package:meta/meta.dart';

part 'profile_info_state.dart';

class ProfileInfoCubit extends Cubit<ProfileInfoState> {
  ProfileInfoCubit() : super(ProfileInfoInitialState());
  ProfileInfoModel profileInfoModel = ProfileInfoModel();
  DioHelper dioHelper = DioHelper();

  static ProfileInfoCubit get(context) => BlocProvider.of(context);
UserInfo userInfo =UserInfo();

  Future<void> GetProfileInfo() async {
    emit(ProfileLoadingState());
  await  dioHelper.getData(
      endPoint: '${profileInfoEndpoint}',
    ).then((response) => {
      print(response.data),
      userInfo =UserInfo.fromJson(response.data['user']),
    emit(ProfileSuccessState())
  }).catchError((error){

    print("Erroe in get Data Profile");
    print(error);
    emit(ProfileErrorState());
  });
  }
}
