import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_learning_assistant_app/core/app_core_functions.dart';
import 'package:language_learning_assistant_app/core/app_core_widgets.dart';
import 'package:language_learning_assistant_app/core/elements/core_controller.dart';
import 'package:language_learning_assistant_app/data/resources/app_colors.dart';
import 'package:language_learning_assistant_app/data/resources/app_paddings.dart';

abstract class CoreView<Controller extends CoreController>
    extends GetView<Controller> {
  const CoreView({final Key? key}) : super(key: key);

  Future<bool> onWillPop() async => onBackButtonPressed(controller.pageDetail);

  ///Main Widgets
  PreferredSizeWidget? get appBar;
  Widget? get drawer;
  Widget get body;
  Widget? get topBar;
  Widget? get footer;
  Widget? get bottomNavigationBar;
  Widget? get floatingActionButton;

  @override
  Widget build(BuildContext context) =>
      WillPopScope(onWillPop: () => onWillPop(), child: _pageScaffold);

  Widget get _pageScaffold => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBar,
        drawer: drawer,
        drawerEnableOpenDragGesture: true,
        drawerEdgeDragWidth: Get.width / 4,
        body: _pageBody,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        backgroundColor: AppColors.appBackground,
      );

  Widget get _pageBody => SafeArea(
        child: Column(children: [
          topBar == null ? shrinkSizedBox : topBar!,
          //Main Body
          Expanded(
              child: Padding(
                  padding: AppPaddings.pages,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      child: body))),
          footer == null ? shrinkSizedBox : footer!,
        ]),
      );
}
