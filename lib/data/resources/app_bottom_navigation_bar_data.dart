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

        ///Settings
        BottomNavigationBarItem(
            icon: _createIcon(AppBottomNavigationPages.settings),
            label: _createLabel(AppPageDetails.settings.pageName)),
      ];

  Widget _createIcon(AppBottomNavigationPages page) {
    Icon icon = const Icon(Icons.not_interested);
    switch(page) {
      case(AppBottomNavigationPages.homepage) : icon = AppIcons.bottomNavigationHomepage; break;
      case(AppBottomNavigationPages.settings) : icon = AppIcons.bottomNavigationSettings; break;
      default: break;
    }
    return icon;
  }

  String? _createLabel(String? label) => label;
}
