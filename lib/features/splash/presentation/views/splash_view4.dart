import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/features/authentication/presentation/views/login_view.dart';

class SplashScreen4 extends StatefulWidget {
  const SplashScreen4({Key? key}) : super(key: key);

  @override
  State<SplashScreen4> createState() => _SplashScreen4State();
}

class _SplashScreen4State extends State<SplashScreen4>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    navigationToLogin();
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
            Center(child: Image.asset(AppAssets.splash4)),
            const SizedBox(height: 50),
            Image.asset(AppAssets.bgInSplash2),
          ],
        ),
      ),
    );
  }

  void navigationToLogin() {
    Future.delayed(
      const Duration(milliseconds: 200),
          () {
        Get.to(
              () => const LoginView(),
          transition: Transition.fadeIn,
          duration: kTranstionDuration,
        );
      },
    );
  }
}