import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/core/utils/style.dart';

class CustomCardTranslate extends StatefulWidget {
  @override
  State<CustomCardTranslate> createState() => _CustomCardTranslateState();
}

class _CustomCardTranslateState extends State<CustomCardTranslate> {
String dropdownvalue="one";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: MediaQuery.of(context).size.height/12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.blackColor
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: IconButton(onPressed: (){},
                  icon: Icon(Icons.keyboard_arrow_down_sharp,color: AppColors.greyColor,size: 50,)
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text("اللغه_العربية",style: Styles.textStyle17b,),
                  SizedBox(width: 10,),
                  Image.asset("assets/images/translate.png"),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
