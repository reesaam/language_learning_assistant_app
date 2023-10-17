import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class GetTranslationLangenScheidt {
  ///Plural
  static Future<String> getPlural(String inputword) async {
    String plural = "Not Applicable";
    var urlconst = "https://en.langenscheidt.com/german-english/";
    var url = urlconst + inputword.toLowerCase();
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);
      var mainblock = document.getElementById('centercolumn');
      var block = mainblock!.getElementsByClassName('inflectionsSection')[0];
      var text = block.text.replaceAll("\n", "").trim();

      var x;
    });
    return plural;
  }
}