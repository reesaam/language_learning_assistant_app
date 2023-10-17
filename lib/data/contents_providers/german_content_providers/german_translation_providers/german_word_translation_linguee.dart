import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class GetTranslationLinguee {
  ///Plural
  static Future<String> getPluralLinguee(String inputword) async {
    String plural = "";
    var urlmainconst = "https://www.linguee.com/german-english/translation/";
    // var urlmainconst =
    //     "https://www.linguee.com/english-german/search?source=auto&query=";
    var urlmain = urlmainconst + inputword + ".html";
    await http.get(Uri.parse(urlmain)).then((value) {
      dom.Document document = parser.parse(value.body);

      var block = document
          .getElementById('dictionary')!
          .getElementsByClassName('forms_plural');

      if (block.isNotEmpty)
        plural = block[0].getElementsByTagName('a')[0].innerHtml;
      else
        plural = "Not Applicable!";
    });
    return plural;
  }
}