import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;
import 'package:language_learning_assistant_app/data/contents_providers/german_content_providers/german_translation_providers/german_word_translate_reverso.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_verb/german_verb.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_verb_structure/german_verb_structure.dart';

class VerbConjugate {
  Future<GermanVerb> getVerbConjugate(String inputVerb) async {
    GermanVerb output = const GermanVerb();
    output = await _getVerbConjugateReversoParse(inputVerb);
    output = output.copyWith(regular: await _getRegularity(inputVerb));
    output = output.copyWith(
        meaning: _wordMeanings(
            await GetTranslationDataReverso.getMeanings(inputVerb)));
    return output;
  }

  ///Meanings Text Provider
  String _wordMeanings(List<String> list) {
    String text = "";
    for (var t in list) {
      text += t;
      list.indexOf(t) < list.length - 2 ? text += ", " : text += "";
    }
    return text;
  }

  ///Regularity
  Future<String> _getRegularity(String inputVerb) async {
    String regular = "";

    var urlConst = "https://www.verbformen.com/declension/nouns/?w=";
    var url = urlConst + inputVerb;
    await http.get(Uri.parse(url)).then((value) {
      if (value.statusCode == 200) {
        dom.Document document = parser.parse(value.body);

        var block = document.getElementsByClassName('rBox rBoxWht ')[0];
        var blockReg = block.getElementsByClassName('rInf')[0];
        blockReg.text.contains("regular")
            ? regular = "Regular"
            : regular = "Irregular";
      }
    }).timeout(const Duration(seconds: 30));
    return regular;
  }

