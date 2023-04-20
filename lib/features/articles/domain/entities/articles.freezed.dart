// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Articles {
  String? get status => throw _privateConstructorUsedError;
  List<Article>? get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticlesCopyWith<Articles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesCopyWith<$Res> {
  factory $ArticlesCopyWith(Articles value, $Res Function(Articles) then) =
      _$ArticlesCopyWithImpl<$Res, Articles>;
  @useResult
  $Res call({String? status, List<Article>? results});
}

/// @nodoc
class _$ArticlesCopyWithImpl<$Res, $Val extends Articles>
    implements $ArticlesCopyWith<$Res> {
  _$ArticlesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticlesCopyWith<$Res> implements $ArticlesCopyWith<$Res> {
  factory _$$_ArticlesCopyWith(
          _$_Articles value, $Res Function(_$_Articles) then) =
      __$$_ArticlesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, List<Article>? results});
}

/// @nodoc
class __$$_ArticlesCopyWithImpl<$Res>
    extends _$ArticlesCopyWithImpl<$Res, _$_Articles>
    implements _$$_ArticlesCopyWith<$Res> {
  __$$_ArticlesCopyWithImpl(
      _$_Articles _value, $Res Function(_$_Articles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_Articles(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
    ));
  }
}

/// @nodoc

class _$_Articles implements _Articles {
  const _$_Articles({this.status, final List<Article>? results})
      : _results = results;

  @override
  final String? status;
  final List<Article>? _results;
  @override
  List<Article>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Articles(status: $status, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Articles &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticlesCopyWith<_$_Articles> get copyWith =>
      __$$_ArticlesCopyWithImpl<_$_Articles>(this, _$identity);
}

abstract class _Articles implements Articles {
  const factory _Articles(
      {final String? status, final List<Article>? results}) = _$_Articles;

  @override
  String? get status;
  @override
  List<Article>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_ArticlesCopyWith<_$_Articles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Article {
  String? get title => throw _privateConstructorUsedError;
  String? get abstract => throw _privateConstructorUsedError;
  String? get publishedDate => throw _privateConstructorUsedError;
  String? get byline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {String? title, String? abstract, String? publishedDate, String? byline});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? abstract = freezed,
    Object? publishedDate = freezed,
    Object? byline = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      byline: freezed == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$_ArticleCopyWith(
          _$_Article value, $Res Function(_$_Article) then) =
      __$$_ArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title, String? abstract, String? publishedDate, String? byline});
}

/// @nodoc
class __$$_ArticleCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$_Article>
    implements _$$_ArticleCopyWith<$Res> {
  __$$_ArticleCopyWithImpl(_$_Article _value, $Res Function(_$_Article) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? abstract = freezed,
    Object? publishedDate = freezed,
    Object? byline = freezed,
  }) {
    return _then(_$_Article(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      byline: freezed == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Article implements _Article {
  const _$_Article(
      {this.title, this.abstract, this.publishedDate, this.byline});

  @override
  final String? title;
  @override
  final String? abstract;
  @override
  final String? publishedDate;
  @override
  final String? byline;

  @override
  String toString() {
    return 'Article(title: $title, abstract: $abstract, publishedDate: $publishedDate, byline: $byline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Article &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.abstract, abstract) ||
                other.abstract == abstract) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.byline, byline) || other.byline == byline));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, abstract, publishedDate, byline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      __$$_ArticleCopyWithImpl<_$_Article>(this, _$identity);
}

abstract class _Article implements Article {
  const factory _Article(
      {final String? title,
      final String? abstract,
      final String? publishedDate,
      final String? byline}) = _$_Article;

  @override
  String? get title;
  @override
  String? get abstract;
  @override
  String? get publishedDate;
  @override
  String? get byline;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      throw _privateConstructorUsedError;
}
