import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:language_learning_assistant_app/data/resources/app_colors.dart';
import 'package:language_learning_assistant_app/data/resources/app_paddings.dart';
import 'package:language_learning_assistant_app/data/resources/app_text_styles.dart';

class AppAppBar extends AppBar {
  AppAppBar(
      {super.key, required this.pageDetail, this.barLeading, this.barAction})
      : super();

  final AppPageDetail pageDetail;
  final Widget? barLeading;
  final Widget? barAction;

  @override
  Widget? get title =>
      Text(pageDetail.pageName ?? '', style: AppTextStyles.appBarTitle);

  @override
  Widget? get leading => barLeading;

  @override
  List<Widget>? get actions =>
      [Padding(padding: AppPaddings.appBarActions, child: barAction)];

  @override
  Color? get backgroundColor => AppColors.appBarBackground;

  @override
  bool? get centerTitle => false;
}
