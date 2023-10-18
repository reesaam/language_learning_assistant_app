// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppData _$AppDataFromJson(Map<String, dynamic> json) {
  return _AppData.fromJson(json);
}

/// @nodoc
mixin _$AppData {
  GermanWordsList? get wordsList => throw _privateConstructorUsedError;
  GermanVerbsList? get verbsList => throw _privateConstructorUsedError;
  GermanWordsList? get savedList => throw _privateConstructorUsedError;
  AppSettingData? get setting => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppDataCopyWith<AppData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppDataCopyWith<$Res> {
  factory $AppDataCopyWith(AppData value, $Res Function(AppData) then) =
      _$AppDataCopyWithImpl<$Res, AppData>;
  @useResult
  $Res call(
      {GermanWordsList? wordsList,
      GermanVerbsList? verbsList,
      GermanWordsList? savedList,
      AppSettingData? setting});

  $GermanWordsListCopyWith<$Res>? get wordsList;
  $GermanVerbsListCopyWith<$Res>? get verbsList;
  $GermanWordsListCopyWith<$Res>? get savedList;
  $AppSettingDataCopyWith<$Res>? get setting;
}

/// @nodoc
class _$AppDataCopyWithImpl<$Res, $Val extends AppData>
    implements $AppDataCopyWith<$Res> {
  _$AppDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordsList = freezed,
    Object? verbsList = freezed,
    Object? savedList = freezed,
    Object? setting = freezed,
  }) {
    return _then(_value.copyWith(
      wordsList: freezed == wordsList
          ? _value.wordsList
          : wordsList // ignore: cast_nullable_to_non_nullable
              as GermanWordsList?,
      verbsList: freezed == verbsList
          ? _value.verbsList
          : verbsList // ignore: cast_nullable_to_non_nullable
              as GermanVerbsList?,
      savedList: freezed == savedList
          ? _value.savedList
          : savedList // ignore: cast_nullable_to_non_nullable
              as GermanWordsList?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as AppSettingData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GermanWordsListCopyWith<$Res>? get wordsList {
    if (_value.wordsList == null) {
      return null;
    }

    return $GermanWordsListCopyWith<$Res>(_value.wordsList!, (value) {
      return _then(_value.copyWith(wordsList: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GermanVerbsListCopyWith<$Res>? get verbsList {
    if (_value.verbsList == null) {
      return null;
    }

    return $GermanVerbsListCopyWith<$Res>(_value.verbsList!, (value) {
      return _then(_value.copyWith(verbsList: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GermanWordsListCopyWith<$Res>? get savedList {
    if (_value.savedList == null) {
      return null;
    }

    return $GermanWordsListCopyWith<$Res>(_value.savedList!, (value) {
      return _then(_value.copyWith(savedList: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppSettingDataCopyWith<$Res>? get setting {
    if (_value.setting == null) {
      return null;
    }

    return $AppSettingDataCopyWith<$Res>(_value.setting!, (value) {
      return _then(_value.copyWith(setting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppDataImplCopyWith<$Res> implements $AppDataCopyWith<$Res> {
  factory _$$AppDataImplCopyWith(
          _$AppDataImpl value, $Res Function(_$AppDataImpl) then) =
      __$$AppDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GermanWordsList? wordsList,
      GermanVerbsList? verbsList,
      GermanWordsList? savedList,
      AppSettingData? setting});

  @override
  $GermanWordsListCopyWith<$Res>? get wordsList;
  @override
  $GermanVerbsListCopyWith<$Res>? get verbsList;
  @override
  $GermanWordsListCopyWith<$Res>? get savedList;
  @override
  $AppSettingDataCopyWith<$Res>? get setting;
}

/// @nodoc
class __$$AppDataImplCopyWithImpl<$Res>
    extends _$AppDataCopyWithImpl<$Res, _$AppDataImpl>
    implements _$$AppDataImplCopyWith<$Res> {
  __$$AppDataImplCopyWithImpl(
      _$AppDataImpl _value, $Res Function(_$AppDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordsList = freezed,
    Object? verbsList = freezed,
    Object? savedList = freezed,
    Object? setting = freezed,
  }) {
    return _then(_$AppDataImpl(
      wordsList: freezed == wordsList
          ? _value.wordsList
          : wordsList // ignore: cast_nullable_to_non_nullable
              as GermanWordsList?,
      verbsList: freezed == verbsList
          ? _value.verbsList
          : verbsList // ignore: cast_nullable_to_non_nullable
              as GermanVerbsList?,
      savedList: freezed == savedList
          ? _value.savedList
          : savedList // ignore: cast_nullable_to_non_nullable
              as GermanWordsList?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as AppSettingData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppDataImpl implements _AppData {
  const _$AppDataImpl(
      {this.wordsList, this.verbsList, this.savedList, this.setting});

  factory _$AppDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppDataImplFromJson(json);

  @override
  final GermanWordsList? wordsList;
  @override
  final GermanVerbsList? verbsList;
  @override
  final GermanWordsList? savedList;
  @override
  final AppSettingData? setting;

  @override
  String toString() {
    return 'AppData(wordsList: $wordsList, verbsList: $verbsList, savedList: $savedList, setting: $setting)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppDataImplCopyWith<_$AppDataImpl> get copyWith =>
      __$$AppDataImplCopyWithImpl<_$AppDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppDataImplToJson(
      this,
    );
  }
}

abstract class _AppData implements AppData {
  const factory _AppData(
      {final GermanWordsList? wordsList,
      final GermanVerbsList? verbsList,
      final GermanWordsList? savedList,
      final AppSettingData? setting}) = _$AppDataImpl;

  factory _AppData.fromJson(Map<String, dynamic> json) = _$AppDataImpl.fromJson;

  @override
  GermanWordsList? get wordsList;
  @override
  GermanVerbsList? get verbsList;
  @override
  GermanWordsList? get savedList;
  @override
  AppSettingData? get setting;
  @override
  @JsonKey(ignore: true)
  _$$AppDataImplCopyWith<_$AppDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
