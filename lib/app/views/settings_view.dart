import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/components/general_components/app_popup_menu.dart';
import 'package:language_learning_assistant_app/app/components/general_components/app_popup_menu_item.dart';
import 'package:language_learning_assistant_app/app/components/general_components/app_switch.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bar.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bottom_navigation_bar.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_drawer.dart';
import 'package:language_learning_assistant_app/app/components/settings_components/settings_components.dart';
import 'package:language_learning_assistant_app/app/controllers/settings_controller.dart';
import 'package:language_learning_assistant_app/core/elements/core_view.dart';
import 'package:language_learning_assistant_app/data/info/app_info.dart';
import 'package:language_learning_assistant_app/data/resources/app_texts.dart';

class SettingsPage extends CoreView<SettingsController> {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar =>
      AppAppBar(pageDetail: controller.pageDetail);

  @override
  Widget? get drawer => const AppDrawer();

  @override
  Widget? get bottomNavigationBar => AppBottomNavigationBar(
      selectedIndex: controller.pageDetail.bottomBarItemNumber);

  @override
  Widget get body => Column(children: [
        widgetGeneral(),
        widgetUpdate(),
        widgetBackup(),
        widgetStorage(),
      ]);

  Widget widgetAppbarThreeDotsButton() =>
      AppPopupMenu(listItems: listAppbarThreeDotsButton, lightIcon: true);

  List<AppPopupMenuItem> get listAppbarThreeDotsButton => List.of([
        AppPopupMenuItem(
            text: AppTexts.settingAppbarMenuResetSettings, onTapFunction: () {})
      ]);

  Widget widgetGeneral() {
    ///TODO: Languages Implementation
    Widget widgetLanguages() =>
        Text(controller.selectedLanguage.value.name.capitalizeFirst ?? '');

    ///TODO: Calendar Types Implementation
    Widget widgetCalendar() =>
        Text(controller.selectedCalendar.value.name.capitalizeFirst ?? '');

    Widget widgetDarkMode() => Obx(() => AppSwitch(
        value: controller.darkMode.value,
        onChanged: (value) => controller.functionDarkModeOnChange(value),
        enabled: false));

    return SettingsComponents.widgetSettingSection(
        SettingsComponents.widgetSectionTitle(
            AppTexts.settingSectionTitleGeneral),
        [
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionTitleGeneralLanguage,
              widgetLanguages(),
              null),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionTitleGeneralCalendar,
              widgetCalendar(),
              null),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionGeneralItemDarkMode,
              widgetDarkMode(),
              null),
        ]);
  }

  Widget widgetUpdate() {
    return SettingsComponents.widgetSettingSection(
        SettingsComponents.widgetSectionTitle(
            AppTexts.settingSectionTitleUpdate),
        [
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionTitleUpdateCurrentVersion,
              Text(AppInfo.appCurrentVersion),
              null),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionTitleUpdateAvailableVersion,
              Text(controller.updateAvailableVersion.value ==
                      AppInfo.appCurrentVersion
                  ? AppTexts.generalNotAvailable
                  : controller.updateAvailableVersion.value),
              controller.functionGoToUpdatePage),
        ]);
  }

  Widget widgetBackup() {
    return SettingsComponents.widgetSettingSection(
        SettingsComponents.widgetSectionTitle(
            AppTexts.settingSectionTitleBackup),
        [
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionBackupBackup,
              null,
              controller.functionBackup),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionBackupRestore,
              null,
              controller.functionRestore),
        ]);
  }

  Widget widgetStorage() {
    return SettingsComponents.widgetSettingSection(
        SettingsComponents.widgetSectionTitle(
            AppTexts.settingSectionTitleStorage),
        [
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionStorageItemEraseDictionary,
              null,
              controller.functionClearDictionary),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionStorageItemEraseVerbs,
              null,
              controller.functionClearVerbs),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionStorageItemEraseSaved,
              null,
              controller.functionClearSaved),
          SettingsComponents.widgetSettingItem(
              AppTexts.settingSectionStorageItemEraseAllData,
              null,
              controller.functionClearAllData),
        ]);
  }
}
