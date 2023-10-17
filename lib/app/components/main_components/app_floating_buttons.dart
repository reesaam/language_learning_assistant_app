import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/data/extensions/data_types_extensions/extension_icon.dart';
import 'package:language_learning_assistant_app/data/resources/app_colors.dart';

class AppFloatingActionButtons extends FloatingActionButton {
  const AppFloatingActionButtons(
      {super.key, required this.icon, required super.onPressed});

  final Icon icon;

  @override
  Widget? get child => icon.withAppAppBackgroundColor;

  @override
  Widget build(BuildContext context) => FloatingActionButton(
      backgroundColor: AppColors.appDefaultColorSecond,
      foregroundColor: AppColors.textNormal,
      mini: true,
      onPressed: onPressed,
      child: child);
}
