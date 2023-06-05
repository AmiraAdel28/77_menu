import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/features/authentication/maneger/password_cubit.dart';
import 'package:menu_app/features/authentication/presentation/views/otp_screen.dart';

class ChangePasswordView extends StatelessWidget {
  TextEditingController oldpassword=TextEditingController();
  TextEditingController newpassword=TextEditingController();
  TextEditingController confirmpassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangePasswordCubit, PasswordState>(
      listener: (context, state) {
        if(state is ChangePasswordSuccessState){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OTPScreen(),
            ),
          );
        }
        else if(state is ChangePasswordErrorState){
          SnackBar snackBar = const SnackBar(
            content: Text('برجاء التأكد من كلمة المرور'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: const Color(0xff171717),
            body: Stack(
              children: [
                Row(
                  children: [
                    Image.asset(AppAssets.bg, width: 360),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 75, left: 27, right: 26, bottom: 100),
                  child: Container(
                    height: 680,
                    width: 375,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                              "assets/images/Logo.png", width: 110),
                        ),
                        const Text(
                          "مجموعة شركات77     وشركةأثرالفراشة",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 50, bottom: 25),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextFormField(
                                controller: oldpassword,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10),
                                    hintText: "كلمة المرور القديمه",
                                    hintStyle: const TextStyle(
                                        color: Color(0XFFB8B8B8), fontSize: 12),
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon:
                                    Image.asset("assets/images/user.png"),
                                    prefixIconColor: const Color(0XFFB8B8B8),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: Color(0xff1E1E1E),
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    errorBorder: const OutlineInputBorder(
                                      borderSide:
                                      BorderSide(width: 1, color: Colors.red),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xff1E1E1E)),
                                      borderRadius: BorderRadius.circular(50),
                                    ))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 25),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextFormField(
                              controller: newpassword,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10),
                                    hintText: "كلمة المرور الجديده",
                                    hintStyle: const TextStyle(
                                        color: Color(0XFFB8B8B8), fontSize: 12),
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon:
                                    Image.asset("assets/images/user.png"),
                                    prefixIconColor: const Color(0XFFB8B8B8),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: Color(0xff1E1E1E),
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    errorBorder: const OutlineInputBorder(
                                      borderSide:
                                      BorderSide(width: 1, color: Colors.red),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xff1E1E1E)),
                                      borderRadius: BorderRadius.circular(50),
                                    ))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 40),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextFormField(
                              controller: confirmpassword,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10),
                                    hintText: "تأكيد كلمة المرور",
                                    hintStyle: const TextStyle(
                                        color: Color(0XFFB8B8B8), fontSize: 12),
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon:
                                    Image.asset("assets/images/user.png"),
                                    prefixIconColor: const Color(0XFFB8B8B8),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: Color(0xff1E1E1E),
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    errorBorder: const OutlineInputBorder(
                                      borderSide:
                                      BorderSide(width: 1, color: Colors.red),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xff1E1E1E)),
                                      borderRadius: BorderRadius.circular(50),
                                    ))),
                          ),
                        ),

                        TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.symmetric(
                                    horizontal: 80, vertical: 8)),
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                side: const BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<ChangePasswordCubit>(context).changePassword(oldpassword.text, newpassword.text, confirmpassword.text);
                          },
                          child:state is ChangePasswordLoadingState
                              ? const Center(
                              child: CircularProgressIndicator(
                                color: Colors.black,
                              )):
                          const Text("ارسال", style: TextStyle(fontSize: 22)),
                        ),
                      ]),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  left: 110,
                  child: Row(
                    children: [
                      Image.asset(AppAssets.insta),
                      const SizedBox(width: 20),
                      Image.asset(AppAssets.face),
                      const SizedBox(width: 20),
                      Image.asset(AppAssets.whats),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
