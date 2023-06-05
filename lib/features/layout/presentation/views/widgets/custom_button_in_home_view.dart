import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/colors.dart';

class CustomButtonInHomeView extends StatelessWidget {
  final double width,
      height,
      paddingRight,
      paddingLeft,
      paddingBottom,
      paddingTop;
  final String text;

  const CustomButtonInHomeView({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.paddingBottom,
    required this.paddingRight,
    required this.paddingLeft,
    required this.paddingTop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height / 14,
      padding: EdgeInsets.only(
        left: paddingLeft,
        top: paddingTop,
        right: paddingRight,
        bottom: paddingBottom,
      ),
      decoration: BoxDecoration(
        color: AppColors.blackColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColors.yellowColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}