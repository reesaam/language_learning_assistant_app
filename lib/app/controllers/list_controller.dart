import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_learning_assistant_app/core/app_core_functions.dart';
import 'package:language_learning_assistant_app/core/elements/core_controller.dart';

class ListController extends CoreController {

  RxList<String> listItems = List<String>.empty(growable: true).obs;
  TextEditingController controllerSearch = TextEditingController();
  Rx<String> searchString = ''.obs;

  @override
  void pageInit() {}

  @override
  void onInitFunction() {}

  @override
  void onCloseFunction() {}

  searchClear() => controllerSearch.text = searchString.value = '';

  searchOnChanged(String value) {
    searchString.value = value;
    appDebugPrint('Search Value: ${searchString.value}');
    searchString.value.isEmpty
        ? null
        : listItems.value = ['Web', 'WE'];
    appDebugPrint(listItems);
    refresh();
  }
}
