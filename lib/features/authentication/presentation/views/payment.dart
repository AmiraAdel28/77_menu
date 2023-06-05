import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/colors.dart';

class PaymentView extends StatefulWidget {

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
 String pay="credit";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 50,bottom: 10),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Text("الدفع", style: TextStyle(
                fontSize: 25

              ),),
              SizedBox(height: 20,),
              RadioListTile(
                activeColor: Colors.black,
                title: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("CREDIT CARD",style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold
                  ),),
                SizedBox(width: 15,),
                    Image.asset("assets/images/visa-logo.png"),
                  ],
                ),
                value: "credit",
                groupValue: pay,
                onChanged: (value){
                  setState(() {
                    pay = value.toString();
                  });
                },
              ),

              RadioListTile(
                activeColor: Colors.black,
                title: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("PAY PAL",style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.bold
                ),),
                 SizedBox(width: 15,),
                    Image.asset("assets/images/PayPal_Logo.png"),
                  ],
                ),
                value: "paypal",
                groupValue: pay,
                onChanged: (value){
                  setState(() {
                    pay = value.toString();
                  });
                },
              ),
              RadioListTile(
                activeColor: Colors.black,
                title: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("JAWWAL PAY",style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold
                    ),),
                    SizedBox(width: 15,),
                    Image.asset("assets/images/Jawwal.png"),
                  ],
                ),
                value: "jawwal",
                groupValue: pay,
                onChanged: (value){
                  setState(() {
                    pay = value.toString();
                  });
                },
              ),

              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Text("طرق اخرى",style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 15
                ),),
              ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
               child: Divider(
                 thickness: 4,
                   color: AppColors.blackColor,
               ),
             ),
              SizedBox(height: 10,),
              Container(

                height: MediaQuery.of(context).size.height/5,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.darkGrey
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40,right: 50),
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Column(
                      children: [
                        Text("*** ********* 45378",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.whitColor),),
                        Text("Karam Al Shawabkeh",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.whitColor),),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset("assets/images/visa.png")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: Text("تفاصيل",style: TextStyle(

                    fontSize: 17
                ),),
              ),
              SizedBox(height: 10,),
              Text("نظام المنيو الألكتروني الفئة العالية",style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 15
              ),),
              SizedBox(height: 10,),
              Text("PREMIUM",style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 19,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("السعر",style: TextStyle(
                      fontSize: 16
                  ),),
                  Text("1000",style: TextStyle(
                      fontSize: 16
                  ),),
                ],
              ),
              SizedBox(height: 40,),
              Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  color: Color(0xff00D0F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text("الدفع",
                      style: TextStyle(
                          fontSize: 22, color: AppColors.blackColor)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
