import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bar.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bottom_navigation_bar.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_drawer.dart';
import 'package:language_learning_assistant_app/app/controllers/saved_controller.dart';
import 'package:language_learning_assistant_app/core/elements/core_view.dart';

class SavedPage extends CoreView<SavedController> {
  const SavedPage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar =>
      AppAppBar(pageDetail: controller.pageDetail);

  @override
  Widget? get drawer => const AppDrawer();

  @override
  Widget? get topBar => null;

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => AppBottomNavigationBar(
      selectedIndex: controller.pageDetail.bottomBarItemNumber);

  @override
  Widget? get floatingActionButton => null;

  @override
  Widget get body => Column();
}
