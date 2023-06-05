import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/colors.dart';

class CustomMenuSpecification2 extends StatelessWidget {
 String text;
 String hintText;
 CustomMenuSpecification2(this.text,this.hintText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 7),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/checkmark.png"),
                SizedBox(width: 15,),
                Text(text),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text(hintText,style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 12
              ),),
            ),
            SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
