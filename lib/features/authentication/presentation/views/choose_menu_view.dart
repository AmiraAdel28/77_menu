import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/core/utils/styles.dart';
import 'package:menu_app/features/authentication/presentation/views/advanced_view.dart';
import 'package:menu_app/features/authentication/presentation/views/choose_stand_view.dart';
import 'package:menu_app/features/authentication/presentation/views/premium_view.dart';
import 'package:menu_app/features/authentication/presentation/views/standard_view.dart';
import 'package:menu_app/features/authentication/presentation/views/widget/custom_choose_menu.dart';

class ChooseMenuView extends StatefulWidget {


  @override
  State<ChooseMenuView> createState() => _LoginViewState();
}
class _LoginViewState extends State<ChooseMenuView> {
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

                        const Text("الرجاء اختيار نوع نضام المنيو",style: Styles.textStyle25),
                        const SizedBox(height: 20),
                        Image.asset("assets/images/Rectangle.png",width: 170,),
                        const SizedBox(height: 20,),
                        const Text("بالضغط علي صورة المنيو سيتم نقلك لمشاهدة عينة من النظام",style: TextStyle(
                          fontSize: 9
                        ),),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            GestureDetector(
                                onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>const StandardView()));
                                },
                                child: CustomChooseMenu("assets/images/standard.png", "Standard", 1, AppColors.blackColor, AppColors.whitColor)),
                            GestureDetector(
                                onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdvancedView()));

                                },
                                child: CustomChooseMenu("assets/images/advanced.png", "Advanced", 2, AppColors.whitColor, AppColors.blackColor)),
                            GestureDetector(
                                onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PremiumView()));

                                },
                                child: CustomChooseMenu("assets/images/premium.png", "premium", 3, AppColors.whitColor, AppColors.blackColor)),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 1,
                                color: AppColors.blackColor
                              )
                            ),
                            child: Column(
                              children: [
                                Image.asset("assets/images/Rectangle2.png",),
                                const SizedBox(height: 10,),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("شيقل / سنوي",style: Styles.textStyle14,),
                                    const SizedBox(width: 10,),
                                    const Text("100",style: Styles.textStyle30,),
                                  ],
                                ),
                              ],),),),
                        const SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text("مواصفات المنيو",style: TextStyle(
                                fontSize: 15,
                               fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.only(top: 5,bottom: 5,left: 215,right: 30),
                          child: Divider(thickness: 2,
                          color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 70,vertical: 5),
                          child: Divider(thickness: 2.5,
                          color: AppColors.blackColor,),
                        ),
                        const Text("اختر النظام",style: TextStyle(
                          fontSize: 17
                        ),),
                        const SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: AppColors.blackColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 1.2, color:AppColors.blackColor)
                              ),
                              child: const Center(
                                child: Text("1",
                                  style: TextStyle(fontSize:30,color: AppColors.whitColor,),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 1.2, color:AppColors.blackColor)
                              ),
                              child: const Center(
                                child: Text("2",
                                  style: TextStyle(fontSize: 30,),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 1.2, color:AppColors.blackColor)
                              ),
                              child: const Center(
                                child: Text("3",
                                  style: TextStyle(fontSize: 30,),
                                ),
                              ),
                            ),

                          ],
                        ),
                        const SizedBox(height: 20,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseStandView()));
                          },
                          child: Container(
                           height: MediaQuery.of(context).size.height/15,
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
