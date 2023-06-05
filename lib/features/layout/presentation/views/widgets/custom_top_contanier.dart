import 'package:flutter/cupertino.dart';
import 'package:menu_app/core/utils/colors.dart';

class CustomTopContanier extends StatelessWidget {
  const CustomTopContanier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: AppColors.blackColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(18),
          bottomLeft: Radius.circular(18),
        ),
      ),
      height: MediaQuery.of(context).size.height / 6.8,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.asset(
            "assets/images/logo_profile.png",
            width: 75,
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            "BALCON",
            style: TextStyle(
              fontSize: 25,
              color: AppColors.yellowColor,
              fontWeight: FontWeight.w900,
            ),
          )
        ],
      ),
    );
  }
}
