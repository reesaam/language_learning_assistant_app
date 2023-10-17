import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_word/german_word.dart';

class GetTranslationCollins {
  static Future<GermanWord> getTranslationCollins(String inputWord) async {
    GermanWord word = const GermanWord();
    word = word.copyWith(word: inputWord);

    var urlMainConst =
        "https://www.collinsdictionary.com/dictionary/german-english/";
    var urlMain = urlMainConst + inputWord.toLowerCase();
    await http.get(Uri.parse(urlMain)).then((value) {
      dom.Document document = parser.parse(value.body);
      var block = document.children[0].children;
      var b1 = block[1].children;

      var x;
    });
    return word;
  }
}