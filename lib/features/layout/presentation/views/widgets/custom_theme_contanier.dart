import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/colors.dart';

class CustomThemeContanier extends StatelessWidget {
  const CustomThemeContanier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 145,
            decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColors.blackColor
          ),
            ),
            child: Column(
              children: [
                SizedBox(height: 13,),
                Text("Light"),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,left: 5),
                   child: Row(
                     children: [
                       Image.asset("assets/images/box_light.png"),
                       SizedBox(width: 3,),
                       Image.asset("assets/images/box_light.png"),
                       SizedBox(width: 3,),
                       Image.asset("assets/images/box_light.png"),
                     ],
                   ),
                 )
              ],
            ),
          ),
          SizedBox(width: 15,),
          Container(

            height: 60,
            width: 145,
            decoration: BoxDecoration(
               color: AppColors.blackColor,
              border: Border.all(
                  width: 1,
                  color: AppColors.blackColor
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 13,),
                Text("Dark",style: TextStyle(color: Colors.white),),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 5),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      children: [
                        SizedBox(width: 3,),
                        Image.asset("assets/images/box_dark.png"),
                        SizedBox(width: 3,),
                        Image.asset("assets/images/box_dark.png"),
                        SizedBox(width: 3,),
                        Image.asset("assets/images/box_dark.png"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
