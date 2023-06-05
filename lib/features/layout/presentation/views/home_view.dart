// import 'package:flutter/material.dart';
// import 'package:menu_app/core/utils/assets.dart';
// import 'package:menu_app/core/utils/colors.dart';
// import 'package:menu_app/features/layout/presentation/views/widgets/custom_button_in_home_view.dart';
// import 'package:menu_app/features/layout/presentation/views/widgets/custom_button_in_home_view_by_permission.dart';
// import 'package:menu_app/features/layout/presentation/views/widgets/custom_button_in_home_view_by_permission2.dart';
//
// class HomeView extends StatelessWidget {
//   TextEditingController searchController = TextEditingController();
//
//   HomeView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.whitColor,
//       drawer: SafeArea(
//         child: Directionality(
//           textDirection: TextDirection.rtl,
//           child: Drawer(
//             backgroundColor: AppColors.blackColor,
//             child: Stack(
//               children: [
//                 Column(
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.only(top: 20, bottom: 35),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: const [
//                           Text(
//                             'الأشعارات',
//                             style: TextStyle(
//                               color: AppColors.whitColor,
//                               fontSize: 22,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(
//                       child: ListTile(
//                         leading: CircleAvatar(
//                           backgroundColor: AppColors.whitColor,
//                           radius: 4,
//                         ),
//                         title: Text(
//                           'اشعار 1 اشعاااااااااااااااااررر',
//                           style: TextStyle(
//                             color: AppColors.whitColor,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Padding(
//                       padding: const EdgeInsets.only(left: 30, right: 15, top: 4, bottom: 10),
//                       child: Divider(
//                         height: 1,
//                         color: AppColors.grey3Color,
//                         thickness: 1,
//                       ),
//                     ),
//                     const Spacer(),
//                     Image.asset(
//                       AppAssets.Logo,
//                       color: AppColors.whitColor,
//                       height: 140,
//                     )
//                   ],
//                 ),
//                 Positioned(
//                     bottom: 0,
//                     child: Image.asset(AppAssets.BB, color: AppColors.whitColor)),
//               ],
//             ),
//           ),
//         ),
//       ),
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: AppColors.blackColor,
//         leading: Builder(
//           builder: (BuildContext context) {
//             return Container(
//               margin: const EdgeInsets.only(left: 8),
//               child: IconButton(
//                 icon: Image.asset(AppAssets.notificationIcon),
//                 onPressed: () {
//                   Scaffold.of(context).openDrawer();
//                 },
//                 tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//               ),
//             );
//           },
//         ),
//         centerTitle: true,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: const [
//                 Text(
//                   '، مرحبا ',
//                   style: TextStyle(
//                     color: AppColors.grey2Color,
//                     fontSize: 16,
//                   ),
//                 ),
//                 Text(
//                   'مجدي حمدان حامد',
//                   style: TextStyle(
//                     color: AppColors.grey2Color,
//                     fontSize: 16,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         actions: [
//           Image.asset(AppAssets.Logo2, width: 45),
//           const SizedBox(width: 10),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Image.asset(AppAssets.bgInBody, color: AppColors.blackColor),
//             SingleChildScrollView(
//               physics: const NeverScrollableScrollPhysics(),
//               child: Column(
//                 children: [
//                   /// Search
//                   Container(
//                     width: double.infinity,
//                     height: 80,
//                     decoration: const BoxDecoration(
//                       color: AppColors.blackColor,
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(20),
//                         bottomRight: Radius.circular(20),
//                       ),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           height: MediaQuery.of(context).size.height / 16,
//                           width: MediaQuery.of(context).size.width * 0.86,
//                           padding: const EdgeInsets.only(right: 20),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(24),
//                             color: AppColors.grey3Color,
//                           ),
//                           child: TextFormField(
//                             textAlign: TextAlign.end,
//                             controller: searchController,
//                             cursorColor: AppColors.blackColor.withOpacity(0.2),
//                             decoration: const InputDecoration(
//                               hintText: 'تواصل مع الدعم الفني',
//                               hintStyle: TextStyle(
//                                 color: AppColors.grey4Color,
//                                 fontSize: 15,
//                               ),
//                               border: UnderlineInputBorder(
//                                 borderSide: BorderSide.none,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//
//                   /// All
//                   Directionality(
//                     textDirection: TextDirection.rtl,
//                     child: Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 28, vertical: 25),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 'بيانات المنيو',
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   color: AppColors.blackColor,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               const SizedBox(height: 20),
//                               CustomButtonInHomeView(
//                                 width: MediaQuery.of(context).size.width * 0.8,
//                                 height: MediaQuery.of(context).size.height / 14,
//                                 text: 'البيانات الرئيسية',
//                                 paddingTop: 15,
//                                 paddingBottom: 15,
//                                 paddingRight: 40,
//                                 paddingLeft: 40,
//                               ),
//                               const SizedBox(height: 20),
//                               Row(
//                                 children: [
//                                   Container(
//                                     width: MediaQuery.of(context).size.width *
//                                         0.37,
//                                     child: CustomButtonInHomeView(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.4,
//                                       height:
//                                           MediaQuery.of(context).size.height /
//                                               80,
//                                       text: 'الأصناف',
//                                       paddingTop: 15,
//                                       paddingBottom: 15,
//                                       paddingRight: 40,
//                                       paddingLeft: 40,
//                                     ),
//                                   ),
//                                   const SizedBox(width: 20),
//                                   Container(
//                                     width: MediaQuery.of(context).size.width *
//                                         0.37,
//                                     child: CustomButtonInHomeView(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.4,
//                                       height:
//                                           MediaQuery.of(context).size.height /
//                                               80,
//                                       text: 'المنتجات',
//                                       paddingTop: 15,
//                                       paddingBottom: 15,
//                                       paddingRight: 40,
//                                       paddingLeft: 40,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(height: 20),
//                               CustomButtonInHomeView(
//                                 width: MediaQuery.of(context).size.width * 0.8,
//                                 height: MediaQuery.of(context).size.height / 14,
//                                 text: 'عرض كما يظهر للأخرين',
//                                 paddingTop: 15,
//                                 paddingBottom: 15,
//                                 paddingRight: 40,
//                                 paddingLeft: 40,
//                               ),
//                               const SizedBox(height: 20),
//                               Row(
//                                 children: [
//                                   Image.asset(AppAssets.regtangle,
//                                       width: MediaQuery.of(context).size.width *
//                                           0.8),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//
//                   /// Must Permission
//                   Directionality(
//                     textDirection: TextDirection.rtl,
//                     child: Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 28),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 'ميزات اضافية',
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: AppColors.blackColor,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               const SizedBox(height: 20),
//                               CustomButtonInHomeViewByPermission(
//                                 width: MediaQuery.of(context).size.width * 0.8,
//                                 height: MediaQuery.of(context).size.height / 14,
//                                 heightContainer:
//                                     MediaQuery.of(context).size.height / 5.2,
//                                 text: 'الطلبات',
//                                 paddingTop: 8,
//                                 paddingBottom: 15,
//                                 paddingRight: 40,
//                                 paddingLeft: 40,
//                                 image: AppAssets.chef,
//                               ),
//                               const SizedBox(height: 20),
//                               CustomButtonInHomeViewByPermission(
//                                 width: MediaQuery.of(context).size.width * 0.8,
//                                 height: MediaQuery.of(context).size.height / 14,
//                                 heightContainer:
//                                     MediaQuery.of(context).size.height / 5.2,
//                                 text: 'طلب النادل',
//                                 paddingTop: 8,
//                                 paddingBottom: 2,
//                                 paddingRight: 40,
//                                 paddingLeft: 40,
//                                 image: AppAssets.waiter,
//                               ),
//                               const SizedBox(height: 20),
//                               CustomButtonInHomeViewByPermission2(
//                                 width: MediaQuery.of(context).size.width * 0.8,
//                                 height: MediaQuery.of(context).size.height / 10,
//                                 text: 'مواقع السوشال ميديا',
//                                 paddingBottom: 20,
//                                 paddingRight: 15,
//                                 paddingLeft: 40,
//                                 paddingTop: 20,
//                                 image: AppAssets.network,
//                               ),
//                               const SizedBox(height: 20),
//                               CustomButtonInHomeViewByPermission2(
//                                 width: MediaQuery.of(context).size.width * 0.8,
//                                 height: MediaQuery.of(context).size.height / 10,
//                                 text: 'تقييم المطعم',
//                                 paddingBottom: 20,
//                                 paddingRight: 15,
//                                 paddingLeft: 40,
//                                 paddingTop: 20,
//                                 image: AppAssets.ask,
//                               ),
//                               const SizedBox(height: 10),
//                               Row(
//                                 children: [
//                                   Image.asset(
//                                     AppAssets.Logo,
//                                     width:
//                                         MediaQuery.of(context).size.width * 0.8,
//                                     height:
//                                         MediaQuery.of(context).size.height / 5,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//                 bottom: 0,
//                 right: 0,
//                 child: Image.asset(AppAssets.BB, color: AppColors.blackColor)),
//           ],
//         ),
//       ),
//     );
//   }
// }
