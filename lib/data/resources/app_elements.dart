import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/data/resources/app_colors.dart';

class AppElements {

  static double get defaultBorderWidth => 2;
  
  ///Radius
  static double get radiusZero => 0;
  static double get radiusLow => 10;
  static double get radiusNormal => 20;
  static double get radiusHigh => 30;
  static double get defaultRadius => radiusNormal;

  ///BorderRadius
  static Radius get defaultBorderRadius => Radius.circular(defaultRadius);
  static Radius get defaultBorderRadiusZero => Radius.circular(radiusZero);
  static Radius get defaultBorderRadiusLow => Radius.circular(radiusLow);
  static Radius get defaultBorderRadiusNormal => Radius.circular(radiusNormal);
  static Radius get defaultBorderRadiusHigh => Radius.circular(radiusHigh);

  ///Border
  static BorderRadius get defaultBorderWithNoRadius => BorderRadius.all(defaultBorderRadiusZero);
  static BorderRadius get defaultBorderWithRadius => BorderRadius.all(defaultBorderRadius);
  static BorderRadius get defaultBorderWithLowRadius => BorderRadius.all(defaultBorderRadiusLow);
  static BorderRadius get topBorderWithRadius => BorderRadius.only(topLeft: defaultBorderRadius, topRight: defaultBorderRadius);

  ///BorderSide
  static BorderSide get defaultBorderSide => BorderSide(color: AppColors.textNormal, width: defaultBorderWidth);
  static BorderSide get cardTransparentBorderSide => BorderSide(color: AppColors.transparent, width: defaultBorderWidth);
  static BorderSide get defaultBorderSideFocused => BorderSide(color: AppColors.appDefaultColor, width: defaultBorderWidth);
  static BorderSide get defaultBorderSideDisabled => BorderSide(color: AppColors.buttonBackgroundDisabled, width: defaultBorderWidth);

  ///OutlineInputBorder
  static OutlineInputBorder get defaultOutlineBorder => OutlineInputBorder(borderRadius: defaultBorderWithLowRadius, borderSide: defaultBorderSide);
  static OutlineInputBorder get defaultOutlineBorderFocused => OutlineInputBorder(borderRadius: defaultBorderWithLowRadius, borderSide: defaultBorderSideFocused);
  static OutlineInputBorder get cardTransparentOutlineBorder => OutlineInputBorder(borderRadius: defaultBorderWithLowRadius, borderSide: cardTransparentBorderSide);
  static OutlineInputBorder get cardTransparentOutlineBorderZeroRadius => OutlineInputBorder(borderRadius: defaultBorderWithNoRadius, borderSide: cardTransparentBorderSide);

  ///BoxBorder
  static BoxBorder get boxBorderTransparent => Border.all(color: AppColors.transparent);
  static BoxBorder get boxBorder => Border.all(color: AppColors.cardBackground);

  ///Shapes
  static BoxDecoration get shapeBoxDecoration => BoxDecoration(borderRadius: AppElements.defaultBorderWithRadius);
  static BoxDecoration get listPageSearchBox => BoxDecoration(border: Border.all(color: AppColors.transparent));

  ///RoundedRectangleBorder
  static RoundedRectangleBorder get defaultBorderShape => defaultBorderNormalRadiusShape;
  static RoundedRectangleBorder get defaultBorderLowRadiusShape => RoundedRectangleBorder(borderRadius: defaultBorderWithLowRadius);
  static RoundedRectangleBorder get defaultBorderNormalRadiusShape => RoundedRectangleBorder(borderRadius: defaultBorderWithLowRadius);
  static RoundedRectangleBorder get defaultBorderHighRadiusShape => RoundedRectangleBorder(borderRadius: defaultBorderWithLowRadius);
  static RoundedRectangleBorder get defaultModalBorderShape => RoundedRectangleBorder(borderRadius: topBorderWithRadius);
  static RoundedRectangleBorder get defaultAlertBorderShape => RoundedRectangleBorder(borderRadius: defaultBorderWithRadius);

  ///Panel
  // static BoxBorder get defaultPanelBorder => Border.all(color: AppColors.panelBorder);
  // static BoxDecoration get defaultPanel => BoxDecoration(border: defaultPanelBorder, borderRadius: defaultBorderWithRadius);
}