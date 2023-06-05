import 'package:flutter/cupertino.dart';
import 'package:menu_app/core/utils/style.dart';

class CustomDataUser extends StatelessWidget {
  const CustomDataUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30,left: 10,right: 10,bottom: 10),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Image.asset("assets/images/user.png"),
                    SizedBox(width: 15,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        Directionality(
                            textDirection: TextDirection.ltr,
                            child: Text("أسم المطعم",style: Styles.textStyle8,)),
                        SizedBox(height: 5,),
                        Directionality(
                            textDirection: TextDirection.ltr,
                            child: Text("Balcon       ",style: Styles.textStyle17,)),
                      ],
                    )
                  ],
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Image.asset("assets/images/user.png"),
                    SizedBox(width: 15,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("أسم المستخدم",style: Styles.textStyle8,),
                        SizedBox(height: 5,),
                        Text("مجدي حمدان حامد",style: Styles.textStyle17,),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Image.asset("assets/images/location.png"),
                    SizedBox(width: 15,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("العنوان",style: Styles.textStyle8,),
                        SizedBox(height: 5,),
                        Text("نابلس - الحرم",style: Styles.textStyle17,),
                      ],
                    )
                  ],
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Image.asset("assets/images/phone.png"),
                    SizedBox(width: 15,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("رقم الهاتف",style: Styles.textStyle8,),
                        SizedBox(height: 5,),
                        Text("0566707007",style: Styles.textStyle17,),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
