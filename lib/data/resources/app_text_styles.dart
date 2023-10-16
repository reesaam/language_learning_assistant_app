import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/data/resources/app_colors.dart';
import 'package:language_learning_assistant_app/data/resources/app_fonts.dart';

class AppTextStyles {
  static get defaultSize => AppFonts.defaultFontSize;
  static get smallSize => defaultSize - 2;
  static get normalSize => defaultSize;
  static get bigSize => defaultSize + 3;
  static get titleSize => defaultSize + 5;
  static get bigTitleSize => defaultSize + 8;

  ///Card
  static TextStyle get cardTitle => TextStyle(color: AppColors.cardText, fontSize: bigSize);

  ///AppBar
  static TextStyle get appBarTitle => TextStyle(color: AppColors.appBarText, fontSize: bigTitleSize);

  ///ModalBottomSheet
  static TextStyle get modalTitle => TextStyle(fontSize: titleSize);

  ///Dialogs
  static TextStyle get dialogAlertTitle => TextStyle(fontSize: titleSize);
  static TextStyle get dialogAlertText => TextStyle(fontSize: normalSize, color: AppColors.textNormal);
}
