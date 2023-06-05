import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/colors.dart';

class CustomPriceContainer extends StatelessWidget {
CustomPriceContainer(this.color);
 Color? color;
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 20),
      child: Container(
        height: MediaQuery.of(context).size.height/12,
        width: MediaQuery.of(context).size.width/6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff222222),
        ),
        child: Center(
          child: Text("0",style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color:color
          ),),
        ),
      ),
    );
  }
}
