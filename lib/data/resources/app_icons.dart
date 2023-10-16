import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/data/extensions/data_types_extensions/extension_icon.dart';

class AppIcons {

  static Icon get none => const Icon(Icons.not_interested).withAppDefaultColor;

  ///General
  static Icon get close => const Icon(Icons.close_rounded);
  static Icon get version => const Icon(Icons.info_outline_rounded);

  ///Icons
  static Icon get home => const Icon(Icons.home_rounded);
  static Icon get dictionary => const Icon(Icons.local_library_rounded);
  static Icon get verbs => const Icon(Icons.assignment_rounded);
  static Icon get saved => const Icon(Icons.bookmark_rounded);
  static Icon get grammar => const Icon(Icons.assignment_turned_in_rounded);
  static Icon get settings => const Icon(Icons.settings_rounded);
  static Icon get about => const Icon(Icons.info_outline_rounded);
  static Icon get profile => const Icon(Icons.account_circle_rounded);

  ///BottomNavigationBar Icons
  static Icon get bottomNavigationHomepage => home;
  static Icon get bottomNavigationDictionary => dictionary;
  static Icon get bottomNavigationVerbs => verbs;
  static Icon get bottomNavigationSaved => saved;
  static Icon get bottomNavigationSettings => settings;
}