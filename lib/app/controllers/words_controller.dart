import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/components/words_coomponents/words_components.dart';
import 'package:language_learning_assistant_app/app/controllers/list_controller.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:language_learning_assistant_app/data/info/app_page_details.dart';

class WordsController extends ListController {

  @override
  AppPageDetail get pageDetail => AppPageDetails.words;

  @override
  RxList<String> get listItems => fillList();

  fillList() => ['Brot', 'Wasser'].obs;

  addWord() async => await WordsComponents().addWord();
}