  ///Reverso Verb Conjugate
  Future<GermanVerb> _getVerbConjugateReversoParse(String inputVerb) async {
    GermanVerbStructure getVerbConjugationStructure(dom.Element element) {
      GermanVerbStructure gvs = const GermanVerbStructure();
      var list = element.getElementsByTagName('li');
      for (var i in list) {
        String s2 = "";
        String s3 = "";
        bool version2 = false;
        if (i.attributes['v'] == "2") version2 = true;
        for (var z in i.getElementsByTagName('i')) {
          if (z != i.firstChild) {
            version2 ? s3 += z.innerHtml : s2 += z.innerHtml;
          }
          var s1 = i.getElementsByTagName('i')[0].innerHtml.trim();
          // var s2 = i.getElementsByTagName('i')[1].innerHtml.trim();
          if (s2.isNotEmpty) {
            switch (s1) {
              case 'ich':
                gvs = gvs.copyWith(ich: s2);
                break;
              case 'du':
                gvs = gvs.copyWith(du: s2);
                break;
              case 'er/sie/es':
                gvs = gvs.copyWith(erSieEs: s2);
                break;
              case 'wir':
                gvs = gvs.copyWith(wir: s2);
                break;
              case 'ihr':
                gvs = gvs.copyWith(ihr: s2);
                break;
              case 'Sie':
                gvs = gvs.copyWith(sieSie: s2);
                break;
              default:
                break;
            }
          }
          if (s3.isNotEmpty) {
            String str = " ($s3)";
            switch (s1) {
              case 'ich':
                gvs = gvs.copyWith(ich: '${gvs.ich}$str');
                break;
              case 'du':
                gvs = gvs.copyWith(du: '${gvs.du}$str');
                break;
              case 'er/sie/es':
                gvs = gvs.copyWith(erSieEs: '${gvs.erSieEs}$str');
                break;
              case 'wir':
                gvs = gvs.copyWith(wir: '${gvs.wir}$str');
                break;
              case 'ihr':
                gvs = gvs.copyWith(ihr: '${gvs.ihr}$str');
                break;
              case 'Sie':
                gvs = gvs.copyWith(sieSie: '${gvs.sieSie}$str');
                break;
              default:
                break;
            }
          }
        }
      }

      return gvs;
    }

    GermanVerb verb = const GermanVerb();
    verb = verb.copyWith(verb: inputVerb);

    ///URL
    var urlConst = "https://conjugator.reverso.net/conjugation-german-verb-";
    var url = "$urlConst$inputVerb.html";

    ///Get Data
    await http.get(Uri.parse(url)).then((value) {
      dom.Document document = parser.parse(value.body);

      ///Meaning
      // var blockMeaning = document.getElementById('list-translations');
      // verb.meaning = blockMeaning!.getElementsByTagName('p')[0].innerHtml;
      // DeutschWordTranslation()
      //     .getTranslation(inputVerb)
      //     .then((value) => verb.meaning = _wordMeanings(value.meanings));

      ///Alternatives
      var blockAlternatives =
          document.getElementsByClassName('alternate-versions')[0];
      var spansAlternatives = blockAlternatives.getElementsByTagName('span');
      for (var s in spansAlternatives) {
        ///Auxiliary
        if (s.id == "ch_lblAuxiliary") {
          verb = verb.copyWith(
              auxiliary: s.getElementsByTagName('a')[0].innerHtml);
        }

        ///Model
        else if (s.id == "ch_lblModel") {
          verb = verb.copyWith(model: s.getElementsByTagName('a')[0].innerHtml);
        }
      }

      ///Verb Forms
      var blockVerbForms = document.getElementsByTagName('div');
      for (var item in blockVerbForms) {
        ///Partizip Präsens
        if (item.attributes['mobile-title'] == "Partizip Präsens") {
          var listPresentParticiple = item.getElementsByTagName('li')[0];
          var elementsPresentParticiple =
              listPresentParticiple.getElementsByTagName('i');
          for (var i in elementsPresentParticiple) {
            verb = verb.copyWith(
                participlePresent: '${verb.participlePresent}${i.innerHtml}');
          }

          ///Partizip Perfekt
        } else if (item.attributes['mobile-title'] == "Partizip Perfekt") {
          var listPerfectParticiple = item.getElementsByTagName('li')[0];
          var elementsPerfectParticiple =
              listPerfectParticiple.getElementsByTagName('i');
          for (var i in elementsPerfectParticiple) {
            verb = verb.copyWith(
                participlePerfect: '${verb.participlePerfect}${i.innerHtml}');
          }
        }
      }

      ///Verb Conjugate
      var blockMainConjugate =
          document.getElementsByClassName('result-block-api')[0];
      var subBlockConjugate = blockMainConjugate.getElementsByTagName('div');
      for (var element in subBlockConjugate) {
        var result = getVerbConjugationStructure(element);
        switch (element.attributes['mobile-title']) {
          case "Indikativ Präsens":
            verb = verb.copyWith(imperativePresent: result);
            break;
          case "Indikativ Perfekt":
            verb = verb.copyWith(indicativePerfect: result);
            break;
          case "Indikativ Präteritum":
            verb = verb.copyWith(indicativePast: result);
            break;
          case "Indikativ Futur I":
            verb = verb.copyWith(indicativeFuture1: result);
            break;
          case "Indikativ Plusquamperfekt":
            verb = verb.copyWith(indicativePluPerfect: result);
            break;
          case "Indikativ Futur II":
            verb = verb.copyWith(indicativeFuture2: result);
            break;
          case "Konjunktiv I Präsens":
            verb = verb.copyWith(conjunctive1Present: result);
            break;
          case "Konjunktiv I Perfekt":
            verb = verb.copyWith(conjunctive1Perfect: result);
            break;
          case "Konjunktiv I Futur I":
            verb = verb.copyWith(conjunctive1Future1: result);
            break;
          case "Konjunktiv I Futur II":
            verb = verb.copyWith(conjunctive1Future2: result);
            break;
          case "Konjunktiv II Präteritum":
            verb = verb.copyWith(conjunctive2Past: result);
            break;
          case "Konjunktiv II Futur I":
            verb = verb.copyWith(conjunctive2Future1: result);
            break;
          case "Konjunktiv II Futur II":
            verb = verb.copyWith(conjunctive2Future2: result);
            break;
          case "Konjunktiv II Plusquamperfekt":
            verb = verb.copyWith(conjunctive2PluPerfect: result);
            break;
          default:
            break;
        }

        ///Imperative Present
        if (element.attributes['mobile-title'] == "Imperativ Präsens") {
          var list = element.getElementsByTagName('li');
          bool version2 = false;
          for (var i in list) {
            if (i.attributes['v'] == "2") version2 = true;
            var s1 = i.getElementsByTagName('i')[1].innerHtml.trim();
            var s2 = i.getElementsByTagName('i')[0].innerHtml.trim();
            if (!version2) {
              switch (s1) {
                case '(du)':
                  verb = verb.copyWith(
                      imperativePresent:
                          verb.imperativePresent!.copyWith(du: s2));
                  break;
                case 'wir':
                  verb = verb.copyWith(
                      imperativePresent:
                          verb.imperativePresent!.copyWith(wir: s2));
                  break;
                case 'ihr':
                  verb = verb.copyWith(
                      imperativePresent:
                          verb.imperativePresent!.copyWith(ihr: s2));
                  break;
                case 'Sie':
                  verb = verb.copyWith(
                      imperativePresent:
                          verb.imperativePresent!.copyWith(sieSie: s2));
                  break;
                default:
                  break;
              }
            } else {
              String str = " ($s2)";
              switch (s1) {
                case '(du)':
                  verb = verb.copyWith(
                      imperativePresent:
                          verb.imperativePresent!.copyWith(du: '$s2$str'));
                  break;
                case 'wir':
                  verb = verb.copyWith(
                      imperativePresent:
                          verb.imperativePresent!.copyWith(wir: '$s2$str'));
                  break;
                case 'ihr':
                  verb = verb.copyWith(
                      imperativePresent:
                          verb.imperativePresent!.copyWith(ihr: '$s2$str'));
                  break;
                case 'Sie':
                  verb = verb.copyWith(
                      imperativePresent:
                          verb.imperativePresent!.copyWith(sieSie: '$s2$str'));
                  break;
                default:
                  break;
              }
            }
          }
        }
      }
    });

    return verb;
  }
}
