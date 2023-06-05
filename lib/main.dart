import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:menu_app/features/authentication/maneger/create_cubit.dart';
import 'package:menu_app/features/authentication/maneger/password_cubit.dart';
import 'package:menu_app/features/authentication/maneger/login_cubit.dart';
import 'features/splash/presentation/views/splash_view1.dart';

void main() {
  runApp(const MenuApp());
}

class MenuApp extends StatelessWidget {
  const MenuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>LoginCubit()),
        BlocProvider(create: (context)=>CreateCubit()),
        BlocProvider(create: (context)=>ForgetPasswordCubit()),
        BlocProvider(create: (context)=>ChangePasswordCubit()),
        BlocProvider(create: (context)=>OtpPasswordCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Tajawal-Regular',
        ),
        home:
         SplashScreen1(),
      ),
    );
  }
}
