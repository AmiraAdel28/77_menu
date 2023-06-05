import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/colors.dart';

class AllowModification extends StatefulWidget {

  @override
  State<AllowModification> createState() => _AllowModificationState();
}

class _AllowModificationState extends State<AllowModification> {
int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
     Stack(
       children: [
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
           child: SingleChildScrollView(
             child: Column(
               children: [
                 Container(
                   height: MediaQuery.of(context).size.height/4,
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     color: AppColors.blackColor,
                   ),
                   child: Column(
                     children: [
                       SizedBox(height: 40,),
                       Container(
                         height: MediaQuery.of(context).size.height/13,
                         width: MediaQuery.of(context).size.width/1.5,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(15),
                             border: Border.all(
                                 width: 1,
                                 color: AppColors.whitColor
                             )
                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 2,right: 15),
                           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               IconButton(onPressed: (){}, icon: Image.asset(
                                   "assets/images/notification.png"
                               )),
                               Text("ترتيب المنتجات",style: TextStyle(
                                   fontSize: 20,
                                   color: AppColors.whitColor,
                                   fontWeight: FontWeight.w700
                               ),)
                             ],
                           ),
                         ),
                       ),
                    SizedBox(height: 20,),
                       Text("الرجاء اختيار الصنف الذي تود ترتيب المنتاجات بداخله",
                         style: TextStyle(
                             fontSize: 9,
                             color: AppColors.yellowColor
                         ),
                       )
                     ],
                   ),
                 ),
                 SizedBox(height: 50,),
                 Text("تعديل المنتجات يتم عن طريق الضغط المطول والسحب لأعلي او لاسفل",
                   style: TextStyle(
                       fontSize: 9,
                     color: Colors.black
                   ),
                 ),
                 SizedBox(height: 25,),
                 Container(
                   width: MediaQuery.of(context).size.width/1.2,
                   height: MediaQuery.of(context).size.height/15,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50),
                     border: Border.all(
                       width: 0.6,
                       color: Colors.black,
                     )
                   ),
                   child: Center(
                     child: Text("منتج واحد",style: TextStyle(
                       fontSize: 12
                     ),),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Container(
                   width: MediaQuery.of(context).size.width/1.2,
                   height: MediaQuery.of(context).size.height/15,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       border: Border.all(
                         width:0.6,
                         color: Colors.black,
                       )
                   ),
                   child: Center(
                     child: Text("منتج واحد",style: TextStyle(
                         fontSize: 12
                     ),),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Container(
                   width: MediaQuery.of(context).size.width/1.2,
                   height: MediaQuery.of(context).size.height/15,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       border: Border.all(
                         width: 0.6,
                         color: Colors.black,
                       )
                   ),
                   child: Center(
                     child: Text("منتج واحد",style: TextStyle(
                         fontSize: 12
                     ),),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Container(
                   width: MediaQuery.of(context).size.width/1.2,
                   height: MediaQuery.of(context).size.height/15,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       border: Border.all(
                         width: 0.6,
                         color: Colors.black,
                       )
                   ),
                   child: Center(
                     child: Text("منتج واحد",style: TextStyle(
                         fontSize: 12
                     ),),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Container(
                   width: MediaQuery.of(context).size.width/1.2,
                   height: MediaQuery.of(context).size.height/15,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       border: Border.all(
                         width: 0.6,
                         color: Colors.black,
                       )
                   ),
                   child: Center(
                     child: Text("منتج واحد",style: TextStyle(
                         fontSize: 12
                     ),),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Container(
                   width: MediaQuery.of(context).size.width/1.2,
                   height: MediaQuery.of(context).size.height/15,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       border: Border.all(
                         width: 0.6,
                         color: Colors.black,
                       )
                   ),
                   child: Center(
                     child: Text("منتج واحد",style: TextStyle(
                         fontSize: 12
                     ),),
                   ),
                 ),
                 SizedBox(height: 10,),
                 index==0?
                 GestureDetector(
                   onTap: (){
                 setState(() {
                   index=1;
                 });
                   },
                   child: Container(
                     height: MediaQuery.of(context).size.height/13,
                     width: MediaQuery.of(context).size.width/2.8,
                     decoration: BoxDecoration(
                       color: Color(0xFFBFFFE5),
                       borderRadius: BorderRadius.circular(50),
                       border: Border.all(
                         width: 1,
                         color: Colors.black,
                       )
                     ),
                     child: Center(
                       child: Text(
                         "السماج بالتعديل",
                         style: TextStyle(
                           fontSize: 13,
                           color: Colors.black
                         ),
                       ),
                     ),
                   ),
                 ):
                 GestureDetector(
                   onTap: (){
                setState(() {

                  index=0;
                });
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>NotAllowModification()));
                   },
                   child: Container(
                     height: MediaQuery.of(context).size.height/13,
                     width: MediaQuery.of(context).size.width/2,
                     decoration: BoxDecoration(
                         color: Color(0xffFF6E6E),
                         borderRadius: BorderRadius.circular(50),
                         border: Border.all(
                           width: 1,
                           color: Colors.black,
                         )
                     ),
                     child: Center(
                       child: Text(
                         "السماج بالتعديل",
                         style: TextStyle(
                             fontSize: 13,
                             color: Colors.black
                         ),
                       ),
                     ),
                   ),
                 )



               ],
             ),
           ),
         ),

         Padding(
           padding: const EdgeInsets.only(top: 150,left: 50,right: 50),
           child: Container(
             decoration: BoxDecoration(
                 color: Colors.white,
               border: Border.all(
                 width: 1,
                 color: AppColors.blackColor
               ),
               borderRadius: BorderRadius.circular(15)
             ),
             height:MediaQuery.of(context).size.height/10,
             child: Row(mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text("اختر الصنف",style: TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.w500,
                   color: AppColors.grey5Color
                 ),),
                 SizedBox(width: 18,),
                 Icon(Icons.keyboard_arrow_down_outlined,size: 50,color: AppColors.grey5Color,)
               ],
             ),
           ),
         ),

       ],
     )
    );
  }
}
