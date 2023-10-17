// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'german_verb.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GermanVerbImpl _$$GermanVerbImplFromJson(Map<String, dynamic> json) =>
    _$GermanVerbImpl(
      verb: json['verb'] as String?,
      regular: json['regular'] as String?,
      meaning: json['meaning'] as String?,
      model: json['model'] as String?,
      auxiliary: json['auxiliary'] as String?,
      participlePresent: json['participlePresent'] as String?,
      participlePerfect: json['participlePerfect'] as String?,
      indicativePresent: json['indicativePresent'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['indicativePresent'] as Map<String, dynamic>),
      indicativePast: json['indicativePast'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['indicativePast'] as Map<String, dynamic>),
      indicativePerfect: json['indicativePerfect'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['indicativePerfect'] as Map<String, dynamic>),
      indicativePluPerfect: json['indicativePluPerfect'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['indicativePluPerfect'] as Map<String, dynamic>),
      indicativeFuture1: json['indicativeFuture1'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['indicativeFuture1'] as Map<String, dynamic>),
      indicativeFuture2: json['indicativeFuture2'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['indicativeFuture2'] as Map<String, dynamic>),
      conjunctive1Present: json['conjunctive1Present'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['conjunctive1Present'] as Map<String, dynamic>),
      conjunctive1Perfect: json['conjunctive1Perfect'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['conjunctive1Perfect'] as Map<String, dynamic>),
      conjunctive1Future1: json['conjunctive1Future1'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['conjunctive1Future1'] as Map<String, dynamic>),
      conjunctive1Future2: json['conjunctive1Future2'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['conjunctive1Future2'] as Map<String, dynamic>),
      conjunctive2Past: json['conjunctive2Past'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['conjunctive2Past'] as Map<String, dynamic>),
      conjunctive2PluPerfect: json['conjunctive2PluPerfect'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['conjunctive2PluPerfect'] as Map<String, dynamic>),
      conjunctive2Future1: json['conjunctive2Future1'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['conjunctive2Future1'] as Map<String, dynamic>),
      conjunctive2Future2: json['conjunctive2Future2'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['conjunctive2Future2'] as Map<String, dynamic>),
      imperativePresent: json['imperativePresent'] == null
          ? null
          : GermanVerbStructure.fromJson(
              json['imperativePresent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GermanVerbImplToJson(_$GermanVerbImpl instance) =>
    <String, dynamic>{
      'verb': instance.verb,
      'regular': instance.regular,
      'meaning': instance.meaning,
      'model': instance.model,
      'auxiliary': instance.auxiliary,
      'participlePresent': instance.participlePresent,
      'participlePerfect': instance.participlePerfect,
      'indicativePresent': instance.indicativePresent,
      'indicativePast': instance.indicativePast,
      'indicativePerfect': instance.indicativePerfect,
      'indicativePluPerfect': instance.indicativePluPerfect,
      'indicativeFuture1': instance.indicativeFuture1,
      'indicativeFuture2': instance.indicativeFuture2,
      'conjunctive1Present': instance.conjunctive1Present,
      'conjunctive1Perfect': instance.conjunctive1Perfect,
      'conjunctive1Future1': instance.conjunctive1Future1,
      'conjunctive1Future2': instance.conjunctive1Future2,
      'conjunctive2Past': instance.conjunctive2Past,
      'conjunctive2PluPerfect': instance.conjunctive2PluPerfect,
      'conjunctive2Future1': instance.conjunctive2Future1,
      'conjunctive2Future2': instance.conjunctive2Future2,
      'imperativePresent': instance.imperativePresent,
    };

_$GermanVerbsListImpl _$$GermanVerbsListImplFromJson(
        Map<String, dynamic> json) =>
    _$GermanVerbsListImpl(
      germanVerbsList: (json['germanVerbsList'] as List<dynamic>?)
              ?.map((e) => GermanVerb.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GermanVerb>[],
    );

Map<String, dynamic> _$$GermanVerbsListImplToJson(
        _$GermanVerbsListImpl instance) =>
    <String, dynamic>{
      'germanVerbsList': instance.germanVerbsList,
    };
