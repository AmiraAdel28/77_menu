import 'package:flutter/material.dart';

import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/features/authentication/presentation/views/forget_password.dart';
import 'package:menu_app/features/authentication/presentation/views/register_view.dart';

import '../../../layout/presentation/views/layout_view.dart';

class FinalRegister extends StatefulWidget {
  const FinalRegister({Key? key}) : super(key: key);

  @override
  State<FinalRegister> createState() => _LoginViewState();
}

class _LoginViewState extends State<FinalRegister> {

  @override
  Widget build(BuildContext context) {
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
                  top: 40, left: 27, right: 26, bottom: 30),
              child: Container(
                height: 680,
                width: 375,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset("assets/images/Logo.png"),
                    ),
                    const Text(
                              " تهانينا لقم قمت باضافة مطعمك الي نظام",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.red
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "مجموعة شركات ",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.red
                            ),
                          ),
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: Text(
                              "77 group",
                              style: TextStyle(
                                  fontSize: 12,

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                      child: Divider(thickness: 1.5,
                      color: AppColors.greyColor,),
                    ),
                    Text("فاتورة INVOICE"),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: MediaQuery.of(context).size.height/4,
                        width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            width: 1,
                            color: AppColors.greyColor
                          )
                        ),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("نظام منيو فئة  Standerd"),
                                  Text("400"),
                                ],
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("10 ستاندات"),
                                  Text("200"),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                child: Divider(thickness: 1.5,
                                color: AppColors.greyColor,),
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("المجموع"),
                                  Text("600"),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Text("شركة أثر الفراشة للدعاية",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.red
                                ),

                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 22,),
                    Text("ستقوم الشركة بالتواصل معكم هاتفيا خلال 24 ساعة",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.red
                      ),

                    ),
                    SizedBox(height: 22,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeLayoutScreen(),
                          ),
                        );
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
                            )
                        ),
                        child: const Center(
                          child: Text("التالي", style: TextStyle(fontSize: 22,color: AppColors.yellowColor)),
                        ),
                      ),
                    ),

                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
