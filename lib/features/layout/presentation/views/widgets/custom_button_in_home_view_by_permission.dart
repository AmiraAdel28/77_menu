import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/core/widgets/show_popup_menu.dart';

class CustomButtonInHomeViewByPermission extends StatelessWidget {
  final double width,
      height,
      paddingRight,
      paddingLeft,
      paddingBottom,
      paddingTop,
      heightContainer;
  final String text, image;

  const CustomButtonInHomeViewByPermission(
      {Key? key,
      required this.width,
      required this.height,
      required this.heightContainer,
      required this.text,
      required this.paddingBottom,
      required this.paddingRight,
      required this.paddingLeft,
      required this.paddingTop,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customShowBottomSheet(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: heightContainer,
        padding: EdgeInsets.only(
          left: paddingLeft,
          top: paddingTop,
          right: paddingRight,
          bottom: paddingBottom,
        ),
        decoration: BoxDecoration(
          color: AppColors.darkGrey,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.grey5Color,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                const Text(
                  '0',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.grey5Color,
                    fontWeight: FontWeight.w500,
                    fontSize: 80,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                Image.asset(image),
              ],
            ),
          ],
        ),
      ),
    );
  }

  PersistentBottomSheetController customShowBottomSheet(BuildContext context) {
    return showBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.blackColor),
                borderRadius: BorderRadius.circular(25),
              ),
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 100,
                        width: 45,
                        padding: const EdgeInsets.only(left: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            width: 1,
                            color: AppColors.blackColor,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "اضغط \n  هنا",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            "هذه الميزه متوفرة داخل الفئات المتقدمة من المنيو",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        const Directionality(
                          textDirection: TextDirection.ltr,
                          child: Text(
                            "THIS OPTION IS CURRENTLY UNAVAILABLE",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text(
                                "اضغط للذهاب لقائمة الأسعار",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 12),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
