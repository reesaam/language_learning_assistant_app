import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class GermanVerbs {
  ///get DeutschVerbs ReversoParse
  static Future<List<String>> getDeutschVerbsReversoParse() async {
    List<String> listVerb = List.empty(growable: true);

    List<String> urls = List.empty(growable: true);
    urls.add("https://conjugator.reverso.net/index-german-1-250.html");
    urls.add("https://conjugator.reverso.net/index-german-251-500.html");
    urls.add("https://conjugator.reverso.net/index-german-501-750.html");
    urls.add("https://conjugator.reverso.net/index-german-751-1000.html");
    urls.add("https://conjugator.reverso.net/index-german-1001-1250.html");
    urls.add("https://conjugator.reverso.net/index-german-1251-1500.html");
    urls.add("https://conjugator.reverso.net/index-german-1501-1750.html");
    urls.add("https://conjugator.reverso.net/index-german-1751-2000.html");
    
    for (var u in urls) {
      await http.get(Uri.parse(u)).then((value) {
        dom.Document document = parser.parse(value.body);
        
        var mainBlock = document.getElementsByClassName('index-content')[0];
        var listBlock = mainBlock.getElementsByTagName('li');
        for (var lb in listBlock) {
          var item = lb.getElementsByTagName('a')[0].innerHtml;
          listVerb.add(item);
        }
      });
    }

    listVerb.sort();

    return listVerb;
  }
}