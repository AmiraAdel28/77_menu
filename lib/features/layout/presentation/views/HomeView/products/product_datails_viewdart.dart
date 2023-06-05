import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:menu_app/core/utils/assets.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:menu_app/core/widgets/show_popup_menu.dart';
import 'package:menu_app/features/layout/presentation/views/HomeView/edit_in_photo_screen.dart';
import 'package:menu_app/features/layout/presentation/views/HomeView/products/add_new_product.dart';

import 'allow_modification..dart';
import 'change_product.dart';

class ProductsDetailsView1 extends StatefulWidget {
  const ProductsDetailsView1({Key? key}) : super(key: key);

  @override
  State<ProductsDetailsView1> createState() => _CategoriesDetailsViewState();
}

class _CategoriesDetailsViewState extends State<ProductsDetailsView1> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: const MenuScreenInCategoriesDetailsView(),
      mainScreen: const MainScreenInCategoriesDetailsView(),
      borderRadius: 60.0,
      menuBackgroundColor: AppColors.blackColor,
      angle: 0.0,
      slideWidth: MediaQuery.of(context).size.width * 0.70,
      mainScreenScale: 0.005,
    );
  }
}

class MainScreenInCategoriesDetailsView extends StatefulWidget {
  const MainScreenInCategoriesDetailsView({Key? key}) : super(key: key);

  @override
  State<MainScreenInCategoriesDetailsView> createState() =>
      _MainScreenInCategoriesDetailsViewState();
}

class _MainScreenInCategoriesDetailsViewState
    extends State<MainScreenInCategoriesDetailsView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);

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
            centerTitle: true,
            title: const Padding(
              padding: EdgeInsets.only(top: 45),
              child: Text(
                'المنتجات',
                style: TextStyle(
                  color: AppColors.whitColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/BB.png",
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
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
                      height: MediaQuery.of(context).size.height / 9,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Positioned(
                      top: 40,
                      right: 40,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundColor: AppColors.whitColor,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.black,
                          child: Center(
                              child: Text(
                                "100",
                                style: TextStyle(color: AppColors.whitColor),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),

                 SizedBox(height: 25),
                Row(
                  children: [
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AllowModification()));

                    },
                      child: Container(
                        margin: const EdgeInsets.only(left: 42),
                        width: MediaQuery.of(context).size.width * 0.37,
                        height: MediaQuery.of(context).size.height / 14,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(
                            color: AppColors.blackColor,
                            width: 0.6,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(18),
                            bottomLeft: Radius.circular(18),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'ترتيب المنتجات',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5.6),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewProductView()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 42),
                        width: MediaQuery.of(context).size.width * 0.37,
                        height: MediaQuery.of(context).size.height / 14,
                        decoration: BoxDecoration(
                          color: Color(0xff48E1FF),
                          border: Border.all(
                            color: AppColors.blackColor,
                            width: 0.6,
                          ),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(18),
                            bottomRight: Radius.circular(18),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'اضافة',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'بحث عن عنصر',
                          prefixIcon:Image.asset("assets/images/search.png",width: 10,) ,
                          // Set border for enabled state (default)
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // Set border for focused state
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    height: MediaQuery.of(context).size.height/18,
                    margin: EdgeInsets.symmetric(horizontal: 20,),
                    decoration: const BoxDecoration(
                      color: AppColors.grey6Color,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                        controller: tabController,
                        labelColor: AppColors.blackColor,
                        unselectedLabelColor: AppColors.whitColor,
                        labelPadding:
                            const EdgeInsets.only(left: 20, right: 20),
                        isScrollable: true,
                        // indicator: ,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 6,
                        indicatorColor: AppColors.blackColor,
                        tabs: const [
                          Tab(text: 'الكل'),
                          Tab(text: 'وجبات'),
                          Tab(text: 'وجبات'),
                          Tab(text: 'وجبات'),
                        ],
                      ),
                    ),
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height / 1.9,
                    child: TabBarView(
                      controller: tabController,
                      children: const [
                        AllOfProduct(),
                        Text('Hi'),
                        Text('Hi'),
                        Text('Hi'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppAssets.regtangle, width: 250),
                  ],
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

        ],
      ),
    );
  }
}

class MenuScreenInCategoriesDetailsView extends StatelessWidget {
  const MenuScreenInCategoriesDetailsView({Key? key}) : super(key: key);

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

/// All Menus
class AllOfProduct extends StatelessWidget {
  const AllOfProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.height / 14,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 44,
                    right: MediaQuery.of(context).size.width * 0.05),
                decoration: const BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: const Text(
                  'ستيك لحمة',
                  style: TextStyle(
                    color: AppColors.whitColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height / 14,
                decoration: const BoxDecoration(

                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Image.asset("assets/images/no img.png",width: double.infinity,),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeProductView()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFFe7ffe1),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: const BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                    ),
                    child: const Text(
                      'تعديل',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  padding: EdgeInsets.only(right: 15),
                  child: ElevatedButton(
                    onPressed: () {
                      warning(context);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFffd1d1)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: const BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                    ),
                    child: const Text(
                      'حذف',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.height / 14,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 44,
                    right: MediaQuery.of(context).size.width * 0.05),
                decoration: const BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: const Text(
                  'ستيك لحمة',
                  style: TextStyle(
                    color: AppColors.whitColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height / 14,
                decoration: const BoxDecoration(

                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Image.asset("assets/images/no img.png",width: double.infinity,),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFe7ffe1)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: const BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                    ),
                    child: const Text(
                      'تعديل',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  padding: EdgeInsets.only(right: 15),
                  child: ElevatedButton(
                    onPressed: () {
                      warning(context);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFffd1d1)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: const BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                    ),
                    child: const Text(
                      'حذف',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.height / 14,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 44,
                    right: MediaQuery.of(context).size.width * 0.05),
                decoration: const BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: const Text(
                  'ستيك لحمة',
                  style: TextStyle(
                    color: AppColors.whitColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height / 14,
                decoration: const BoxDecoration(

                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Image.asset("assets/images/no img.png",width: double.infinity,),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditInPhotoScreen(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFe7ffe1)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: const BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                    ),
                    child: const Text(
                      'تعديل',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  padding: EdgeInsets.only(right: 15),
                  child: ElevatedButton(
                    onPressed: () {
                      warning(context);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFffd1d1)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: const BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                    ),
                    child: const Text(
                      'حذف',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
