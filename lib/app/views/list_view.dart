import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bar.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bottom_navigation_bar.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_drawer.dart';
import 'package:language_learning_assistant_app/app/controllers/list_controller.dart';
import 'package:language_learning_assistant_app/core/elements/core_view.dart';

abstract class ListViewPage<Controller extends ListController>
    extends CoreView<Controller> {
  const ListViewPage({Key? key}) : super(key: key);

  RxList<String>? get listItems;

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
  Widget get body => listItems!.isEmpty ? widgetEmpty() : widgetListItems();

  Widget widgetEmpty() => Container(child: Text('Empty'));

  Widget widgetListItems() => DataTable(columns: dataColumns, rows: dataRows);

  List<DataColumn> get dataColumns => [DataColumn(label: Text(" List"))];

  List<DataRow> get dataRows => List<DataRow>.generate(listItems!.length,
      (index) => DataRow(cells: [DataCell(createItem(listItems![index]))]));

  Widget createItem(String item) => Row(children: [Text(item)]);
}
