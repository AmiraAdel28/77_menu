// import 'package:flutter/material.dart';
// import 'package:menu_app/core/utiles/assets.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   double buttonOpacity = 0;
//
//   // final cubit = SplashCubit();
//
//   @override
//   void initState() {
//     super.initState();
//
//     Future.delayed(const Duration(milliseconds: 3000)).then((value) {
//       // if (!MyShared.isLoggedIn()) {
//       //   // pushReplacement(context, OnBoardingScreen());
//       //   pushReplacement(context, OnBoardingScreen());
//       //   return;
//       // }
//     });
//     // cubit.getDoctorData();
//
// //.
//
//     Future.delayed(
//       const Duration(milliseconds: 1450),
//       () {
//         buttonOpacity = 1;
//         setState(() {});
//         logoHeight = 30;
//         logoWidth = 30;
//
//         bottomHeight = 50;
//         bottomWidth = 40;
//
//         setState(() {});
//       },
//     );
//   }
//
//     double logoHeight = 5;
//     double logoWidth = 10;
//
//     double bottomHeight = 35;
//     double bottomWidth = 25;
//
//     @override
//     Widget build(BuildContext context) {
//       // return BlocProvider(
//       // create: (BuildContext context) => cubit,
//       // child: BlocListener<SplashCubit, SplashState>(
//       //   child:
//       return Scaffold(
//         backgroundColor: Colors.black,
//         body: Stack(
//           alignment: AlignmentDirectional.bottomStart,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       AnimatedContainer(
//                         height: 200,
//                         width: 100,
//                         duration: const Duration(milliseconds: 200),
//                         curve: Curves.bounceOut,
//                         child: Image.asset(
//                           AppAssets.logo,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         // listener: (context, state) {
//         //   if (state is SplashSucsess) {
//         //     if (MyShared.isLoggedIn()) {
//         //       if (MyShared.getBoolean(key: MySharedKeys.isDoctor) == true) {
//         //         if (state.pending == 'pending') {
//         //           pushReplacement(context, const WaitingScreen());
//         //         }
//         //         if (state.pending == 'pending') {
//         //           push(context, const DoctorMainScreen());
//         //         }
//         //         if (MyShared.getBoolean(key: MySharedKeys.isDoctor) == false) {
//         //           push(context, const MainScreen());
//         //         }
//         //       }
//         //     } else {
//         //       pushReplacement(context, const LoginScreen());
//         //     }
//         //   }
//         //   if (state is SplashFailure) {
//         //     if (MyShared.isLoggedIn()) {
//         //       push(context, const MainScreen());
//         //     }
//         //   } else {
//         //     pushReplacement(context, const LoginScreen());
//         //   }
//         // },
//       );
//     }
//   }

// import 'package:flutter/material.dart';
// import 'package:menu_app/features/splash/presentation/views/widgets/splash_view_body.dart';
//
// class SplashView extends StatelessWidget {
//   const SplashView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.black,
//       body: SplashViewBody(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/features/splash/presentation/views/splash_view2.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    navigationToSplash2();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppAssets.bgInSplash),
            Center(
              child: Image.asset(AppAssets.splashOne),
            ),
            const SizedBox(height: 70),
            Image.asset(AppAssets.bgInSplash2),
          ],
        ),
      ),
    );
  }

  void navigationToSplash2() {
    Future.delayed(
      const Duration(milliseconds: 200),
      () {
        Get.to(
          () => const SplashScreen2(),
          transition: Transition.fadeIn,
          duration: kTranstionDuration,
        );
      },
    );
  }
}
