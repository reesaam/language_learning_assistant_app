import 'dart:convert';

import 'package:get/get.dart';
import 'package:language_learning_assistant_app/core/app_core_functions.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_data/app_data.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_settings_data/app_setting_data.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_verb/german_verb.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_word/german_word.dart';
import 'package:language_learning_assistant_app/data/resources/app_enums.dart';
import 'package:language_learning_assistant_app/data/storage/local_storage_service.dart';

class AppLocalStorage {
  final String _keyLocalStorage = 'Local Storage';
  final _storage = LocalStorageService();

  static AppLocalStorage get to => Get.find();

  ///Keys
  final _keyWords = AppStorageKeys.keyWords.name;
  final _keyVerbs = AppStorageKeys.keyVerbs.name;
  final _keySaved = AppStorageKeys.keySaved.name;
  final _keySettings = AppStorageKeys.keySettings.name;

  void clearStorage() {
    _storage.remove(_keySettings);
  }

  void clearSpecificKey(AppStorageKeys key) => _storage.remove(key.name);

  ///Words
  Future<void> saveWordsList(GermanWordsList words) async =>
      await _storage.write(_keyWords, words);

  GermanWordsList loadWordsList() {
    var data = _storage.read(_keyWords);
    return data == null ? GermanWordsList() : GermanWordsList.fromJson(data);
  }

  ///Verbs
  Future<void> saveVerbs(GermanVerbsList verbs) async =>
      await _storage.write(_keyVerbs, verbs);

  GermanVerbsList loadVerbsList() {
    var data = _storage.read(_keyVerbs);
    return data == null ? GermanVerbsList() : GermanVerbsList.fromJson(data);
  }

  ///Saved List
  Future<void> saveSavedList(GermanWordsList saved) async =>
      await _storage.write(_keySaved, saved);

  GermanWordsList loadSavedList() {
    var data = _storage.read(_keySaved);
    return data == null ? GermanWordsList() : GermanWordsList.fromJson(data);
  }

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
    GermanWordsList wordsList = AppLocalStorage.to.loadWordsList();
    GermanVerbsList verbsList = AppLocalStorage.to.loadVerbsList();
    GermanWordsList savedList = AppLocalStorage.to.loadSavedList();
    AppSettingData setting = AppLocalStorage.to.loadSettings();
    return AppData(
        wordsList: wordsList,
        verbsList: verbsList,
        savedList: savedList,
        setting: setting);
  }

  void importData(AppData appData) async {
    appData.wordsList == null
        ? null
        : await AppLocalStorage.to.saveWordsList(appData.wordsList!);
    appData.verbsList == null
        ? null
        : await AppLocalStorage.to.saveVerbs(appData.verbsList!);
    appData.savedList == null
        ? null
        : await AppLocalStorage.to.saveSavedList(appData.savedList!);
    appData.setting == null
        ? null
        : await AppLocalStorage.to.saveSettings(appData.setting!);
  }

  void printData() {
    appDebugPrint('Words List Count: ${loadWordsList().germanWordsList.length}');
    appDebugPrint('Verbs List Count: ${loadVerbsList().germanVerbsList.length}');
    appDebugPrint('Saved List Count: ${loadSavedList().germanWordsList.length}');
    appDebugPrint('Settings / Dark Mode: ${loadSettings().darkMode}');
  }
}
