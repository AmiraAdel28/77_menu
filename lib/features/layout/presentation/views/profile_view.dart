import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/features/layout/presentation/views/widgets/custom_card_translate.dart';
import 'package:menu_app/features/layout/presentation/views/widgets/custom_change_password.dart';
import 'package:menu_app/features/layout/presentation/views/widgets/custom_data_user.dart';
import 'package:menu_app/features/layout/presentation/views/widgets/custom_theme_contanier.dart';
import 'package:menu_app/features/layout/presentation/views/widgets/custom_top_contanier.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: const MenuScreenInProfile(),
      mainScreen: const MainScreenInProfile(),
      borderRadius: 60.0,
      menuBackgroundColor: AppColors.blackColor,
      angle: 0.0,
      slideWidth: MediaQuery.of(context).size.width * 0.70,
      mainScreenScale: 0.005,
    );
  }
}

class MainScreenInProfile extends StatelessWidget {
  const MainScreenInProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whitColor,
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 60),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AppBar(
              elevation: 0,
              backgroundColor: AppColors.blackColor,
              leading: Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: IconButton(
                      icon: Image.asset("assets/images/notifications.png"),
                      onPressed: () {
                        ZoomDrawer.of(context)!.toggle();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        body: Stack(children: [
          Image.asset("assets/images/BB.png"),
          SingleChildScrollView(
            child: Column(
              children: [
                CustomTopContanier(),
                CustomDataUser(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 23),
                  child: Image.asset("assets/images/Rectangle.png"),
                ),
                CustomCardTranslate(),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text("اختر وضعية الرؤيه المناسبه",),
                    ),
                  ],
                ),
                CustomThemeContanier(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 23),
                  child: Image.asset("assets/images/Rectangle.png"),
                ),
                CustomChangePassword()
              ],
            ),
          ),


        ]),
      ),
    );
  }
}

class MenuScreenInProfile extends StatelessWidget {
  const MenuScreenInProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 45, bottom: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'الأشعارات',
                        style: TextStyle(
                          color: AppColors.whitColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: AppColors.whitColor,
                      radius: 4,
                    ),
                    title: Text(
                      'اشعار 1 اشعااااررر',
                      style: TextStyle(
                        color: AppColors.whitColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 15,
                    top: 4,
                    bottom: 10,
                  ),
                  child: Divider(
                    height: 1,
                    color: AppColors.grey3Color,
                    thickness: 1,
                  ),
                ),
                const Spacer(),
                Image.asset(
                  AppAssets.Logo,
                  color: AppColors.whitColor,
                  height: 140,
                )
              ],
            ),
            Positioned(
                bottom: 0,
                child: Image.asset(AppAssets.BB, color: AppColors.whitColor)),
          ],
        ),
      ),
    );
  }
}
