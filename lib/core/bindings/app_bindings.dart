import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/controllers/homepage_controller.dart';


class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<SplashScreenController>(() => SplashScreenController(), fenix: true);
    Get.lazyPut<HomePageController>(() => HomePageController(), fenix: true);
    // Get.lazyPut<SettingsController>(() => SettingsController(), fenix: true);
    // Get.lazyPut<UpdateController>(() => UpdateController(), fenix: true);
  }
}