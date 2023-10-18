import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/components/general_components/app_dividers.dart';
import 'package:language_learning_assistant_app/core/app_core_functions.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:language_learning_assistant_app/data/info/app_info.dart';
import 'package:language_learning_assistant_app/data/info/app_page_details.dart';
import 'package:language_learning_assistant_app/data/resources/app_icons.dart';
import 'package:language_learning_assistant_app/data/resources/app_logos.dart';
import 'package:language_learning_assistant_app/data/resources/app_paddings.dart';
import 'package:language_learning_assistant_app/data/resources/app_sizes.dart';
import 'package:language_learning_assistant_app/data/resources/app_spaces.dart';
import 'package:language_learning_assistant_app/data/resources/app_texts.dart';

class AppDrawer extends Drawer {
  const AppDrawer({super.key});

  @override
  double? get width => Get.width / 1.6;

  @override
  Widget? get child => SafeArea(
        child: Column(children: [
          header(),
          AppDividers.generalDivider,
          Expanded(child: body()),
          AppDividers.generalDivider,
          footer(),
        ]),
      );

  Widget header() => Container(
      padding: AppPaddings.drawerHeader,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image.asset(AppLogos.appLogo, width: AppSizes.drawerHeaderIconWidth),
        Text(AppInfo.appNameTwoLines),
      ]));

  Widget body() => Column(children: [
        _bodyItem(AppPageDetails.homepage, AppIcons.home),
        _bodyItem(AppPageDetails.words, AppIcons.words),
        _bodyItem(AppPageDetails.verbs, AppIcons.verbs),
        _bodyItem(AppPageDetails.saved, AppIcons.saved),
        _bodyItem(AppPageDetails.settings, AppIcons.settings),
        _bodyItem(AppPageDetails.about, AppIcons.about),
      ]);

  Widget _bodyItem(AppPageDetail page, Icon icon) => ListTile(
        title: Text(page.pageName!),
        leading: icon,
        onTap: () => {popPage(), goToPage(page)},
      );

  Widget footer() => Container(
      padding: AppPaddings.drawerFooter,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        AppIcons.version,
        AppSpaces.w20,
        InkWell(
          onTap: () => goToPage(AppPageDetails.update),
            child: Text(
                '${AppTexts.generalVersion}: ${AppInfo.appCurrentVersion}')),
      ]));
}
