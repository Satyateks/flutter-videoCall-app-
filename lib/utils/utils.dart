import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:vcall_chat/res/colors/app_color.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      gravity: ToastGravity.BOTTOM,
      textColor: AppColor.redColor,
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  static snackBar(String title, String message) {
    Get.snackbar(title, message);
  }
}

const String dateTimeFormatPattern = 'dd/MM/yyyy';

extension DateTimeExtension on DateTime {
  /// Return a string representing [date] formatted according to our locale
  String format([
    String pattern = dateTimeFormatPattern,
    String? locale,
  ]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }
}
