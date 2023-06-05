import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/core/utils/style.dart';

class CustomChangePassword extends StatelessWidget {
  const CustomChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 20,
            color: AppColors.blackColor,
            child: const Center(
              child: Text(
                "نغيير كلمة المرور",
                style: TextStyle(color: AppColors.whitColor),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppColors.grey2Color.withOpacity(0.6),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            ),
            child: const Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "كلمة المرور الحالية",
                    style: Styles.textStyle20,
                  ),
                )),
          ),
          const SizedBox(
            height: 7,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width,
            color: AppColors.grey2Color.withOpacity(0.6),
            child: const Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "كلمة المرور الجديدة",
                    style: Styles.textStyle20,
                  ),
                )),
          ),
          const SizedBox(
            height: 7,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppColors.grey2Color.withOpacity(0.6),
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
            ),
            child: const Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "تأكيد كلمة المرور",
                    style: Styles.textStyle20,
                  ),
                )),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: AppColors.blackColor),
                ),
                child: const Center(
                  child: Text("حفظ"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Image.asset(
            "assets/images/Logo.png",
            height: 140,
          )
        ],
      ),
    );
  }
}
