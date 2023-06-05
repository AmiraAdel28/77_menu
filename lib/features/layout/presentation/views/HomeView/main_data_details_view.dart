import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MainDataDetailsView extends StatelessWidget {
  const MainDataDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: const MenuScreenInMainDataDetailsView(),
      mainScreen: const MainScreenInMainDataDetailsView(),
      borderRadius: 60.0,
      menuBackgroundColor: AppColors.blackColor,
      angle: 0.0,
      slideWidth: MediaQuery.of(context).size.width * 0.70,
      mainScreenScale: 0.005,
    );
  }
}

class MainScreenInMainDataDetailsView extends StatelessWidget {
  const MainScreenInMainDataDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Stack(
        children: [
          Image.asset("assets/images/BB.png"),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                    color: AppColors.blackColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(18),
                      bottomLeft: Radius.circular(18),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 8.8,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/logo_profile.png",
                        width: 75,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'عدد دخول الزبائن للمنيو',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 2.0,
                  animation: true,
                  percent: 0.80,
                  center: const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "4500",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 38,
                      ),
                    ),
                  ),
                  footer: Container(),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.black,
                ),
                const SizedBox(height: 45),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '5000',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '10000',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'عرض الجائزة',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'عرض الجائز',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 23),
                        child: Image.asset("assets/images/Rectangle.png"),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height / 14,
                            decoration: const BoxDecoration(
                                color: AppColors.navyColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                )),
                            child: Image.asset(
                              AppAssets.Logo3,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            height: MediaQuery.of(context).size.height / 14,
                            decoration: const BoxDecoration(
                                color: AppColors.blackColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.photo_camera_back,
                                  color: Colors.grey[300],
                                ),
                                Text(
                                  'تغيير الشغار',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height / 18,
                            decoration: const BoxDecoration(
                              color: AppColors.navyColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            height: MediaQuery.of(context).size.height / 18,
                            decoration: const BoxDecoration(
                                color: AppColors.blackColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18),
                                  child: Text(
                                    'لون الخلفية',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[300],
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height / 18,
                            decoration: const BoxDecoration(
                              color: AppColors.navyColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            height: MediaQuery.of(context).size.height / 18,
                            decoration: const BoxDecoration(
                                color: AppColors.blackColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18),
                                  child: Text(
                                    'لون النص',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[300],
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(AppAssets.smallDivider),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'اضافة صورة لتظهر خلف الشعار',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 80, right: 80, top: 25, bottom: 25),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: AppColors.blackColor,
                              width: 0.5,
                            )),
                        child: Image.asset(AppAssets.logoName),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'يمكنك اضافة صورة بالضغط علي المربع',
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(AppAssets.smallDivider),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'اختيار التصميم المناسب لعرض الصور الرئيسية',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 0.6,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                child: Image.asset(AppAssets.eat1),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 0.6,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 0.6,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 0.6,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 0.6,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 25),
                // const Spacer(),
                Image.asset(
                  AppAssets.Logo,
                  color: AppColors.blackColor,
                  height: 140,
                ),
              ],
            ),
          ),
          // Positioned(
          //     bottom: 0,
          //     child: Image.asset(AppAssets.BB, color: AppColors.whitColor)),
        ],
      ),
    );
  }
}

class MenuScreenInMainDataDetailsView extends StatelessWidget {
  const MenuScreenInMainDataDetailsView({Key? key}) : super(key: key);

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
