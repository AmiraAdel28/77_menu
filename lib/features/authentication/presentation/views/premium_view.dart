import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/core/utils/styles.dart';
import 'package:menu_app/features/authentication/presentation/views/advanced_view.dart';
import 'package:menu_app/features/authentication/presentation/views/payment.dart';
import 'package:menu_app/features/authentication/presentation/views/standard_view.dart';
import 'package:menu_app/features/authentication/presentation/views/widget/customMenuSpecification2.dart';
import 'package:menu_app/features/authentication/presentation/views/widget/custom_container_type_menyu.dart';
import 'package:menu_app/features/authentication/presentation/views/widget/custom_menu_specifications.dart';

class PremiumView extends StatefulWidget {
  const PremiumView({Key? key}) : super(key: key);

  @override
  State<PremiumView> createState() => _LoginViewState();
}
class _LoginViewState extends State<PremiumView> {
  int index=2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: const Color(0xff171717),
        body: Stack(
          children: [
            Row(
              children: [
                Image.asset("assets/images/BB2.png", width: 360),
              ],
            ),
            Container(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 60, left: 10, right: 10, bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                index=0;
                              });

                            },
                            child: CustomContainerTypeMenu(
                                "assets/images/standard.png",
                                "Standard",
                                AppColors.whitColor,
                                AppColors.blackColor),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                index=1;
                              });

                            },
                            child: CustomContainerTypeMenu(
                                "assets/images/advanced.png",
                                "Advanced",
                                AppColors.whitColor,
                                AppColors.blackColor),
                          ),
                          GestureDetector(
                            onTap: (){
                             setState(() {
                               index=2;
                             });
                            },
                            child: CustomContainerTypeMenu(
                                "assets/images/premium.png",
                                "Premium",
                                AppColors.blackColor,
                                AppColors.whitColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  width: 1, color: AppColors.blackColor)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/Rectangle2.png",
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "شيقل / سنوي",
                                    style: Styles.textStyle14,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  index==0? Text(
                                    "100",
                                    style: Styles.textStyle30,
                                  ):index==1?
                                  Text(
                                    "300",
                                    style: Styles.textStyle30,
                                  ):
                                  Text(
                                    "900",
                                    style: Styles.textStyle30,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "مواصفات المنيو",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 215, right: 30),
                        child: Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                      ),
                      index==0?
                      Column(
                        children: [
                          CustomMenuSpecification("نسخه منيو الكنروني"),
                          CustomMenuSpecification("امكانية تغيير الصورة الرئيسية"),
                          CustomMenuSpecification("امكانية التعديل علي الأسعار"),
                          CustomMenuSpecification("امكانية التعديل علي المنتجات"),
                          CustomMenuSpecification("10 ستندات من النوع 77 مجانا"),
                          CustomMenuSpecification(
                              "امكانية تغيير كلمة المرور الخاصه بالنظام"),
                        ],
                      ):
                      index==1?
                      Column(
                        children: [
                          CustomMenuSpecification("نسخه منيو الكنروني"),
                          CustomMenuSpecification("امكانية تغيير الصورة الرئيسية"),
                          CustomMenuSpecification("امكانية التعديل علي الأسعار"),
                          CustomMenuSpecification("امكانية التعديل علي المنتجات"),
                          CustomMenuSpecification("10 ستندات من النوع 77 مجانا"),
                          CustomMenuSpecification(
                              "امكانية تغيير كلمة المرور الخاصه بالنظام"),
                          CustomMenuSpecification("امكانية التعديل علي الألوان والخطوط والخلفيات"),
                          CustomMenuSpecification("امكانية اضافة مواقع السوشيال ميديا داخل النظام"),
                          CustomMenuSpecification("ميزة تقييم المطعم"),
                          CustomMenuSpecification("اعلانات اقل من النظام المجاني"),
                          CustomMenuSpecification("دعم فني متوفر 24 ساعه"),
                          CustomMenuSpecification2("اضافة مجموعةالعاب اضافية للمنيو", "يتم تغييرها من قبل الشركه"),

                        ],
                      ):
                      Column(
                        children: [
                          CustomMenuSpecification("نسخه منيو الكنروني"),
                          CustomMenuSpecification("امكانية تغيير الصورة الرئيسية"),
                          CustomMenuSpecification("امكانية التعديل علي الأسعار"),
                          CustomMenuSpecification("امكانية التعديل علي المنتجات"),
                          CustomMenuSpecification("10 ستندات من النوع 77 مجانا"),
                          CustomMenuSpecification(
                              "امكانية تغيير كلمة المرور الخاصه بالنظام"),
                          CustomMenuSpecification("امكانية التعديل علي الألوان والخطوط والخلفيات"),
                          CustomMenuSpecification("امكانية اضافة مواقع السوشيال ميديا داخل النظام"),
                          CustomMenuSpecification("ميزة تقييم المطعم"),
                          CustomMenuSpecification("اعلانات اقل من النظام المجاني"),
                          CustomMenuSpecification("دعم فني متوفر 24 ساعه"),
                          CustomMenuSpecification2("اضافة مجموعةالعاب اضافية للمنيو", "يتم تغييرها من قبل الشركه"),
                        ],
                      ),
                      Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 7),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      children: [
                        Image.asset("assets/images/checkmark.png"),
                        SizedBox(width: 15,),
                        Text("امكانية اضافة خلفيات مزخرفة\n وخلفيات بشعار المطعم"),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
                      CustomMenuSpecification2("اضافة ميزة اللغات 3 لغات الي النظام", "تضاف من قبل العمل"),
                      CustomMenuSpecification("ميزة طلب النادل"),
                      CustomMenuSpecification2("ميزة طلب الزبون للطعام\n من دون الحاجة لنادل","يستطيع الزبون تفعيلها وقت الحاجه "),
                      CustomMenuSpecification("اضافة زبون لكل منتج"),






                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                        child: Divider(
                          thickness: 2.5,
                          color: AppColors.blackColor,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentView()));

                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 1.7,
                          decoration: BoxDecoration(
                            color: Color(0xff00AAE8),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                            child: Text("شراء نسخه",
                                style: TextStyle(
                                    fontSize: 22, color: AppColors.blackColor)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
