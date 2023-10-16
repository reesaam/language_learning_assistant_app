import 'package:flutter/material.dart';
import 'package:paria_app/app/components/app_general_components/app_popup_menu_item.dart';
import 'package:paria_app/data/app_extensions/extension_icon.dart';
import 'package:paria_app/data/resources/app_elements.dart';
import 'package:paria_app/data/resources/app_icons.dart';
import 'package:paria_app/data/resources/app_paddings.dart';
import 'package:paria_app/data/resources/app_text_styles.dart';

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
