import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';

class TechnicalSupportView extends StatelessWidget {
  const TechnicalSupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: Container(

          child: AppBar(
            elevation: 0,
            backgroundColor: AppColors.blackColor,
            leading: Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: IconButton(
                    icon: Image.asset('assets/images/notifications.png'),
                    onPressed: () {
                      ZoomDrawer.of(context)!.toggle();
                    },
                    // tooltip: MaterialLocalizations.of(context).okButtonLabel,
                  ),
                );
              },
            ),
            // centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      '، مرحبا ',
                      style: TextStyle(
                        color: AppColors.grey2Color,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'مجدي حمدان حامد',
                      style: TextStyle(
                        color: AppColors.whitColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              Image.asset(AppAssets.Logo2, width: 45),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
      body:Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height/1.3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft:  Radius.circular(50)
                    )
                  ),

                    child: Image.asset("assets/images/bg_support.png",fit: BoxFit.fill,)),
              ),
               SizedBox(height: 20,),
               Container(
                 height: MediaQuery.of(context).size.height/13,
                 width: MediaQuery.of(context).size.width/1.2,
                 decoration: BoxDecoration(
                   color: AppColors.grey6Color,
                   borderRadius: BorderRadius.circular(50)
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundColor: Colors.black,
                         child: Image.asset("assets/images/send.png"),
                       ),
                       Text("تواصل مع الدعم الفني",style: TextStyle(
                         fontSize: 10,
                         color: AppColors.greyColor
                       ),)
                     ],
                   ),
                 ),

               )],
          ),
          SingleChildScrollView(
            child:
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: AppColors.blackColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 25,),
                      Image.asset("assets/images/Rectangle_yellow.png"),
                      SizedBox(height: 15,),
                      Text("سيقوم الدعم الفني بالرد علي رسالتك خلال دقائق",
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColors.yellowColor
                      ),
                      ),


                    ],
                  )
                ),

              ],
            ),
          ),

        ],
      )
    ));
  }
}
