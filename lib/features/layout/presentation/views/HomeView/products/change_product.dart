import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/features/layout/presentation/views/HomeView/products/widget/custom_price_container.dart';
class ChangeProductView extends StatefulWidget {

  @override
  State<ChangeProductView> createState() => _AddNewProductViewState();
}

class _AddNewProductViewState extends State<ChangeProductView> {
  List<String> list = ["وجبات رئيسيه", "سلطات", "مشروبات", "وجبات رئيسيه", "سلطات", "مشروبات",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
            child: SingleChildScrollView(
                child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/4,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.blackColor,
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 30,),
                                Container(
                                  height: MediaQuery.of(context).size.height/13,
                                  width: MediaQuery.of(context).size.width/1.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          width: 1,
                                          color: AppColors.whitColor
                                      )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 2,right: 15),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(onPressed: (){}, icon: Image.asset(
                                            "assets/images/notification.png"
                                        )),
                                        Text("تعديل المنتج",style: TextStyle(
                                            fontSize: 20,
                                            color: AppColors.whitColor,
                                            fontWeight: FontWeight.w700
                                        ),)
                                      ],
                                    ),
                                  ),
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 30,
                                        left: 20,right: 20
                                      ),
                                      child: Text("الصنف الخاص بهذا المنتج",
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: AppColors.yellowColor
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 140,left: 50,right: 50),
                            child:   AwesomeDropDown(
                              dropDownBottomBorderRadius:8,
                              dropDownTopBorderRadius: 8,
                              selectedItem: "أراجيل",
                              selectedItemTextStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey5Color
                              ),
                              dropDownListTextStyle:TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200
                              ) ,
                              numOfListItemToShow: list.length,
                              dropDownIcon: Icon(Icons.keyboard_arrow_down_sharp,size: 40,color: AppColors.grey5Color,),
                              dropDownList: list,
                            ),


                            // Container(
                            //   decoration: BoxDecoration(
                            //           color: Colors.white,
                            //           border: Border.all(
                            //               width: 1,
                            //               color: AppColors.blackColor),
                            //           borderRadius: BorderRadius.circular(15)),
                            //       // height:MediaQuery.of(context).size.height/10,
                            //   child: DropdownButton<String>(
                            //     hint: Row(mainAxisAlignment: MainAxisAlignment.end,
                            //       children: [
                            //         Padding(
                            //           padding: const EdgeInsets.symmetric(horizontal: 10),
                            //           child: Text("اختر الصنف",
                            //           style: TextStyle(
                            //                       fontSize: 25,
                            //                       fontWeight: FontWeight.w600,
                            //                       color: AppColors.grey5Color
                            //                   ),
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //     isExpanded: true,
                            //     underline: Padding(
                            //       padding: const EdgeInsets.symmetric(horizontal: 65),
                            //       child: Divider(
                            //         thickness: 1,
                            //         color: AppColors.blackColor,
                            //       ),
                            //     ),
                            //     borderRadius: BorderRadius.circular(25),
                            //     icon: Icon(Icons.keyboard_arrow_down_rounded),
                            //     iconSize: 58,
                            //
                            //     items: <String>['وجبات رئيسية', 'سلطات', 'مشروبات', 'وجبات رئيسية',"سلطات","مشروبات"].map((String value) {
                            //       return DropdownMenuItem<String>(
                            //         value: value,
                            //         child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            //           children: [
                            //             Text(value,
                            //             style: TextStyle(fontSize: 15,),
                            //             ),
                            //           ],
                            //         ),
                            //       );
                            //     }).toList(),
                            //     onChanged: (_) {},
                            //   ),
                            // ),




                            // Container(
                            //   decoration: BoxDecoration(
                            //       color: Colors.white,
                            //       border: Border.all(
                            //           width: 1,
                            //           color: AppColors.blackColor
                            //       ),
                            //       borderRadius: BorderRadius.circular(15)
                            //   ),
                            //   height:MediaQuery.of(context).size.height/10,
                            //   child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            //     children: [
                            //       Text("اختر الصنف",style: TextStyle(
                            //           fontSize: 25,
                            //           fontWeight: FontWeight.w500,
                            //           color: AppColors.grey5Color
                            //       ),),
                            //       SizedBox(width: 18,),
                            //       Icon(Icons.keyboard_arrow_down_outlined,size: 50,color: AppColors.grey5Color,)
                            //     ],
                            //   ),
                            // ),
                          ),
                        ],
                      ),

                      SizedBox(height: 30,),
                      Text("ادخال اسم المنتج,الوصف,اللغات",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/15,
                        width: MediaQuery.of(context).size.width/1.1,
                        decoration: BoxDecoration(
                          color: AppColors.blackColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text("Hebrew",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            Text("English",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 4),
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                    color: AppColors.navyColor,
                                    borderRadius: BorderRadius.circular(50)
                                ),

                                child: Center(
                                  child: Text("عربي",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 25,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("أسم المنتج",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                              ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: MediaQuery.of(context).size.height/13,
                        width: MediaQuery.of(context).size.width/1.09,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 2,
                                color: Colors.black
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                          child: Text(
                            "ارجيلة تفاحتين",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 13,
                                color: AppColors.grey3Color
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("وصف المنتج",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                              ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: MediaQuery.of(context).size.height/5,
                        width: MediaQuery.of(context).size.width/1.09,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 2,
                                color: Colors.black
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                          child: Text(
                            "تقدم مع مشروب طاقة",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 13,
                                color: AppColors.grey3Color
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("السعر",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                              ),),
                          ],
                        ),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
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
              color:Colors.grey
          ),),
        ),
      ),
    ),
                          Padding(
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
                                    color:Colors.grey
                                ),),
                              ),
                            ),
                          ),
                          Padding(
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
                                    color:Colors.grey
                                ),),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 20),
                            child: Container(
                              height: MediaQuery.of(context).size.height/12,
                              width: MediaQuery.of(context).size.width/6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff222222),
                              ),
                              child: Center(
                                child: Text("20",style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.white
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("ملاحظة:يمكنك تعبئة السعر في الخانخ الاولي \nوفي حال توفرت اسعار متعدده اضفهم بالترتيب",
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("صورة المنتج",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                              ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("يمكنك اضافة صورةبالضغط علي المربع",
                              style: TextStyle(
                                fontSize: 9,

                              ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Image.asset("assets/images/vaping.png",),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: MediaQuery.of(context).size.height/13,
                        width: MediaQuery.of(context).size.width/2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              width: 2,
                              color: Colors.black,
                            )
                        ),
                        child: const Center(
                          child: Text("حفظ الغيير", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Image.asset("assets/images/Logo.png"),


                    ])))
    );
  }
}
