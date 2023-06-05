import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:menu_app/core/utils/colors.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

showShowSnackBar(String msg) => Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.whitColor,
      textColor: AppColors.whitColor,
      fontSize: 16.0,
    );

Future success(BuildContext context) {
  return QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      confirmBtnColor: AppColors.whitColor,
      title: 'Success',
      text: 'Welcome at Home Screen',
      textColor: AppColors.whitColor,
      titleColor: AppColors.blackColor,
      confirmBtnText: 'Ok',
      cancelBtnText: 'Cancel',
      borderRadius: 18,
      onConfirmBtnTap: () {
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, 'bottom_nav_screen');
      });
}

Future warning(BuildContext context) {
  return QuickAlert.show(
      context: context,
      type: QuickAlertType.warning,
      confirmBtnColor: const Color(0xFF8dff6c),
      title: '',
      text: 'هل أنت متأكد من حذف العنصؤ ؟',
      textColor: AppColors.blackColor,
      titleColor: AppColors.blackColor,
      confirmBtnText: 'تأكيد الجذف',
      cancelBtnText: 'Cancel',
      borderRadius: 18,
      onConfirmBtnTap: () {
        Navigator.pop(context);
      });
}
