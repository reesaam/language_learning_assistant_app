import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/data/extensions/data_types_extensions/extension_icon.dart';

class AppIcons {

  static Icon get none => const Icon(Icons.not_interested).withAppDefaultColor;

  ///General
  static Icon get close => const Icon(Icons.close_rounded);

  ///Icons
  static Icon get home => const Icon(Icons.home_rounded);
  static Icon get settings => const Icon(Icons.settings_rounded);

  ///BottomNavigationBar Icons
  static Icon get bottomNavigationHomepage => home;
  static Icon get bottomNavigationSettings => settings;
}