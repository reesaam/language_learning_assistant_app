import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/components/general_components/app_text_field.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bar.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bottom_navigation_bar.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_drawer.dart';
import 'package:language_learning_assistant_app/app/controllers/list_controller.dart';
import 'package:language_learning_assistant_app/core/elements/core_view.dart';
import 'package:language_learning_assistant_app/data/resources/app_elements.dart';
import 'package:language_learning_assistant_app/data/resources/app_icons.dart';

abstract class ListViewPage<Controller extends ListController>
    extends CoreView<Controller> {
  const ListViewPage({Key? key}) : super(key: key);

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
  Widget get body =>
      controller.listItems == null ? widgetEmpty() : widgetListItems();

  Widget widgetEmpty() => Container(child: Text('Empty'));

  Widget widgetListItems() => DataTable(columns: dataColumns, rows: dataRows);

  List<DataColumn> get dataColumns => [DataColumn(label: searchBox())];

  List<DataRow> get dataRows => List<DataRow>.generate(
      controller.listItems == null ? 0 : controller.listItems!.length,
      (index) => DataRow(cells: [createItem(controller.listItems![index])]));

  DataCell createItem(String item) => DataCell(Row(children: [Text(item)]));

  Widget searchBox() => Container(
      width: Get.width - 200,
      decoration: AppElements.listPageSearchBox,
      child: TextField(
        maxLines: 1,
        controller: controller.controllerSearch,
        showCursor: true,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20),
          suffixIcon: searchBoxSuffixIcon,
          hintText: "Search ...",
        ),
        onChanged: (value) => controller.searchOnChanged(value),
      ));

  Widget get searchBoxSuffixIcon => controller.controllerSearch.text.isEmpty
      ? AppIcons.listSearch
      : InkWell(
          onTap: controller.searchClear,
          child: AppIcons.listSearchRemove,
        );
}
