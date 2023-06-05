import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/features/authentication/data/data_provider/remote/dio_helper.dart';
import 'package:meta/meta.dart';
part 'password_state.dart';

class ForgetPasswordCubit extends Cubit<PasswordState> {
  ForgetPasswordCubit() : super(ForgetPasswordInitialState());
  DioHelper dioHelper = DioHelper();

  static ForgetPasswordCubit get(context) => BlocProvider.of(context);
  Future<void> forgetPassword(String phone)async{
    emit(ForgetPasswordLoadingState());
    await dioHelper.postData(endPoint: forgetPasswordEndpoint,body: {
      "phone":phone,
    }).then((response) {
      print(response.data);
      emit(ForgetPasswordSuccessState());
    }).catchError((error){
      print(error);
      emit(ForgetPasswordErrorState());
    });
    
  }}

class ChangePasswordCubit extends Cubit<PasswordState>{
  ChangePasswordCubit(): super (ChangePasswordInitialState());
  
  DioHelper dioHelper= DioHelper();
  static ChangePasswordCubit get(context)=> BlocProvider.of(context);
  
  Future<void> changePassword(String oldPassword,String newpassword, String confirmpassword)async{
    emit(ChangePasswordLoadingState());
    
    await dioHelper.putData(endPoint: changePasswordEndpoint,body: {
      "oldPassword":oldPassword,
      "newpassword":newpassword,
      "confirmpassword":confirmpassword,
    }).then((responce){
      print(responce.data);
      emit(ChangePasswordSuccessState());
    } ).catchError((error){
      print(error);
      emit(ChangePasswordErrorState());
    });
    
  }
  
}
class OtpPasswordCubit extends Cubit<PasswordState>{
  OtpPasswordCubit(): super (OtpPasswordInitialState());

  DioHelper dioHelper= DioHelper();
  static OtpPasswordCubit get(context)=> BlocProvider.of(context);

  Future<void> changePassword(String phone, String otp)async{
    emit(OtpPasswordLoadingState());

    await dioHelper.putData(endPoint: otpPasswordEndpoint,body: {

      "phone":phone,
      "otp":otp,
    }).then((responce){
      print(responce.data);
      emit(OtpPasswordSuccessState());
    } ).catchError((error){
      print(error);
      emit(OtpPasswordErrorState());
    });

  }

}


