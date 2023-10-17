import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class GetTranslationCollins {
  static Future<DeutschWord> getTranslationCollins(String inputWord) async {
    DeutschWord word = DeutschWord.init();
    word.word = inputWord;

    var urlmainconst =
        "https://www.collinsdictionary.com/dictionary/german-english/";
    var urlmain = urlmainconst + inputWord.toLowerCase();
    await http.get(Uri.parse(urlmain)).then((value) {
      dom.Document document = parser.parse(value.body);
      var block = document.children[0].children;
      var b1 = block[1].children;

      var x;
    });
    return word;
  }
}