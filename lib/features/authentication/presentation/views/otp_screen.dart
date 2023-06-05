import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/features/authentication/maneger/password_cubit.dart';
import 'package:menu_app/features/authentication/presentation/views/login_view.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpPasswordCubit, PasswordState>(
      listener: (context, state) {
        if(state is OtpPasswordSuccessState){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginView(),
            ),
          );
        }
        else if(state is OtpPasswordErrorState){
          SnackBar snackBar = const SnackBar(
            content: Text('برجاء التأكد من OTP'),
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
                          child: Row(
                            children: [
                              Image.asset(AppAssets.detailed, width: 110),
                            ],
                          ),
                        ),
                        CircularPercentIndicator(
                          radius: 80.0,
                          lineWidth: 2.0,
                          animation: true,
                          percent: 0.59,
                          center: const Text(
                            "00:59",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          footer: Column(
                            children: [
                              Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.8,
                                child: const Text(
                                  "ستصلك رسالة على رقم هاتفك في غضون دقيقة",
                                  overflow: TextOverflow.clip,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.black,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              width: 120,
                              decoration: BoxDecoration(
                                  border:
                                  Border.all(color: Colors.black, width: 0.8),
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      topLeft: Radius.circular(15))),
                              child: const Text(
                                'الدعم الفني',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              // width: 100,
                              decoration: BoxDecoration(
                                  border:
                                  Border.all(color: Colors.black, width: 0.8),
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                              child: const Text(
                                'اعادة ارسال مرة اخري',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
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
                          onPressed: () {},
                          child: const Text("تسجيل الدخول",
                              style: TextStyle(fontSize: 22)),
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
