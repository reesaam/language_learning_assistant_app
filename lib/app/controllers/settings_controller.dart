import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_dialogs.dart';
import 'package:language_learning_assistant_app/app/components/update_components/app_check_update.dart';
import 'package:language_learning_assistant_app/core/app_core_functions.dart';
import 'package:language_learning_assistant_app/core/elements/core_controller.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_data/app_data.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_settings_data/app_setting_data.dart';
import 'package:language_learning_assistant_app/data/extensions/data_models_extensions/extension_settings.dart';
import 'package:language_learning_assistant_app/data/extensions/data_types_extensions/extension_string.dart';
import 'package:language_learning_assistant_app/data/info/app_page_details.dart';
import 'package:language_learning_assistant_app/data/resources/app_enums.dart';
import 'package:language_learning_assistant_app/data/resources/app_texts.dart';
import 'package:language_learning_assistant_app/data/storage/app_local_storage.dart';

class SettingsController extends CoreController {

  Rx<AppSettingData> appSettings = const AppSettingData().obs;

  Rx<bool> darkMode = false.obs;
  Rx<AppLanguages> selectedLanguage = AppLanguages.english.obs;
  Rx<AppCalendarTypes> selectedCalendar = AppCalendarTypes.georgian.obs;

  Rx<String> updateAvailableVersion = AppTexts.generalNotAvailable.obs;

  @override
  void dataInit() {
    appSettings = const AppSettingData().loadFromStorage.obs;
    functionCheckUpdateAvailableVersion();
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.settings;
  }

  @override
  void onInitFunction() {
    fillData();
  }

  @override
  void onCloseFunction() {
    saveSettings();
  }

  fillData() {
    darkMode.value = appSettings.value.darkMode ?? false;
    appDebugPrint('Fill Setting Data Function Applied Data');
    appSettings.listen((data) => fillData());
  }

  functionDarkModeOnChange(bool value) {
    darkMode.value = value;
    appDebugPrint('DarkMode Changed to ${darkMode.value}');
    refresh();
  }

  functionCheckUpdateAvailableVersion() async {
    updateAvailableVersion.value = await AppCheckUpdate().checkVersion();
    appDebugPrint('Checked Update Version: ${updateAvailableVersion.value}');
  }

  functionGoToUpdatePage() => goToPage(AppPageDetails.update);

  functionBackup() {
    function() async {
      popPage();
      AppData appdata = AppLocalStorage.to.exportData();
      var jsonData = jsonEncode(appdata);
      Uint8List data = jsonData.toString().toUInt8List;
      SaveFileDialogParams saveParams = SaveFileDialogParams(
          data: data, fileName: AppTexts.settingBackupFilename);
      String? filePath = await FlutterFileDialog.saveFile(params: saveParams);
      appDebugPrint('** Backup File Saved **');
      appDebugPrint('Filename: ${saveParams.fileName}');
      appDebugPrint('Path: ${saveParams.sourceFilePath}');
      appDebugPrint('File Path: $filePath');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataExport, function, true);
  }

  functionRestore() {
    function() async {
      popPage();
      OpenFileDialogParams openFileParams =
      const OpenFileDialogParams(dialogType: OpenFileDialogType.document);
      String? importFilePath = await FlutterFileDialog.pickFile(params: openFileParams);
      appDebugPrint('** Backup File Selected **');
      appDebugPrint('File Path: $importFilePath');

      File importFile = File(importFilePath!);
      String stringData = String.fromCharCodes(importFile.readAsBytesSync());
      var jsonData = jsonDecode(stringData) as Map<String, dynamic>;
      AppData appData = AppData.fromJson(jsonData);
      clearAppData();
      AppLocalStorage.to.importData(appData);
      appDebugPrint('** Data Imported **');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataMayLost, function, true);
  }

  functionClearDictionary() {
    function() {
      AppLocalStorage.to.clearSpecificKey(AppStorageKeys.keyWords);
      popPage();
      appDebugPrint('Dictionary Items Cleared');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataWillLost, function, true);
  }

  functionClearVerbs() {
    function() {
      AppLocalStorage.to.clearSpecificKey(AppStorageKeys.keyVerbs);
      popPage();
      appDebugPrint('Verbs Items Cleared');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataWillLost, function, true);
  }

  functionClearSaved() {
    function() {
      AppLocalStorage.to.clearSpecificKey(AppStorageKeys.keySaved);
      popPage();
      appDebugPrint('Saved Items Cleared');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataWillLost, function, true);
  }

  functionClearAllData() {
    function() {
      clearAppData();
      popPage();
      appDebugPrint('');
    }

    AppDialogs.appAlertDialogWithOkCancel(
        AppTexts.warning, AppTexts.areYouSureDataWillLost, function, true);
  }

  saveSettings() {
    appSettings.saveOnStorage;
    appDebugPrint('Settings Saved');
  }

  resetAllSettings() {
    appSettings.value = const AppSettingData().clearData;
    saveSettings();
    appDebugPrint('Reset Settings Data performed');
  }
}