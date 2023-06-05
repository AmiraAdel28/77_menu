import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/features/splash/presentation/views/splash_view3.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    navigationToSplash3();
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
              child :Image.asset(AppAssets.splashTwo),
            ),
            const SizedBox(height: 70),
            Image.asset(AppAssets.bgInSplash2),
          ],
        ),
      ),
      // Center(child: Image.asset(AppAssets.splashTwo)),
    );
  }

  void navigationToSplash3() {
    Future.delayed(
      const Duration(milliseconds: 200),
          () {
        Get.to(
              () => const SplashScreen3(),
          transition: Transition.fadeIn,
          duration: kTranstionDuration,
        );
      },
    );
  }
}