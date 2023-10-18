import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/controllers/about_controller.dart';
import 'package:language_learning_assistant_app/app/controllers/words_controller.dart';
import 'package:language_learning_assistant_app/app/controllers/homepage_controller.dart';
import 'package:language_learning_assistant_app/app/controllers/list_controller.dart';
import 'package:language_learning_assistant_app/app/controllers/saved_controller.dart';
import 'package:language_learning_assistant_app/app/controllers/settings_controller.dart';
import 'package:language_learning_assistant_app/app/controllers/splash_screen_controller.dart';
import 'package:language_learning_assistant_app/app/controllers/update_controller.dart';
import 'package:language_learning_assistant_app/app/controllers/verbs_controller.dart';


class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(() => SplashScreenController(), fenix: true);
    Get.lazyPut<HomePageController>(() => HomePageController(), fenix: true);
    Get.lazyPut<ListController>(() => ListController(), fenix: true);
    Get.lazyPut<WordsController>(() => WordsController(), fenix: true);
    Get.lazyPut<VerbsController>(() => VerbsController(), fenix: true);
    Get.lazyPut<SavedController>(() => SavedController(), fenix: true);
    Get.lazyPut<SettingsController>(() => SettingsController(), fenix: true);
    Get.lazyPut<AboutController>(() => AboutController(), fenix: true);
    Get.lazyPut<UpdateController>(() => UpdateController(), fenix: true);
  }
}