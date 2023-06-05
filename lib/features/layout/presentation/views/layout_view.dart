import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/features/layout/presentation/views/HomeView/home_view.dart';
import 'package:menu_app/features/layout/presentation/views/profile_view.dart';
import 'package:menu_app/features/layout/presentation/views/shopping_view.dart';

class HomeLayoutScreen extends StatefulWidget {
  HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  List<Widget> tabs = [
    HomeView(),
    const ShoppingView(),
    ProfileView(),
  ];

  List<String> listOfStringTabs = [
    'الرئيسية',
    'التسوق',
    'حسابي الشخصي',
  ];

  List<String> listOfImagesTabs = [
    AppAssets.homeIcon,
    AppAssets.shoppingIcon,
    AppAssets.profileIcon,
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    // double displayHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.whitColor,
      body: tabs[currentIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          // padding: const EdgeInsets.all(12),
          margin: EdgeInsets.all(10),
          height: displayWidth * 0.155,
          decoration: BoxDecoration(
            color: AppColors.blackColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(25)),
          ),
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                    HapticFeedback.lightImpact();
                  });
                },
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      // width: index == currentIndex
                      //     ? displayWidth * 0.32
                      //     : displayWidth * 0.18,
                      width: 50,
                      alignment: Alignment.center,
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        // height: index == currentIndex ? displayWidth * 0.12 : 0,
                        height: 10,
                        // width: index == currentIndex
                        //     ? displayWidth * 0.32
                        //     : displayWidth * 0,
                        width: 20,
                        decoration: BoxDecoration(
                          color: index == currentIndex
                              ? AppColors.blackColor.withOpacity(1)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      // width: index == currentIndex ? displayWidth * 0.1 : 0.18,
                      width: displayWidth * 0.25,
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          // Row(
                          //   children: [
                          //     AnimatedContainer(
                          //       duration: Duration(seconds: 1),
                          //       curve: Curves.fastLinearToSlowEaseIn,
                          //       width: index == currentIndex
                          //           ? displayWidth * 0.13
                          //           : 0,
                          //     ),
                          //     AnimatedOpacity(
                          //       opacity: index == currentIndex ? 1 : 0,
                          //       duration: Duration(seconds: 1),
                          //       curve: Curves.fastLinearToSlowEaseIn,
                          //       child: Text(
                          //         index == currentIndex
                          //             ? listOfStringTabs[index]
                          //             : '',
                          //         style: TextStyle(
                          //           color: AppColors.whitColor,
                          //           fontWeight: FontWeight.w600,
                          //           fontSize: 15,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AnimatedContainer(
                                duration: Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                // width: index == currentIndex
                                //     ? displayWidth * 0.03
                                //     : 20,
                                width: 20,
                              ),
                              Image.asset(
                                listOfImagesTabs[index],
                                // width:  displayWidth *0.76,
                                width: 40,
                                color: index == currentIndex ? AppColors.yellowColor : Colors.grey[400],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
