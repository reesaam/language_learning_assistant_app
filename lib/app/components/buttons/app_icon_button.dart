import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/data/extensions/data_types_extensions/extension_icon.dart';
import 'package:language_learning_assistant_app/data/resources/app_paddings.dart';
import 'package:language_learning_assistant_app/data/resources/app_sizes.dart';

class AppIconButton extends MaterialButton {
  const AppIconButton(
      {super.key,
      required this.icon,
      required super.onPressed,
      this.brightIcon});

  final IconData icon;
  final bool? brightIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.iconButtonSize,
      width: AppSizes.iconButtonSize,
      child: IconButton(
          padding: AppPaddings.zero,
          iconSize: AppSizes.iconButtonIconSize,
          onPressed: onPressed,
          icon: brightIcon == true
              ? Icon(icon).withAppAppBackgroundColor
              : Icon(icon).withAppDefaultColor),
    );
  }
}
