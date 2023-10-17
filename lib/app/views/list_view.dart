import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bar.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bottom_navigation_bar.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_drawer.dart';
import 'package:language_learning_assistant_app/app/controllers/list_controller.dart';
import 'package:language_learning_assistant_app/core/elements/core_view.dart';
import 'package:language_learning_assistant_app/data/extensions/data_types_extensions/extension_icon.dart';
import 'package:language_learning_assistant_app/data/resources/app_elements.dart';
import 'package:language_learning_assistant_app/data/resources/app_icons.dart';
import 'package:language_learning_assistant_app/data/resources/app_paddings.dart';
import 'package:language_learning_assistant_app/data/resources/app_sizes.dart';
import 'package:language_learning_assistant_app/data/resources/app_text_styles.dart';
import 'package:language_learning_assistant_app/data/resources/app_texts.dart';

abstract class ListViewPage<Controller extends ListController>
    extends CoreView<Controller> {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  EdgeInsets? get pagePadding => AppPaddings.zero;

  @override
  PreferredSizeWidget? get appBar =>
      AppAppBar(pageDetail: controller.pageDetail);

  @override
  Widget? get drawer => const AppDrawer();

  @override
  Widget? get bottomNavigationBar => AppBottomNavigationBar(
      selectedIndex: controller.pageDetail.bottomBarItemNumber);

  @override
  Widget get body =>
      controller.listItems.isEmpty ? widgetEmpty() : widgetListItems();

  Widget widgetEmpty() => const Text('Empty');

  Widget widgetListItems() => DataTable(
      columns: dataColumns,
      rows: dataRows,
      horizontalMargin: AppSizes.listPageTableHorizontalMargin,
      headingRowHeight: AppSizes.listPageTableHeadingRowHeight,
      showBottomBorder: true);

  List<DataColumn> get dataColumns => [DataColumn(label: searchBox())];

  List<DataRow> get dataRows => List<DataRow>.generate(
      controller.listItems.isEmpty ? 0 : controller.listItems.length,
      (index) => DataRow(cells: [createItem(controller.listItems[index])]));

  DataCell createItem(String item) => DataCell(Row(children: [Text(item)]));

  Widget searchBox() => Obx(() => Container(
      width: Get.width,
      decoration: AppElements.listPageSearchBox,
      child: TextField(
          maxLines: 1,
          controller: controller.controllerSearch,
          showCursor: true,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: AppPaddings.listPageSearchBox,
              suffixIcon: searchBoxSuffixIcon(),
              hintText: AppTexts.listPageSearchBoxHint,
              hintStyle: AppTextStyles.listPageSearchBoxHint),
          onChanged: (value) => controller.searchOnChanged(value))));

  Widget searchBoxSuffixIcon() => controller.searchString.value.isEmpty
      ? AppIcons.listSearch.withAppDefaultColor
      : InkWell(
          onTap: controller.searchClear,
          child: AppIcons.listSearchRemove.withAppDefaultColor);
}
