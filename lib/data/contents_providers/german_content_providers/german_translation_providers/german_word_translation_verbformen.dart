import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class GetTranslationVerbformen {
  ///Article
  static Future<String> getArticle(String inputword) async {
    String article = "";

    var urlconst = "https://www.verbformen.com/declension/nouns/?w=";
    var url = urlconst + inputword;
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);

      if (document.getElementsByClassName('vGrnd rCntr').isNotEmpty)
        article = document
            .getElementsByClassName('vGrnd rCntr')[0]
            .text
            .substring(2, 5);
      else
        article = "Unknown";
    });

    if (article != "der" && article != "die" && article != "das") {
      var urlconst = "https://context.reverso.net/translation/german-english/";
      var url = urlconst + inputword;
      await http.get(Uri.parse(url)).then((value) {
        dom.Document document = parser.parse(value.body);

        article = document
            .getElementById('pos-filters')!
            .getElementsByTagName('button')[0]
            .text
            .trim();
      });
    };

    return article;
  }
}
