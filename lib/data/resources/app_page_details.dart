import 'package:language_learning_assistant_app/core/routes/app_routes.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';

class AppPageDetails {
  ///Admin Pages
  static AppPageDetail adminStartPage = const AppPageDetail(
    pageName: 'Admin Start Page',
    pageRoute: AppRoutes.adminStartPage,
    bottomBarItemNumber: -1,
    bottomBarIcon: null,
  );

  static AppPageDetail adminPagesTestPage = const AppPageDetail(
    pageName: 'Admin Pages Test Page',
    pageRoute: AppRoutes.adminPagesTestPage,
    bottomBarItemNumber: -1,
    bottomBarIcon: null,
  );

  static AppPageDetail adminUITestPage = const AppPageDetail(
    pageName: 'Admin UI Test Page',
    pageRoute: AppRoutes.adminUITestPage,
    bottomBarItemNumber: -1,
    bottomBarIcon: null,
  );

  ///Main Pages
  static AppPageDetail splashScreen = const AppPageDetail(
    pageName: 'Splash Screen',
    pageRoute: AppRoutes.splashScreen,
    bottomBarItemNumber: -1,
    bottomBarIcon: null,
  );

  static AppPageDetail homepage = const AppPageDetail(
    pageName: 'Home',
    pageRoute: AppRoutes.homePage,
    bottomBarItemNumber: 0,
    bottomBarIcon: 'home',
  );

  static AppPageDetail dictionary = const AppPageDetail(
    pageName: 'Dictionary',
    pageRoute: AppRoutes.dictionary,
    bottomBarItemNumber: 1,
    bottomBarIcon: 'dictionary',
  );

  static AppPageDetail verbs = const AppPageDetail(
    pageName: 'Verbs',
    pageRoute: AppRoutes.verbs,
    bottomBarItemNumber: 2,
    bottomBarIcon: 'verbs',
  );

  static AppPageDetail words = const AppPageDetail(
    pageName: 'Words',
    pageRoute: AppRoutes.words,
    bottomBarItemNumber: 3,
    bottomBarIcon: 'words',
  );

  static AppPageDetail saved = const AppPageDetail(
    pageName: 'Saved',
    pageRoute: AppRoutes.saved,
    bottomBarItemNumber: 4,
    bottomBarIcon: 'saved',
  );

  static AppPageDetail settings = const AppPageDetail(
    pageName: 'Settings',
    pageRoute: AppRoutes.settings,
    bottomBarItemNumber: 5,
    bottomBarIcon: 'settings',
  );

  static AppPageDetail update = const AppPageDetail(
    pageName: 'Update',
    pageRoute: AppRoutes.update,
    bottomBarItemNumber: -1,
    bottomBarIcon: null,
  );
}
