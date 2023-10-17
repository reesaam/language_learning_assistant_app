// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'german_word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GermanWordImpl _$$GermanWordImplFromJson(Map<String, dynamic> json) =>
    _$GermanWordImpl(
      word: json['word'] as String?,
      article: json['article'] as String?,
      plural: json['plural'] as String?,
      meanings: (json['meanings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      antonyms: (json['antonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      examples: (json['examples'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$GermanWordImplToJson(_$GermanWordImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'article': instance.article,
      'plural': instance.plural,
      'meanings': instance.meanings,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
      'examples': instance.examples,
    };

_$GermanWordsListImpl _$$GermanWordsListImplFromJson(
        Map<String, dynamic> json) =>
    _$GermanWordsListImpl(
      germanWordsList: (json['germanWordsList'] as List<dynamic>?)
              ?.map((e) => GermanWord.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GermanWord>[],
    );

Map<String, dynamic> _$$GermanWordsListImplToJson(
        _$GermanWordsListImpl instance) =>
    <String, dynamic>{
      'germanWordsList': instance.germanWordsList,
    };
