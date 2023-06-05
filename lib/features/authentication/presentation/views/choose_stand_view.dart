import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/core/utils/styles.dart';
import 'package:menu_app/features/authentication/presentation/views/final_register.dart';

class ChooseStandView extends StatefulWidget {
  const ChooseStandView({Key? key}) : super(key: key);

  @override
  State<ChooseStandView> createState() => _LoginViewState();
}
class _LoginViewState extends State<ChooseStandView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff171717),
        body: Stack(
          children: [
            Row(
              children: [
                Image.asset(AppAssets.bg, width: 360),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 20),
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 20),
                      child: Column(
                        children: [

                          const Text("الرجاء اختيار نوع الستاندات",style: Styles.textStyle25),
                          const SizedBox(height: 20),
                          Image.asset("assets/images/Rectangle.png",width: 170,),
                          const SizedBox(height: 20,),
                          const Text("عند الضغط علي الرقم سيتم اختيار الستاند",style: TextStyle(
                              fontSize: 12
                          ),),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset("assets/images/stand1.png"),
                                    SizedBox(height: 10,),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(width: 1.2, color:AppColors.blackColor)
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 4,left: 12,right: 0,),
                                        child: Text("1",
                                          style: TextStyle(fontSize: 25,),
                                        ),
                                      ),
                                    ),
                                  ],),
                                SizedBox(width: 15,),
                                Column(
                                  children: [
                                    Image.asset("assets/images/stand2.png"),
                                    SizedBox(height: 10,),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(width: 1.2, color:AppColors.blackColor)
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 4,left: 12,right: 0,),

                                        child: Text("2",
                                          style: TextStyle(fontSize: 25,),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                           SizedBox(height: 10,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [


                              Text("مجانية مع نظام المنيو الأول",style: TextStyle(fontSize: 10),),
                              Text("9 ستاندات ",style: TextStyle(color: Colors.red,fontSize: 12),),
                              Text("ستقدم الشركة ",style: TextStyle(fontSize: 12),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 10),
                            child: Divider(
                              thickness: 2,
                              color: AppColors.blackColor,
                            ),
                          ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),
                       child: Column(
                         children: [
                           Directionality(
                             textDirection: TextDirection.rtl,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 CircleAvatar(
                                   radius: 3,
                                   backgroundColor: Colors.red,
                                 ),
                                 SizedBox(width: 7,),
                                 Text("يمتلك ستاند 77 شكلا انيقا بسماكة 3 ملم وارتفاعه 12 cm بقاعدة 4 cm",

                                   style: TextStyle(
                                       fontSize: 10
                                   ),
                                 )
                               ],),
                           ),
                           SizedBox(height: 10,),
                           Directionality(
                             textDirection: TextDirection.rtl,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 CircleAvatar(
                                   radius: 3,
                                   backgroundColor: Colors.red,
                                 ),
                                 SizedBox(width: 7,),
                                 Text("تمت صناعة ستاند 77 من مادة PVC المعالدة محليا",

                                   style: TextStyle(
                                       fontSize: 10
                                   ),
                                 )
                               ],),
                           ),
                           SizedBox(height: 10,),
                           Directionality(
                             textDirection: TextDirection.rtl,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 CircleAvatar(
                                   radius: 3,
                                   backgroundColor: Colors.red,
                                 ),
                                 SizedBox(width: 7,),
                                 Text("تمت طباعة ستاند 77 بتقنية UV",

                                   style: TextStyle(
                                       fontSize: 10
                                   ),
                                 )
                               ],),
                           ),
                           SizedBox(height: 10,),
                           Directionality(
                             textDirection: TextDirection.rtl,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 CircleAvatar(
                                   radius: 3,
                                   backgroundColor: Colors.red,
                                 ),
                                 SizedBox(width: 7,),
                                 Text("تكفل الشركة ستاند 77 لمدة عام واحد من تاريخ الصنع",

                                   style: TextStyle(
                                       fontSize: 10
                                   ),
                                 )
                               ],),
                           ),
                           SizedBox(height: 10,),
                           Directionality(
                             textDirection: TextDirection.rtl,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 CircleAvatar(
                                   radius: 3,
                                   backgroundColor: Colors.red,
                                 ),
                                 SizedBox(width: 7,),
                                 Text("الكفالة لا تشمل سوء الأستخدام",

                                   style: TextStyle(
                                       fontSize: 10
                                   ),
                                 )
                               ],),
                           ),
                         ],
                       ),
                     ),
                          SizedBox(height: 15,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text("سعر الستاند الواحد",style: TextStyle(fontSize: 10),),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 70,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        width: 1,
                                        color: AppColors.colorTextForm
                                      )
                                    ),
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(" 20",style: TextStyle(
                                            fontSize: 30,
                                          ),),
                                          Text("  شيقل ",)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20,),
                              Column(
                                children: [
                                  Text("ادخل عدد الستندات المطلوبة",style: TextStyle(fontSize: 10),),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 70,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      color: AppColors.colorTextForm,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        width: 1,
                                        color: AppColors.colorTextForm
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalRegister()));
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height/14,
                              width:MediaQuery.of(context).size.width/1.7,
                              decoration: BoxDecoration(
                                  color: AppColors.blackColor,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black,
                                  )
                              ),
                              child: const Center(
                                child: Text("التالي", style: TextStyle(fontSize: 22,color: AppColors.yellowColor)),
                              ),
                            ),
                          ),






                        ],
                      ),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
