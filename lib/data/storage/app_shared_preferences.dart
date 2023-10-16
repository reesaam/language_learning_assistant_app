import 'dart:convert';

import 'package:get/get.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_settings_data/app_setting_data.dart';
import 'package:language_learning_assistant_app/data/extensions/data_models_extensions/extension_settings.dart';
import 'package:language_learning_assistant_app/data/resources/app_enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  static AppSharedPreferences get to => Get.find();

  ///Keys
  final _keySettings = AppStorageKeys.keySettings.name;

  void saveData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    AppSettingData storageSettings = const AppSettingData().loadFromStorage;
    String jsonSettings = json.encode(storageSettings);
    sp.setString(_keySettings, jsonSettings);
  }

  void loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    String? dataSettings = sp.getString(_keySettings);
    AppSettingData settingsData = dataSettings == null
        ? const AppSettingData()
        : AppSettingData.fromJson(json.decode(dataSettings));
    settingsData.saveOnStorage;
  }

  void clearData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
  }
}
