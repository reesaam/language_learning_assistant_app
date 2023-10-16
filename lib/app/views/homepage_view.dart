import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bar.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bottom_navigation_bar.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_drawer.dart';
import 'package:language_learning_assistant_app/app/controllers/homepage_controller.dart';
import 'package:language_learning_assistant_app/core/elements/core_view.dart';
import 'package:language_learning_assistant_app/data/extensions/data_types_extensions/extension_icon.dart';
import 'package:language_learning_assistant_app/data/info/app_info.dart';
import 'package:language_learning_assistant_app/data/resources/app_icons.dart';
import 'package:language_learning_assistant_app/data/resources/app_logos.dart';
import 'package:language_learning_assistant_app/data/resources/app_paddings.dart';
import 'package:language_learning_assistant_app/data/resources/app_sizes.dart';
import 'package:language_learning_assistant_app/data/resources/app_spaces.dart';
import 'package:language_learning_assistant_app/data/resources/app_text_styles.dart';
import 'package:language_learning_assistant_app/data/resources/app_texts.dart';

class HomePage extends CoreView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar =>
      AppAppBar(pageDetail: controller.pageDetail);

  @override
  Widget? get drawer => const AppDrawer();

  @override
  Widget? get topBar => widgetTopBar();

  @override
  Widget? get footer => null;

  @override
  Widget? get bottomNavigationBar => AppBottomNavigationBar(
      selectedIndex: controller.pageDetail.bottomBarItemNumber);

  @override
  Widget? get floatingActionButton => null;

  @override
  Widget get body => Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [widgetDateTime()]);

  Widget widgetTopBar() => Container(
      padding: AppPaddings.homepageTopBar,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image.asset(AppLogos.appLogo, width: AppSizes.homepageLogo),
        Text(AppInfo.appName),
      ]));

  Widget widgetDateTime() => Card(
          child: Stack(children: [
        Padding(
            padding: AppPaddings.homepageDateTimeCard,
            child: Column(children: [
              Text(AppTexts.homepageDateTimeTitle,
                  style: AppTextStyles.cardTitle),
              AppSpaces.h20,
              Obx(() => widgetDateTimeItem()),
            ])),

        ///TODO: Implement DateTime Setting Page
        InkWell(
            onTap: () {},
            child: Container(
                alignment: Alignment.topRight,
                padding: AppPaddings.homepageDateTimeCardSettingIcon,
                child: AppIcons.settings.withAppDefaultColor
                    .withSize(AppSizes.homepageSettingIcon))),
      ]));

  Widget widgetDateTimeItem() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(controller.mainTime.value),
            Text(controller.mainDate.value),
          ]);
}
