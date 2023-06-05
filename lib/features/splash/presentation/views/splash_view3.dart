import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/features/splash/presentation/views/splash_view4.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({Key? key}) : super(key: key);

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    navigationToSplash4();
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
            Center(child: Image.asset(AppAssets.splashThree)),
            const SizedBox(height: 70),
            Image.asset(AppAssets.bgInSplash2),
          ],
        ),
      ),
    );
  }

  void navigationToSplash4() {
    Future.delayed(
      const Duration(milliseconds: 200),
          () {
        Get.to(
              () => const SplashScreen4(),
          transition: Transition.fadeIn,
          duration: kTranstionDuration,
        );
      },
    );
  }
}