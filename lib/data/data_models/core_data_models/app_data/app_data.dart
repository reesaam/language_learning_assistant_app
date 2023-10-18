import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:language_learning_assistant_app/data/data_models/core_data_models/app_settings_data/app_setting_data.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_verb/german_verb.dart';
import 'package:language_learning_assistant_app/data/data_models/german_data_models/german_word/german_word.dart';

part 'app_data.freezed.dart';
part 'app_data.g.dart';

@unfreezed
class AppData with _$AppData {
  const factory AppData({
    final GermanWordsList? wordsList,
    final GermanVerbsList? verbsList,
    final GermanWordsList? savedList,
    final AppSettingData? setting,
  }) = _AppData;

  factory AppData.fromJson(Map<String, dynamic> json) =>
      _$AppDataFromJson(json);
}