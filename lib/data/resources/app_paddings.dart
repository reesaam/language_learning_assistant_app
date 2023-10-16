import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPaddings {
  ///General
  static EdgeInsets get zero => const EdgeInsets.all(0);
  static EdgeInsets get pages => const EdgeInsets.all(10);

  ///AppBar
  static EdgeInsets get appBarActions => const EdgeInsets.only(right: 10);

  ///Modals
  static EdgeInsets get generalBottomModal => EdgeInsets.fromLTRB(20, 0, 20, Get.context!.mediaQuery.viewInsets.bottom);
  static EdgeInsets get generalAlertDialog => const EdgeInsets.all(20);
}