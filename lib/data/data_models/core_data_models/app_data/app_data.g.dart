// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppDataImpl _$$AppDataImplFromJson(Map<String, dynamic> json) =>
    _$AppDataImpl(
      wordsList: json['wordsList'] == null
          ? null
          : GermanWordsList.fromJson(json['wordsList'] as Map<String, dynamic>),
      verbsList: json['verbsList'] == null
          ? null
          : GermanVerbsList.fromJson(json['verbsList'] as Map<String, dynamic>),
      savedList: json['savedList'] == null
          ? null
          : GermanWordsList.fromJson(json['savedList'] as Map<String, dynamic>),
      setting: json['setting'] == null
          ? null
          : AppSettingData.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppDataImplToJson(_$AppDataImpl instance) =>
    <String, dynamic>{
      'wordsList': instance.wordsList,
      'verbsList': instance.verbsList,
      'savedList': instance.savedList,
      'setting': instance.setting,
    };
