import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/features/authentication/maneger/create_cubit.dart';
import 'package:menu_app/features/authentication/presentation/views/login_view.dart';
import 'package:menu_app/features/authentication/presentation/views/widget/custom_container_register.dart';
import 'package:menu_app/features/layout/presentation/views/appear_to_others_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _LoginViewState();
}

class _LoginViewState extends State<RegisterView> {
  bool valuefirst = false;

  TextEditingController fullnameController = TextEditingController();
  TextEditingController resnameController = TextEditingController();
  TextEditingController adressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateCubit, CreateState>(
      listener: (context, state) {
        if (state is CreateSuccessstate) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginView(),
            ),
          );
        } else if (state is CreateErrorstate) {
          SnackBar snackBar = const SnackBar(
            content: Text('عملية انشاء حساب مرفوضة'),
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
                      top: 20, left: 27, right: 26, bottom: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
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
                        CustomContainerRegister(
                            "اللأسم الثلاثي", "الأسم الثلاثي"),
                        CustomContainerRegister(
                            "اسم المطعم بالانجليزية", "اسم المطعم بالانجليزية"),
                        CustomContainerRegister("عنوان المطعم", "عنوان المطعم"),
                        CustomContainerRegister(
                            "رقم هاتف للتواصل", "رقم هاتف للتواصل"),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  width: 1, color: AppColors.colorTextForm),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25),
                                  child: Text(
                                    "شعار المطعم",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 15),
                                  child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.colorTextForm,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            width: 1,
                                            color: Color(0xff707070),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "No File Selected",
                                                style: TextStyle(
                                                    color: Color(0xffB1B1B1)),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.whitColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                      width: 1,
                                                      color:
                                                          AppColors.greyColor),
                                                ),
                                                child: const Center(
                                                  child: Padding(
                                                    padding: EdgeInsets
                                                            .symmetric(
                                                        horizontal: 5,
                                                        vertical: 3),
                                                    child: Text(
                                                      "Choose File",
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .greyColor),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform.scale(
                            scale: 0.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "الأحكام وشروط الأستخدام",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: valuefirst
                                          ? Color(0xff00A2FF)
                                          : Color(0xfffFFC300),
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "أوافق علي",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                                Checkbox(
                                  checkColor: Colors.black,
                                  activeColor: AppColors.colorTextForm,
                                  value: this.valuefirst,
                                  onChanged: (value) {
                                    setState(() {
                                      this.valuefirst = value!;
                                    });
                                  },
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        (valuefirst == false)
                            ? InkWell(
                                onTap: () {
                                  //   BlocProvider.of<CreateCubit>(context).Create(fullnameController.text, resnameController.text, adressController.text, phoneController.text)
                                },
                                child: Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.black,
                                      )),
                                  child: const Center(
                                    child: Text("التالي",
                                        style: TextStyle(
                                          fontSize: 22,
                                        )),
                                  ),
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  //  BlocProvider.of<CreateCubit>(context).Create(fullnameController.text, resnameController.text, adressController.text, phoneController.text);
                                  // Navigator.pushNamed(context, 'homeSreen', arguments: {
                                  //   'firstName': fullnameController.text,
                                  // });
                                },
                                child: Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: AppColors.blackColor,
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.black,
                                      )),
                                  child: const Center(
                                    child: Text("التالي",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: AppColors.yellowColor)),
                                  ),
                                ),
                              ),
                        SizedBox(
                          height: 20,
                        ),
                      ]),
                    ),
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
