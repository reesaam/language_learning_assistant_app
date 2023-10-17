import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class GetTranslationCambridge {
  ///Plural
  static Future<String> getPlural(String inputword) async {
    String plural = "";
    var urlconst =
        "https://dictionary.cambridge.org/dictionary/german-english/";
    var url = urlconst + "${inputword.toLowerCase()}?q=${inputword}";
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);
      var mainblock = document.getElementsByClassName('dictionary')[0];
      var blocks =
      mainblock.getElementsByClassName('dpos-h di-head normal-entry');
      for (var b in blocks)
        if (b.getElementsByTagName('h2')[0].text == inputword) {
          var subblocks = b.getElementsByClassName('inf-group dinfg ');
          for (var sb in subblocks)
            if (sb.getElementsByClassName('lab dlab')[0].text == "plural")
              plural = sb.getElementsByTagName('b')[0].text;
        }
    });
    return plural;
  }
}
