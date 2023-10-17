import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_learning_assistant_app/core/app_core_functions.dart';
import 'package:language_learning_assistant_app/core/elements/core_controller.dart';

class ListController extends CoreController {

  RxList<String>? listItems = <String>[].obs;
  TextEditingController controllerSearch = TextEditingController();

  @override
  void dataInit() {
    // clearAppData();
  }

  @override
  void pageInit() {}

  @override
  void onInitFunction() {}

  @override
  void onReadyFunction() {}

  @override
  void onCloseFunction() {
    saveAppData();
  }

  searchClear() {}

  searchOnChanged(String value) {}
}