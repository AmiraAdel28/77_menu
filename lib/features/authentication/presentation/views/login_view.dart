import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/features/authentication/maneger/login_cubit.dart';
import 'package:menu_app/features/authentication/presentation/views/forget_password.dart';
import 'package:menu_app/features/authentication/presentation/views/register_view.dart';
import 'package:menu_app/features/layout/presentation/views/layout_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool valuefirst = false;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccessstate) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeLayoutScreen(),
            ),
          );
        } else if (state is LoginErrorstate) {
          SnackBar snackBar = const SnackBar(
            content: Text('عملية الدخول مرفوضة'),
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
                      top: 75, left: 27, right: 26, bottom: 90),
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
                          child: Image.asset("assets/images/Logo.png"),
                        ),
                        const Text(
                          "مجموعة شركات77     وشركةأثرالفراشة",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 50, bottom: 20),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextFormField(
                                controller: email,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10),
                                    hintText: "أسم المستخدم",
                                    hintStyle: const TextStyle(
                                        color: Color(0XFFB8B8B8), fontSize: 12),
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon:
                                        Image.asset("assets/images/user1.png"),
                                    prefixIconColor: const Color(0XFFB8B8B8),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: Color(0xff1E1E1E),
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    errorBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.red),
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
                            left: 20,
                            right: 20,
                          ),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextFormField(
                                controller: password,
                                decoration: InputDecoration(
                                    filled: true,
                                    contentPadding: const EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                    hintText: "كلمة المرور",
                                    hintStyle: const TextStyle(
                                        color: Color(0XFFB8B8B8), fontSize: 12),
                                    fillColor: const Color(0xffE0E0E0),
                                    prefixIcon: Image.asset(
                                        "assets/images/padlock.png"),
                                    prefixIconColor: const Color(0XFFB8B8B8),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: Color(0xffE0E0E0),
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    errorBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.red),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xff0E0E0E)),
                                      borderRadius: BorderRadius.circular(50),
                                    ))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                                },
                                child: const Text(
                                  "نسيت كلمةالمرور",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff171717)),
                                ),
                              ),
                              Transform.scale(
                                scale: 0.7,
                                child: Row(
                                  children: [
                                    const Text(
                                      "تذكرني",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    Checkbox(
                                      checkColor: Colors.black,
                                      activeColor: Colors.white,
                                      value: this.valuefirst,
                                      onChanged: (value) {
                                        setState(() {
                                          this.valuefirst = value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // ((email.text.isEmpty) && (password.text.isEmpty))
                        //     ? InkWell(
                        //         onTap: () {
                        //           SnackBar snackBar = const SnackBar(
                        //               content:
                        //                   Text('من فضلك قم بادخال البيانات '));
                        //           ScaffoldMessenger.of(context)
                        //               .showSnackBar(snackBar);
                        //         },
                        //         child: Container(
                        //           height: 50,
                        //           width: 180,
                        //           decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(25),
                        //               border: Border.all(
                        //                 width: 2,
                        //                 color: Colors.black,
                        //               )),
                        //           child: state is LoginLodingstate
                        //               ? const Center(
                        //                   child: CircularProgressIndicator(
                        //                   color: Colors.black,
                        //                 ))
                        //               : const Center(
                        //                   child: Text("دخول",
                        //                       style: TextStyle(
                        //                         fontSize: 22,
                        //                       )),
                        //                 ),
                        //         ),
                        //       )
                        //     :
                        InkWell(
                                onTap: () {
                                  BlocProvider.of<LoginCubit>(context)
                                      .login(email.text, password.text);
                                },
                                child: Container(
                                  height: 50,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: AppColors.blackColor,
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.black,
                                      )),
                                  child: state is LoginLodingstate
                                      ? const Center(
                                          child: CircularProgressIndicator(
                                          color: Colors.white,
                                        ))
                                      : const Center(
                                          child: Text("دخول",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: AppColors.whitColor)),
                                        ),
                                ),
                              ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterView()));
                          },
                          child: Text(
                            "انشاء حساب",
                            style: TextStyle(
                              color: Color(0xff00A2FF),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
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
