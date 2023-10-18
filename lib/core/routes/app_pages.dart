import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/views/about_view.dart';
import 'package:language_learning_assistant_app/app/views/words_view.dart';
import 'package:language_learning_assistant_app/app/views/homepage_view.dart';
import 'package:language_learning_assistant_app/app/views/saved_view.dart';
import 'package:language_learning_assistant_app/app/views/settings_view.dart';
import 'package:language_learning_assistant_app/app/views/splash_screen_view.dart';
import 'package:language_learning_assistant_app/app/views/update_view.dart';
import 'package:language_learning_assistant_app/app/views/verbs_view.dart';
import 'package:language_learning_assistant_app/core/routes/app_routes.dart';

class AppPages {
  static get pages => [
        ///Admin Pages
        // GetPage(name: AppRoutes.adminStartPage, page: AdminStartPage.new),
        // GetPage(name: AppRoutes.adminPagesTestPage, page: AdminPagesTestPage.new),
        // GetPage(name: AppRoutes.adminUITestPage, page: AdminUITestPage.new),

        ///Main App Pages
        GetPage(name: AppRoutes.splashScreen, page: SplashScreenPage.new),
        GetPage(name: AppRoutes.homePage, page: HomePage.new),
        GetPage(name: AppRoutes.words, page: WordsPage.new),
        GetPage(name: AppRoutes.verbs, page: VerbsPage.new),
        GetPage(name: AppRoutes.saved, page: SavedPage.new),
        GetPage(name: AppRoutes.settings, page: SettingsPage.new),
        GetPage(name: AppRoutes.about, page: AboutPage.new),
        GetPage(name: AppRoutes.update, page: UpdatePage.new),
      ];
}
