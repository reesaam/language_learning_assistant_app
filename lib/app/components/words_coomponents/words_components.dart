import 'package:flutter/material.dart';
import 'package:language_learning_assistant_app/app/components/general_components/app_text_field.dart';
import 'package:language_learning_assistant_app/app/components/main_components/app_dialogs.dart';
import 'package:language_learning_assistant_app/core/app_core_functions.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_word/german_word.dart';
import 'package:language_learning_assistant_app/data/extensions/data_models_extensions/extension_german_words.dart';
import 'package:language_learning_assistant_app/data/resources/app_texts.dart';
import 'package:language_learning_assistant_app/data/storage/app_local_storage.dart';

class WordsComponents {
  ///Add Word
  final TextEditingController _controllerAddWord = TextEditingController();

  _addWordDialog() async => await AppDialogs.appBottomDialogWithOkCancel(
      AppTexts.wordsAddNewWordTitle,
      _addWordDialogForm(),
      _addWordFunction,
      true);

  Widget _addWordDialogForm() => AppTextField(
      controller: _controllerAddWord,
      label: AppTexts.wordsAddNewWordTitle,
      hint: AppTexts.wordsAddNewWordHint);

  _addWordFunction() {
    List<GermanWord> list = List<GermanWord>.empty(growable: true);
    list.addAll(AppLocalStorage.to.loadWordsList().germanWordsList);
    list.add(GermanWord(word: _controllerAddWord.text));
    GermanWordsList newList = GermanWordsList(germanWordsList: list);
    newList.saveOnStorage;
    popPage();
  }

  Future<void> addWord() async {
    await _addWordDialog();
    appDebugPrint(_controllerAddWord.text);
    // _addWordFunction();
  }
}
