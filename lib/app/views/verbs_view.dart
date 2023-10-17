import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_floating_buttons.dart';
import 'package:language_learning_assistant_app/app/controllers/verbs_controller.dart';
import 'package:language_learning_assistant_app/app/views/list_view.dart';
import 'package:language_learning_assistant_app/data/resources/app_icons.dart';

class VerbsPage extends ListViewPage<VerbsController> {
  const VerbsPage({Key? key}) : super(key: key);

  @override
  Widget? get floatingActionButton => AppFloatingActionButtons(
      icon: AppIcons.add, onPressed: controller.addVerb);
}
