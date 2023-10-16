import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/components/buttons/app_general_button.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bar.dart';
import 'package:language_learning_assistant_app/app/controllers/update_controller.dart';
import 'package:language_learning_assistant_app/core/elements/core_view.dart';
import 'package:language_learning_assistant_app/data/info/app_info.dart';
import 'package:language_learning_assistant_app/data/resources/app_paddings.dart';
import 'package:language_learning_assistant_app/data/resources/app_spaces.dart';
import 'package:language_learning_assistant_app/data/resources/app_texts.dart';

class UpdatePage extends CoreView<UpdateController> {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar =>
      AppAppBar(pageDetail: controller.pageDetail);

  @override
  Widget? get drawer => null;

  @override
  Widget? get topBar => null;

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => null;

  @override
  Widget? get floatingActionButton => null;

  @override
  Widget get body =>
      Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        widgetVersions(),
        AppSpaces.h40,
        widgetButtons(),
      ]);

  Widget widgetVersions() => Obx(() => Card(
          child: Column(children: [
        widgetVersion(AppTexts.updateCurrentVersion, AppInfo.appCurrentVersion),
        AppSpaces.h10,
        widgetVersion(
            AppTexts.updateAvailableVersion,
            controller.availableVersion.value == AppInfo.appCurrentVersion
                ? AppTexts.generalNotAvailable
                : controller.availableVersion.value),
      ])));

  Widget widgetVersion(String title, String version) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(title), Text(version)]);

  Widget widgetButtons() => Obx(() => Padding(
      padding: AppPaddings.updateButtons,
      child: Column(children: [
        AppGeneralButton(
            text: AppTexts.updateCheckUpdate, onTap: controller.checkUpdate),
        AppGeneralButton(
            text: AppTexts.updateDownloadUpdate,
            onTap: controller.downloadUpdate,
            disabled: controller.checkAvailableUpdate()),
      ])));
}
