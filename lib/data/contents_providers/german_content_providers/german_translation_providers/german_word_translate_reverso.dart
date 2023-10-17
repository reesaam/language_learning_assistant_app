import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class GetTranslationDataReverso {
  ///Meanings
  static Future<List<String>> getMeanings(String inputword) async {
    List<String> meanings = List.empty(growable: true);
    var urlconst = "https://context.reverso.net/translation/german-english/";
    var url = urlconst + inputword;
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);
      var blockTranslation = document
          .getElementById('translations-content')!
          .getElementsByTagName('a');
      for (var item in blockTranslation) {
        var pos = item.attributes['data-pos'].toString();
        pos = pos.replaceAll('[', "");
        pos = pos.replaceAll(']', "");
        if (pos.isEmpty || pos == "null") pos = "";
        else pos = " (${pos}.)";
        var meaning = item.text.replaceAll("\n", "").trim();
        meanings.add(meaning + pos);
      }
    });
    return meanings;
  }

  ///Examples
  static Future<List<String>> getExamples(String inputword) async {
    List<String> examples = List.empty(growable: true);
    examples.add("NONE");
    var urlconst = "https://context.reverso.net/translation/german-english/";
    var url = urlconst + inputword;
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);
      var blockExamples = document.getElementsByClassName('example');
      for (var item in blockExamples) {
        var example = item.getElementsByTagName('span')[0].text;
        var translation = item.getElementsByTagName('span')[2].text;
        var string = "${example.trim()}\n(${translation.trim()})";
        examples.add(string);
      }
    });
    return examples;
  }

  ///Article
  static Future<String> getArticle(String inputword) async {
    String article = "";
    var urlconst = "https://dictionary.reverso.net/german-english/";
    var url = urlconst + inputword;
    await http.get(Uri.parse((url))).then((value) {
      dom.Document document = parser.parse(value.body);
      var mainblock = document
          .getElementById('TableHTMLResult')!
          .getElementsByClassName('translate_box0')[0];
      var blocks = mainblock.getElementsByTagName('b');
      var gender = blocks[1].text.trim();
      switch (gender) {
        case "m":
          article = "der";
          break;
        case "f":
          article = "die";
          break;
        case "nt":
          article = "das";
          break;
        default:
          article = "Unknown";
          break;
      }
    });
    return article;
  }

  ///Synonyms
  static Future<List<String>> getSynonyms(String inputword) async {
    List<String> synonyms = List.empty(growable: true);
    var urlconst = "https://synonyms.reverso.net/synonym/de/";
    var url = urlconst + inputword;
    await http.get(Uri.parse((url))).then((value) {
      if (value.statusCode == 200) {
        dom.Document document = parser.parse(value.body);
        var blockSynonyms = document
            .getElementsByClassName('word-box null-margin')[0]
            .getElementsByTagName('li');
        for (var item in blockSynonyms) {
          synonyms.add(item.getElementsByTagName('a')[0].text);
        }
      }
    });
    return synonyms;
  }

  ///Antonyms
  static Future<List<String>> getAntonyms(String inputword) async {
    List<String> antonyms = List.empty(growable: true);
    var urlconst = "https://synonyms.reverso.net/synonym/de/";
    var url = urlconst + inputword;
    await http.get(Uri.parse((url))).then((value) {
      dom.Document document = parser.parse(value.body);
      var blockAntonymsList = document
          .getElementsByClassName('word-box null-margin')[1]
          .getElementsByTagName('li');
      for (var item in blockAntonymsList) {
        if (item.className == " " || item.className == " last") {
          antonyms.add(item.getElementsByTagName('a')[0].innerHtml);
        }
      }
    });
    return antonyms;
  }

  ///Pos
  static Future<String> getPos(String inputword) async {
    String pos = "";
    var urlconst = "https://context.reverso.net/translation/german-english/";
    var url = urlconst + inputword;
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);
      var posblock = document.getElementById('pos-filters');
      pos = posblock!.getElementsByTagName('button')[0].text.trim();
    });
    return pos;
  }

  ///Plural
  static Future<String> getPlural(String inputword) async {
    String plural = "Not Found!";
    var urlconst = "https://dictionary.reverso.net/german-english/";
    var url = urlconst + inputword;
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);
      var mainblock = document
          .getElementById('TableHTMLResult')!
          .getElementsByClassName('translate_box0')[0];
      var blocks = mainblock.getElementsByTagName('b');
      var block = blocks[2]
          .getElementsByTagName('span')[0]
          .getElementsByTagName('span')[0];
      var string = block.text.substring(block.text.lastIndexOf('-') + 1).trim();
      if (!string.contains("\"")) {
        plural = inputword + string;
      }
    });
    return plural;
  }
}
