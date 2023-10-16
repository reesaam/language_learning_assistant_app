import 'package:get/get.dart';
import 'package:language_learning_assistant_app/data/storage/app_local_storage.dart';
import 'package:language_learning_assistant_app/data/storage/app_shared_preferences.dart';

class AppStorageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppSharedPreferences>(() => AppSharedPreferences(), fenix: true);
    Get.lazyPut<AppLocalStorage>(() => AppLocalStorage(), fenix: true);
  }
}