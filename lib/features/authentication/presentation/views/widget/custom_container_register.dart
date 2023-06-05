import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_app/core/utils/colors.dart';

class CustomContainerRegister extends StatelessWidget {
  String titleText;
  String hintText;
  CustomContainerRegister(this.titleText,this.hintText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Container(
        height: MediaQuery.of(context).size.height/7,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 0.5,
            color:  Color(0xff707070)
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Text(titleText,
              style: TextStyle(
                fontSize: 15,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right:10,
                top: 15
              ),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                    // controller: password,
                    decoration: InputDecoration(
                        filled: true,
                        contentPadding: const EdgeInsets.fromLTRB(
                            20.0, 10.0, 20.0, 10.0),
                        hintText: hintText,
                        hintStyle: const TextStyle(
                            color: Color(0XFFB1B1B1), fontSize: 12),
                        fillColor: const Color(0xffC9C9C9),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0.5,
                            color: Color(0xff707070),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: Colors.red),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xffC9C9C9)),
                          borderRadius: BorderRadius.circular(15),
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
