import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_bar.dart';
import 'package:language_learning_assistant_app/app/controllers/about_controller.dart';
import 'package:language_learning_assistant_app/core/elements/core_view.dart';

class AboutPage extends CoreView<AboutController> {
  const AboutPage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? get appBar =>
      AppAppBar(pageDetail: controller.pageDetail);

  @override
  Widget get body => Column();
}
