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
  late GermanWord word;
  final TextEditingController _controllerAddWord = TextEditingController();

  _addWordDialog() async => await AppDialogs.appBottomDialogWithOkCancel(
      AppTexts.wordsAddNewWordTitle,
      _addWordDialogForm(),
      popPage,
      true);

  Widget _addWordDialogForm() => AppTextField(
      controller: _controllerAddWord,
      label: AppTexts.wordsAddNewWordTitle,
      hint: AppTexts.wordsAddNewWordHint);

  addWord() async {
    await _addWordDialog();
    appDebugPrint('Add Word Dialog Closed');
    return GermanWord(word: _controllerAddWord.text);
  }
}
