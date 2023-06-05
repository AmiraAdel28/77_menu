import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_app/features/authentication/data/data_provider/remote/dio_helper.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialstate());

  static LoginCubit get(context) => BlocProvider.of(context);
  DioHelper dioHelper = DioHelper();

  // dioHelper.options.baseUrl = 'https://www.xx.com/api';
  // dio.options.connectTimeout = 5000; //5s
  // dio.options.receiveTimeout = 3000;

  Future<void> login(String username, String password) async {
    emit(LoginLodingstate());
    await dioHelper.postData(
        endPoint: 'auth/login',
        body: {"username": username, "password": password}).then((value) {
      print("success login");
      print(value.data);
      emit(LoginSuccessstate());
    }).catchError((error) {

      print("login Error id $error");
      emit(LoginErrorstate());
    });
  }
}
