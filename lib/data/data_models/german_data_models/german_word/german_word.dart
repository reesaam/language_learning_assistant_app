import 'package:freezed_annotation/freezed_annotation.dart';

part 'german_word.freezed.dart';
part 'german_word.g.dart';

@unfreezed
class GermanWord with _$GermanWord {
  const factory GermanWord({
    final String? word,
    final String? article,
    final String? plural,
    final List<String>? meanings,
    final List<String>? synonyms,
    final List<String>? antonyms,
    final List<String>? examples,
  }) = _GermanWord;

  factory GermanWord.fromJson(Map<String, dynamic> json) =>
      _$GermanWordFromJson(json);
}