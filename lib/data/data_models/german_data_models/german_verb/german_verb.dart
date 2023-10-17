import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_verb_structure/german_verb_structure.dart';

part 'german_verb.freezed.dart';
part 'german_verb.g.dart';

@unfreezed
class GermanVerb with _$GermanVerb {
  const factory GermanVerb({
    final String? verb,
    final String? regular,
    final String? meaning,
    final String? model,
    final String? auxiliary,
    final String? participlePresent,
    final String? participlePerfect,
    final GermanVerbStructure? indicativePresent,
    final GermanVerbStructure? indicativePast,
    final GermanVerbStructure? indicativePerfect,
    final GermanVerbStructure? indicativePluPerfect,
    final GermanVerbStructure? indicativeFuture1,
    final GermanVerbStructure? indicativeFuture2,
    final GermanVerbStructure? conjunctive1Present,
    final GermanVerbStructure? conjunctive1Perfect,
    final GermanVerbStructure? conjunctive1Future1,
    final GermanVerbStructure? conjunctive1Future2,
    final GermanVerbStructure? conjunctive2Past,
    final GermanVerbStructure? conjunctive2PluPerfect,
    final GermanVerbStructure? conjunctive2Future1,
    final GermanVerbStructure? conjunctive2Future2,
    final GermanVerbStructure? imperativePresent,
  }) = _GermanVerb;

  factory GermanVerb.fromJson(Map<String, dynamic> json) =>
      _$GermanVerbFromJson(json);
}

@unfreezed
class GermanVerbsList with _$GermanVerbsList {
  factory GermanVerbsList({
    @Default(<GermanVerb>[]) List<GermanVerb> germanVerbsList
  }) = _GermanVerbsList;

  factory GermanVerbsList.fromJson(Map<String, dynamic> json) =>
      _$GermanVerbsListFromJson(json);
}