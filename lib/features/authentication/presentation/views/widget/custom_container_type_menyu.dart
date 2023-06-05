import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/colors.dart';
class CustomContainerTypeMenu extends StatelessWidget {
  String image;
  String text;
  Color color;
  Color textcolor;
  CustomContainerTypeMenu(this.image,this.text,this.color,this.textcolor);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Image.asset(image,width: 100,),
          SizedBox(height: 10,),
          Container(
            height: 30,
            width: 95,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: AppColors.blackColor
                ),
                borderRadius: BorderRadius.circular(25),
                color: color
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  color: textcolor,

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
