
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/features/authentication/data/data_provider/remote/dio_helper.dart';
import 'package:meta/meta.dart';

part 'create_state.dart';

class CreateCubit extends Cubit<CreateState> {
  CreateCubit() : super(CreateInitialstate());

  static CreateCubit get(context) => BlocProvider.of(context);
  DioHelper dioHelper = DioHelper();

  Future<void> Create(
    File logo,
    String username,
    String res_name,
    String location,
    String phone,
    String password,
    String id_stand,
    String id_res_type,
    String stand_quantity,
  ) async {
    emit(CreateLoadingstate());
    await dioHelper.postData(endPoint: createEndpoint, body: {
      "logo": logo,
      "username": username,
      "res_name": res_name,
      "location": location,
      "phone": phone,
      "password": password,
      "id_stand": id_stand,
      "id_res_type": id_res_type,
      "stand_quantity": stand_quantity,
    }).then((value) {
      print("success create");
      emit(CreateSuccessstate());
    }).catchError((Error) {
      print("create Error is $Error");
      emit(CreateErrorstate());
    });
  }
}
