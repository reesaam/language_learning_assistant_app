// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'german_word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GermanWord _$GermanWordFromJson(Map<String, dynamic> json) {
  return _GermanWord.fromJson(json);
}

/// @nodoc
mixin _$GermanWord {
  String? get word => throw _privateConstructorUsedError;
  String? get article => throw _privateConstructorUsedError;
  String? get plural => throw _privateConstructorUsedError;
  List<String>? get meanings => throw _privateConstructorUsedError;
  List<String>? get synonyms => throw _privateConstructorUsedError;
  List<String>? get antonyms => throw _privateConstructorUsedError;
  List<String>? get examples => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GermanWordCopyWith<GermanWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GermanWordCopyWith<$Res> {
  factory $GermanWordCopyWith(
          GermanWord value, $Res Function(GermanWord) then) =
      _$GermanWordCopyWithImpl<$Res, GermanWord>;
  @useResult
  $Res call(
      {String? word,
      String? article,
      String? plural,
      List<String>? meanings,
      List<String>? synonyms,
      List<String>? antonyms,
      List<String>? examples});
}

/// @nodoc
class _$GermanWordCopyWithImpl<$Res, $Val extends GermanWord>
    implements $GermanWordCopyWith<$Res> {
  _$GermanWordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = freezed,
    Object? article = freezed,
    Object? plural = freezed,
    Object? meanings = freezed,
    Object? synonyms = freezed,
    Object? antonyms = freezed,
    Object? examples = freezed,
  }) {
    return _then(_value.copyWith(
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      plural: freezed == plural
          ? _value.plural
          : plural // ignore: cast_nullable_to_non_nullable
              as String?,
      meanings: freezed == meanings
          ? _value.meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      synonyms: freezed == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      antonyms: freezed == antonyms
          ? _value.antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      examples: freezed == examples
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GermanWordImplCopyWith<$Res>
    implements $GermanWordCopyWith<$Res> {
  factory _$$GermanWordImplCopyWith(
          _$GermanWordImpl value, $Res Function(_$GermanWordImpl) then) =
      __$$GermanWordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? word,
      String? article,
      String? plural,
      List<String>? meanings,
      List<String>? synonyms,
      List<String>? antonyms,
      List<String>? examples});
}

/// @nodoc
class __$$GermanWordImplCopyWithImpl<$Res>
    extends _$GermanWordCopyWithImpl<$Res, _$GermanWordImpl>
    implements _$$GermanWordImplCopyWith<$Res> {
  __$$GermanWordImplCopyWithImpl(
      _$GermanWordImpl _value, $Res Function(_$GermanWordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = freezed,
    Object? article = freezed,
    Object? plural = freezed,
    Object? meanings = freezed,
    Object? synonyms = freezed,
    Object? antonyms = freezed,
    Object? examples = freezed,
  }) {
    return _then(_$GermanWordImpl(
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      plural: freezed == plural
          ? _value.plural
          : plural // ignore: cast_nullable_to_non_nullable
              as String?,
      meanings: freezed == meanings
          ? _value.meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      synonyms: freezed == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      antonyms: freezed == antonyms
          ? _value.antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      examples: freezed == examples
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GermanWordImpl implements _GermanWord {
  const _$GermanWordImpl(
      {this.word,
      this.article,
      this.plural,
      this.meanings,
      this.synonyms,
      this.antonyms,
      this.examples});

  factory _$GermanWordImpl.fromJson(Map<String, dynamic> json) =>
      _$$GermanWordImplFromJson(json);

  @override
  final String? word;
  @override
  final String? article;
  @override
  final String? plural;
  @override
  final List<String>? meanings;
  @override
  final List<String>? synonyms;
  @override
  final List<String>? antonyms;
  @override
  final List<String>? examples;

  @override
  String toString() {
    return 'GermanWord(word: $word, article: $article, plural: $plural, meanings: $meanings, synonyms: $synonyms, antonyms: $antonyms, examples: $examples)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GermanWordImplCopyWith<_$GermanWordImpl> get copyWith =>
      __$$GermanWordImplCopyWithImpl<_$GermanWordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GermanWordImplToJson(
      this,
    );
  }
}

abstract class _GermanWord implements GermanWord {
  const factory _GermanWord(
      {final String? word,
      final String? article,
      final String? plural,
      final List<String>? meanings,
      final List<String>? synonyms,
      final List<String>? antonyms,
      final List<String>? examples}) = _$GermanWordImpl;

  factory _GermanWord.fromJson(Map<String, dynamic> json) =
      _$GermanWordImpl.fromJson;

  @override
  String? get word;
  @override
  String? get article;
  @override
  String? get plural;
  @override
  List<String>? get meanings;
  @override
  List<String>? get synonyms;
  @override
  List<String>? get antonyms;
  @override
  List<String>? get examples;
  @override
  @JsonKey(ignore: true)
  _$$GermanWordImplCopyWith<_$GermanWordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
