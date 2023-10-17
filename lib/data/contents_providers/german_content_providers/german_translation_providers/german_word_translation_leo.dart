import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class GetTranslationDataLeo {

  ///Article
  static Future<String> getArticle(String inputword) async {
    String article = "";
    var urlconst = "https://dict.leo.org/german-english/";
    var url = urlconst + inputword;
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);
      var block = document.getElementsByTagName('td');
      for (var td in block) {
        if (td.attributes['lang'] == "de") {
          var x = td.getElementsByTagName('a');
          article = td.getElementsByTagName('a')[0].text.trim();
          break;
        }
      }
    });
    return article;
  }

  ///Plural
  static Future<String> getPlural(String inputword) async {
    String plural = "";
    var urlconst = "https://dict.leo.org/german-english/";
    var url = urlconst + inputword;
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);
      var block = document.getElementsByTagName('td');
      for (var td in block) {
        if (td.attributes['lang'] == "de") {
          var subblock =
              td.getElementsByTagName('a')[2].getElementsByTagName('small')[0];
          if (subblock.text.isEmpty)
            plural = subblock.getElementsByTagName('span')[0].text;
          else
            plural = subblock.text;
          break;
        }
      }
      if (plural.isNotEmpty) {
        if (plural.contains(':'))
          plural = plural.substring(plural.indexOf(':') + 5).trim();
      } else {
        plural = "Not Found";
      }
    });
    return plural;
  }
}
