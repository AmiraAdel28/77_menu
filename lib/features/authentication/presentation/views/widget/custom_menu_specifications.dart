import 'package:flutter/cupertino.dart';
import 'package:menu_app/core/utils/colors.dart';

class CustomMenuSpecification extends StatelessWidget {
String text;

CustomMenuSpecification(this.text,);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 7),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            Image.asset("assets/images/checkmark.png"),
            SizedBox(width: 15,),
            Text(text,style: TextStyle(
              fontSize: 12
            ),),
            SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
