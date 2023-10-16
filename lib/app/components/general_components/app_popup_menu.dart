import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/app/components/general_components/app_popup_menu_item.dart';
import 'package:language_learning_assistant_app/data/extensions/data_types_extensions/extension_icon.dart';
import 'package:language_learning_assistant_app/data/resources/app_elements.dart';
import 'package:language_learning_assistant_app/data/resources/app_icons.dart';
import 'package:language_learning_assistant_app/data/resources/app_paddings.dart';

class AppPopupMenu extends StatelessWidget {
  const AppPopupMenu(
      {super.key, required this.listItems, this.icon, this.lightIcon});

  final List<AppPopupMenuItem> listItems;
  final Icon? icon;
  final bool? lightIcon;

  @override
  Widget build(BuildContext context) => PopupMenuButton(
      padding: AppPaddings.zero,
      shape: AppElements.defaultBorderShape,
      icon: icon == null
          ? lightIcon == true
              ? AppIcons.threeDots.withAppAppBackgroundColor
              : AppIcons.threeDots.withAppDefaultColor
          : lightIcon == true
              ? icon!.withAppAppBackgroundColor
              : icon!.withAppDefaultColor,
      itemBuilder: (context) => List<AppPopupMenuItem>.generate(
          listItems.length,
          (index) => AppPopupMenuItem(
              text: listItems[index].text,
              onTapFunction: () => listItems[index].onTap())));
}
