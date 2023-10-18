import 'package:get/get.dart';
import 'package:language_learning_assistant_app/app/components/words_components/words_components.dart';
import 'package:language_learning_assistant_app/app/controllers/list_controller.dart';
import 'package:language_learning_assistant_app/core/app_core_functions.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_page_detail/app_page_detail.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_word/german_word.dart';
import 'package:language_learning_assistant_app/data/extensions/data_models_extensions/extension_german_words.dart';
import 'package:language_learning_assistant_app/data/info/app_page_details.dart';
import 'package:language_learning_assistant_app/data/storage/app_local_storage.dart';

class WordsController extends ListController {

  Rx<GermanWordsList> wordsList = GermanWordsList(germanWordsList: List<GermanWord>.empty(growable: true)).obs;

  @override
  AppPageDetail get pageDetail => AppPageDetails.words;

  @override
  void dataInit() {
    generateList();
  }

  generateList() {
    wordsList.value = AppLocalStorage.to.loadWordsList();
    List<String> list = List<String>.empty(growable: true);
    for (GermanWord word in wordsList.value.germanWordsList) {
      list.add(word.word!);
    }
    listItems.value = list;
    defaultList.value = list;
    appDebugPrint(listItems.length);
    listItems.refresh();
  }

  addWord() async {
    GermanWord word = await WordsComponents().addWord();
    word.word == null ? null : wordsList.addWord(word);
    generateList();
  }
}
