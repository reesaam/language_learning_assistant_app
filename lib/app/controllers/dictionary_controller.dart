import 'package:language_learning_assistant_app/app/controllers/list_controller.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:language_learning_assistant_app/data/info/app_page_details.dart';

class DictionaryController extends ListController {

  @override
  AppPageDetail get pageDetail => AppPageDetails.dictionary;

}