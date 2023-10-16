import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/data/extensions/data_types_extensions/extension_icon.dart';
import 'package:language_learning_assistant_app/data/resources/app_colors.dart';
import 'package:language_learning_assistant_app/data/resources/app_enums.dart';
import 'package:language_learning_assistant_app/data/resources/app_icons.dart';
import 'package:language_learning_assistant_app/data/resources/app_page_details.dart';

class AppBottomNavigationBarData {
  List<BottomNavigationBarItem> getData() => <BottomNavigationBarItem>[
        ///HomePage
        _generateBottomNavigationBarItem(AppBottomNavigationPages.homepage,
            AppPageDetails.homepage.pageName),

        ///Dictionary
        _generateBottomNavigationBarItem(AppBottomNavigationPages.dictionary,
            AppPageDetails.dictionary.pageName),

        ///Verbs
        _generateBottomNavigationBarItem(
            AppBottomNavigationPages.verbs, AppPageDetails.verbs.pageName),

        ///Words
        _generateBottomNavigationBarItem(
            AppBottomNavigationPages.words, AppPageDetails.words.pageName),

        ///Saved
        _generateBottomNavigationBarItem(
            AppBottomNavigationPages.saved, AppPageDetails.saved.pageName),

        ///Settings
        _generateBottomNavigationBarItem(AppBottomNavigationPages.settings,
            AppPageDetails.settings.pageName),
      ];

  BottomNavigationBarItem _generateBottomNavigationBarItem(
          AppBottomNavigationPages page, String? label) =>
      BottomNavigationBarItem(
          activeIcon: CircleAvatar(
              backgroundColor: AppColors.textNormalWhite,
              foregroundColor: AppColors.textNormal,
              child: _createIcon(page).withColor(AppColors.textNormal)),
          icon: _createIcon(page),
          label: _createLabel(label));

  Icon _createIcon(AppBottomNavigationPages page) {
    Icon icon = const Icon(Icons.not_interested);
    switch (page) {
      case (AppBottomNavigationPages.homepage):
        icon = AppIcons.bottomNavigationHomepage;
        break;
      case (AppBottomNavigationPages.dictionary):
        icon = AppIcons.bottomNavigationDictionary;
        break;
      case (AppBottomNavigationPages.verbs):
        icon = AppIcons.bottomNavigationVerbs;
        break;
      case (AppBottomNavigationPages.words):
        icon = AppIcons.bottomNavigationWords;
        break;
      case (AppBottomNavigationPages.saved):
        icon = AppIcons.bottomNavigationSaved;
        break;
      case (AppBottomNavigationPages.settings):
        icon = AppIcons.bottomNavigationSettings;
        break;
      default:
        break;
    }
    return icon;
  }

  String? _createLabel(String? label) => label;
}
