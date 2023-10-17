import 'dart:async';

import 'package:get/get.dart';
import 'package:language_learning_assistant_app/core/elements/core_controller.dart';
import 'package:language_learning_assistant_app/data/extensions/data_types_extensions/extension_date_time.dart';
import 'package:language_learning_assistant_app/data/info/app_page_details.dart';

class HomePageController extends CoreController {

  Rx<DateTime> mainDateTime = DateTime.now().obs;
  Rx<String> mainTime = ''.obs;
  Rx<String> mainDate = ''.obs;

  @override
  void dataInit() {
    // clearAppData();
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.homepage;
    mainTime.value = mainDateTime.value.toDateFormat;
    mainDate.value = mainDateTime.value.toTimeFormatWithSeconds;
  }

  @override
  void onInitFunction() {
    timeUpdate();
  }

  void timeUpdate() => Timer.periodic(const Duration(seconds: 1), (timer) {
    mainDateTime.value = DateTime.now();
    mainTime.value = mainDateTime.value.toDateFormat;
    mainDate.value = mainDateTime.value.toTimeFormatWithSeconds;
  });
}
