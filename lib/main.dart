import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:language_learning_assistant_app/core/bindings/core_bindings.dart';
import 'package:language_learning_assistant_app/core/routes/app_pages.dart';
import 'package:language_learning_assistant_app/core/routes/app_routes.dart';
import 'package:language_learning_assistant_app/data/info/app_info.dart';
import 'package:language_learning_assistant_app/data/resources/app_themes.dart';

void main() => initProject();

void initProject() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppInfo.appName,
      initialRoute: AppRoutes.startPage,
      getPages: AppPages.pages,
      initialBinding: CoreBindings(),
      theme: AppThemes.mainTheme,
      supportedLocales: const [Locale('en')],
    );
  }
}