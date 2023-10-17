import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class GetTranslationDataReverso {
  ///Meanings
  static Future<List<String>> getMeanings(String inputWord) async {
    List<String> meanings = List.empty(growable: true);
    var urlConst = "https://context.reverso.net/translation/german-english/";
    var url = urlConst + inputWord;
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);
      var blockTranslation = document
          .getElementById('translations-content')!
          .getElementsByTagName('a');
      for (var item in blockTranslation) {
        var pos = item.attributes['data-pos'].toString();
        pos = pos.replaceAll('[', "");
        pos = pos.replaceAll(']', "");
        if (pos.isEmpty || pos == "null") {
          pos = "";
        } else {
          pos = " ($pos.)";
        }
        var meaning = item.text.replaceAll("\n", "").trim();
        meanings.add(meaning + pos);
      }
    });
    return meanings;
  }

  ///Examples
  static Future<List<String>> getExamples(String inputWord) async {
    List<String> examples = List.empty(growable: true);
    examples.add("NONE");
    var urlConst = "https://context.reverso.net/translation/german-english/";
    var url = urlConst + inputWord;
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
  static Future<String> getArticle(String inputWord) async {
    String article = "";
    var urlConst = "https://dictionary.reverso.net/german-english/";
    var url = urlConst + inputWord;
    await http.get(Uri.parse((url))).then((value) {
      dom.Document document = parser.parse(value.body);
      var mainBlock = document
          .getElementById('TableHTMLResult')!
          .getElementsByClassName('translate_box0')[0];
      var blocks = mainBlock.getElementsByTagName('b');
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
  static Future<List<String>> getSynonyms(String inputWord) async {
    List<String> synonyms = List.empty(growable: true);
    var urlConst = "https://synonyms.reverso.net/synonym/de/";
    var url = urlConst + inputWord;
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
  static Future<List<String>> getAntonyms(String inputWord) async {
    List<String> antonyms = List.empty(growable: true);
    var urlConst = "https://synonyms.reverso.net/synonym/de/";
    var url = urlConst + inputWord;
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
  static Future<String> getPos(String inputWord) async {
    String pos = "";
    var urlConst = "https://context.reverso.net/translation/german-english/";
    var url = urlConst + inputWord;
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);
      var posBlock = document.getElementById('pos-filters');
      pos = posBlock!.getElementsByTagName('button')[0].text.trim();
    });
    return pos;
  }

  ///Plural
  static Future<String> getPlural(String inputWord) async {
    String plural = "Not Found!";
    var urlConst = "https://dictionary.reverso.net/german-english/";
    var url = urlConst + inputWord;
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);
      var mainBlock = document
          .getElementById('TableHTMLResult')!
          .getElementsByClassName('translate_box0')[0];
      var blocks = mainBlock.getElementsByTagName('b');
      var block = blocks[2]
          .getElementsByTagName('span')[0]
          .getElementsByTagName('span')[0];
      var string = block.text.substring(block.text.lastIndexOf('-') + 1).trim();
      if (!string.contains("\"")) {
        plural = inputWord + string;
      }
    });
    return plural;
  }
}
