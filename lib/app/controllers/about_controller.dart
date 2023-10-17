import 'package:language_learning_assistant_app/core/elements/core_controller.dart';
import 'package:language_learning_assistant_app/data/info/app_page_details.dart';

class AboutController extends CoreController {

  @override
  void dataInit() {
    // clearAppData();
  }

  @override
  void pageInit() {
    pageDetail = AppPageDetails.about;
  }
}