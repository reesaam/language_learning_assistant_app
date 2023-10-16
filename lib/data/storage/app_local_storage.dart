import 'dart:convert';

import 'package:get/get.dart';
import 'package:language_learning_assistant_app/core/app_core_functions.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_data/app_data.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_settings_data/app_setting_data.dart';
import 'package:language_learning_assistant_app/data/resources/app_enums.dart';
import 'package:language_learning_assistant_app/data/storage/local_storage_service.dart';

class AppLocalStorage {
  final String _keyLocalStorage = 'Local Storage';
  final _storage = LocalStorageService();

  static AppLocalStorage get to => Get.find();

  ///Keys
  final _keySettings = AppStorageKeys.keySettings.name;

  void clearStorage() {
    _storage.remove(_keySettings);
  }

  void clearSpecificKey(AppStorageKeys key) => _storage.remove(key.name);

  ///Settings
  Future<void> saveSettings(AppSettingData settings) async =>
      await _storage.write(_keySettings, settings);

  AppSettingData loadSettings() {
    var data = _storage.read(_keySettings);
    return data == null
        ? const AppSettingData()
        : AppSettingData.fromJson(data);
  }

  AppData exportData() {
    AppSettingData setting = AppLocalStorage.to.loadSettings();
    return AppData(setting: setting);
  }

  void importData(AppData appData) async {
    appData.setting == null
        ? null
        : await AppLocalStorage.to.saveSettings(appData.setting!);
  }

  void printData() {
    appDebugPrint('Settings / Dare Mode: ${loadSettings().darkMode}');
  }
}
