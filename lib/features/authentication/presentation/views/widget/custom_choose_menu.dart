import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/colors.dart';
class CustomChooseMenu extends StatelessWidget {
     String image;
     String text;
     int number;
     Color color;
     Color textcolor;
     CustomChooseMenu(this.image,this.text,this.number,this.color,this.textcolor);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Image.asset(image,width: 80,),
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
          SizedBox(height: 10,),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1.2, color:AppColors.blackColor)
            ),
            child: Center(
              child: Text("${number}",
              style: TextStyle(fontSize: 20,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
