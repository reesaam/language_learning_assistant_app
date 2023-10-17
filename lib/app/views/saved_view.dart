import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/app/controllers/saved_controller.dart';
import 'package:language_learning_assistant_app/app/views/list_view.dart';

class SavedPage extends ListViewPage<SavedController> {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget? get floatingActionButton => null;

}
