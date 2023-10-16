import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_learning_assistant_app/core/app_core_functions.dart';
import 'package:language_learning_assistant_app/core/routes/app_routes.dart';
import 'package:language_learning_assistant_app/data/resources/app_bottom_navigation_bar_data.dart';
import 'package:language_learning_assistant_app/data/resources/app_colors.dart';

class AppBottomNavigationBar extends StatefulWidget {
  final int? selectedIndex;
  const AppBottomNavigationBar({super.key, this.selectedIndex});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {

  RxInt selectedIndex = 0.obs;

  void _onItemTap(int index) {
    selectedIndex.value = index;
    switch(index) {
      case 0 : goToPage(AppRoutes.homePage);
      case 1 : goToPage(AppRoutes.dictionary);
      case 2 : goToPage(AppRoutes.verbs);
      case 3 : goToPage(AppRoutes.words);
      case 4 : goToPage(AppRoutes.saved);
      case 5 : goToPage(AppRoutes.settings);
      default: break;
    }
    Get.reload();
  }

  @override
  Widget build(BuildContext context) {
    selectedIndex.value = widget.selectedIndex!;
    return BottomNavigationBar(
        backgroundColor: AppColors.bottomBarBackground,
        type: BottomNavigationBarType.fixed,
        enableFeedback: true,
        currentIndex: selectedIndex.value,
        onTap: (index) => _onItemTap(index),
        selectedItemColor: AppColors.bottomBarSelected,
        unselectedItemColor: AppColors.bottomBarUnselected,
        items: AppBottomNavigationBarData().getData());
  }
}