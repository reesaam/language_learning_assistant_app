import 'package:freezed_annotation/freezed_annotation.dart';

part 'german_verb_structure.freezed.dart';
part 'german_verb_structure.g.dart';

@unfreezed
class GermanVerbStructure with _$GermanVerbStructure {
  const factory GermanVerbStructure({
    final String? ich,
    final String? du,
    final String? erSieEs,
    final String? wir,
    final String? ihr,
    final String? sieSie,
  }) = _GermanVerbStructure;

  factory GermanVerbStructure.fromJson(Map<String, dynamic> json) =>
      _$GermanVerbStructureFromJson(json);
}