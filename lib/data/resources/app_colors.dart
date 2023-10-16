import 'package:flutter/material.dart';

class AppColors {

  ///Basics
  static Color get transparent => Colors.transparent;
  static Color get appBackground => _white;
  static Color get appDefaultColor => _coral;

  ///Colors
  static Color get _white => Colors.white;
  static Color get _black => Colors.black;
  static Color get _grey => Colors.grey;

  static Color get _coral => const Color(0xFFFE7D6A);
  static Color get _strawberry => const Color(0xFFFC4C4E);
  static Color get _persianOrange => const Color(0xFFFC4C4E);
  static Color get _persianRed => const Color(0xFFCC3333);
  static Color get _persianGreen => const Color(0xff009D88);

  static Color get error => Colors.redAccent;
  static Color get noError => Colors.green;

  ///Text
  static Color get textNormal => _black;
  static Color get textNormalWhite => _white;
  static Color get textDisabled => _grey;

  ///Elements
  static Color get dividerDefaultColor => _black;

  ///AppBar
  static Color get appBarBackground => appDefaultColor;
  static Color get appBarText => textNormal;

  ///AppBottomBar
  static Color get bottomBarBackground => appDefaultColor;
  static Color get bottomBarSelected => textNormal;
  static Color get bottomBarUnselected => appBackground;

  ///Card
  static Color get cardBackground => appBackground;

  ///Button
  static Color get  buttonBackgroundNormal => appDefaultColor;
  static Color get  buttonBackgroundDisabled => appBackground;
  static Color get  buttonTextNormal => textNormal;
  static Color get  buttonTextDisabled => textDisabled;

  ///CheckBox
  static Color get appCheckBox => appBackground;
  static Color get appCheckBoxTick => appDefaultColor;
}