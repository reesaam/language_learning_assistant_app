import 'dart:convert';

import 'package:get/get.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_settings_data/app_setting_data.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_verb/german_verb.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_word/german_word.dart';
import 'package:language_learning_assistant_app/data/extensions/data_models_extensions/extension_german_verbs.dart';
import 'package:language_learning_assistant_app/data/extensions/data_models_extensions/extension_german_words.dart';
import 'package:language_learning_assistant_app/data/extensions/data_models_extensions/extension_settings.dart';
import 'package:language_learning_assistant_app/data/resources/app_enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  static AppSharedPreferences get to => Get.find();

  ///Keys
  final _keyWords = AppStorageKeys.keyWords.name;
  final _keyVerbs = AppStorageKeys.keyVerbs.name;
  final _keySaved = AppStorageKeys.keySaved.name;
  final _keySettings = AppStorageKeys.keySettings.name;

  void saveData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    GermanWordsList storageWordsList = GermanWordsList().loadFromStorage;
    String jsonWordsList = json.encode(storageWordsList);
    sp.setString(_keyWords, jsonWordsList);

    GermanVerbsList storageVerbsList = GermanVerbsList().loadFromStorage;
    String jsonVerbsList = json.encode(storageVerbsList);
    sp.setString(_keyVerbs, jsonVerbsList);

    GermanWordsList storageSavedList = GermanWordsList().loadSavedFromStorage;
    String jsonSavedList = json.encode(storageSavedList);
    sp.setString(_keySaved, jsonSavedList);

    AppSettingData storageSettings = const AppSettingData().loadFromStorage;
    String jsonSettings = json.encode(storageSettings);
    sp.setString(_keySettings, jsonSettings);
  }

  void loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    String? dataWordsList = sp.getString(_keyWords);
    GermanWordsList wordsListData = dataWordsList == null
        ? GermanWordsList()
        : GermanWordsList.fromJson(json.decode(dataWordsList));
    wordsListData.saveOnStorage;

    String? dataVerbsList = sp.getString(_keyVerbs);
    GermanVerbsList verbsListData = dataVerbsList == null
        ? GermanVerbsList()
        : GermanVerbsList.fromJson(json.decode(dataVerbsList));
    verbsListData.saveOnStorage;

    String? dataSavedList = sp.getString(_keySaved);
    GermanWordsList savedListData = dataSavedList == null
        ? GermanWordsList()
        : GermanWordsList.fromJson(json.decode(dataSavedList));
    savedListData.saveSavedOnStorage;

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
