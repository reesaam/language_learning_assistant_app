import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/data/resources/app_enums.dart';
import 'package:language_learning_assistant_app/data/resources/app_icons.dart';
import 'package:language_learning_assistant_app/data/resources/app_page_details.dart';

class AppBottomNavigationBarData {
  List<BottomNavigationBarItem> getData() => <BottomNavigationBarItem>[
        ///HomePage
        BottomNavigationBarItem(
            icon: _createIcon(AppBottomNavigationPages.homepage),
            label: _createLabel(AppPageDetails.homepage.pageName)),

        ///Dictionary
        BottomNavigationBarItem(
            icon: _createIcon(AppBottomNavigationPages.dictionary),
            label: _createLabel(AppPageDetails.dictionary.pageName)),

        ///Verbs
        BottomNavigationBarItem(
            icon: _createIcon(AppBottomNavigationPages.verbs),
            label: _createLabel(AppPageDetails.verbs.pageName)),

        ///Words
        BottomNavigationBarItem(
            icon: _createIcon(AppBottomNavigationPages.words),
            label: _createLabel(AppPageDetails.words.pageName)),

        ///Saved
        BottomNavigationBarItem(
            icon: _createIcon(AppBottomNavigationPages.saved),
            label: _createLabel(AppPageDetails.saved.pageName)),

        ///Settings
        BottomNavigationBarItem(
            icon: _createIcon(AppBottomNavigationPages.settings),
            label: _createLabel(AppPageDetails.settings.pageName)),
      ];

  Widget _createIcon(AppBottomNavigationPages page) {
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
