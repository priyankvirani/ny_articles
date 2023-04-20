// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleResponse _$ArticleResponseFromJson(Map<String, dynamic> json) {
  return _ArticleResponse.fromJson(json);
}

/// @nodoc
mixin _$ArticleResponse {
  String? get status => throw _privateConstructorUsedError;
  List<DataArticle>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleResponseCopyWith<ArticleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleResponseCopyWith<$Res> {
  factory $ArticleResponseCopyWith(
          ArticleResponse value, $Res Function(ArticleResponse) then) =
      _$ArticleResponseCopyWithImpl<$Res, ArticleResponse>;
  @useResult
  $Res call({String? status, List<DataArticle>? results});
}

/// @nodoc
class _$ArticleResponseCopyWithImpl<$Res, $Val extends ArticleResponse>
    implements $ArticleResponseCopyWith<$Res> {
  _$ArticleResponseCopyWithImpl(this._value, this._then);

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
              as List<DataArticle>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleResponseCopyWith<$Res>
    implements $ArticleResponseCopyWith<$Res> {
  factory _$$_ArticleResponseCopyWith(
          _$_ArticleResponse value, $Res Function(_$_ArticleResponse) then) =
      __$$_ArticleResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, List<DataArticle>? results});
}

/// @nodoc
class __$$_ArticleResponseCopyWithImpl<$Res>
    extends _$ArticleResponseCopyWithImpl<$Res, _$_ArticleResponse>
    implements _$$_ArticleResponseCopyWith<$Res> {
  __$$_ArticleResponseCopyWithImpl(
      _$_ArticleResponse _value, $Res Function(_$_ArticleResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_ArticleResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<DataArticle>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleResponse extends _ArticleResponse {
  const _$_ArticleResponse({this.status, final List<DataArticle>? results})
      : _results = results,
        super._();

  factory _$_ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleResponseFromJson(json);

  @override
  final String? status;
  final List<DataArticle>? _results;
  @override
  List<DataArticle>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ArticleResponse(status: $status, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleResponse &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleResponseCopyWith<_$_ArticleResponse> get copyWith =>
      __$$_ArticleResponseCopyWithImpl<_$_ArticleResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleResponseToJson(
      this,
    );
  }
}

abstract class _ArticleResponse extends ArticleResponse {
  const factory _ArticleResponse(
      {final String? status,
      final List<DataArticle>? results}) = _$_ArticleResponse;
  const _ArticleResponse._() : super._();

  factory _ArticleResponse.fromJson(Map<String, dynamic> json) =
      _$_ArticleResponse.fromJson;

  @override
  String? get status;
  @override
  List<DataArticle>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleResponseCopyWith<_$_ArticleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DataArticle _$DataArticleFromJson(Map<String, dynamic> json) {
  return _DataUser.fromJson(json);
}

/// @nodoc
mixin _$DataArticle {
  String? get title => throw _privateConstructorUsedError;
  String? get abstract => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_date')
  String? get publishedDate => throw _privateConstructorUsedError;
  String? get byline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataArticleCopyWith<DataArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataArticleCopyWith<$Res> {
  factory $DataArticleCopyWith(
          DataArticle value, $Res Function(DataArticle) then) =
      _$DataArticleCopyWithImpl<$Res, DataArticle>;
  @useResult
  $Res call(
      {String? title,
      String? abstract,
      @JsonKey(name: 'published_date') String? publishedDate,
      String? byline});
}

/// @nodoc
class _$DataArticleCopyWithImpl<$Res, $Val extends DataArticle>
    implements $DataArticleCopyWith<$Res> {
  _$DataArticleCopyWithImpl(this._value, this._then);

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
abstract class _$$_DataUserCopyWith<$Res>
    implements $DataArticleCopyWith<$Res> {
  factory _$$_DataUserCopyWith(
          _$_DataUser value, $Res Function(_$_DataUser) then) =
      __$$_DataUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? abstract,
      @JsonKey(name: 'published_date') String? publishedDate,
      String? byline});
}

/// @nodoc
class __$$_DataUserCopyWithImpl<$Res>
    extends _$DataArticleCopyWithImpl<$Res, _$_DataUser>
    implements _$$_DataUserCopyWith<$Res> {
  __$$_DataUserCopyWithImpl(
      _$_DataUser _value, $Res Function(_$_DataUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? abstract = freezed,
    Object? publishedDate = freezed,
    Object? byline = freezed,
  }) {
    return _then(_$_DataUser(
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
@JsonSerializable()
class _$_DataUser implements _DataUser {
  const _$_DataUser(
      {this.title,
      this.abstract,
      @JsonKey(name: 'published_date') this.publishedDate,
      this.byline});

  factory _$_DataUser.fromJson(Map<String, dynamic> json) =>
      _$$_DataUserFromJson(json);

  @override
  final String? title;
  @override
  final String? abstract;
  @override
  @JsonKey(name: 'published_date')
  final String? publishedDate;
  @override
  final String? byline;

  @override
  String toString() {
    return 'DataArticle(title: $title, abstract: $abstract, publishedDate: $publishedDate, byline: $byline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataUser &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.abstract, abstract) ||
                other.abstract == abstract) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.byline, byline) || other.byline == byline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, abstract, publishedDate, byline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataUserCopyWith<_$_DataUser> get copyWith =>
      __$$_DataUserCopyWithImpl<_$_DataUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataUserToJson(
      this,
    );
  }
}

abstract class _DataUser implements DataArticle {
  const factory _DataUser(
      {final String? title,
      final String? abstract,
      @JsonKey(name: 'published_date') final String? publishedDate,
      final String? byline}) = _$_DataUser;

  factory _DataUser.fromJson(Map<String, dynamic> json) = _$_DataUser.fromJson;

  @override
  String? get title;
  @override
  String? get abstract;
  @override
  @JsonKey(name: 'published_date')
  String? get publishedDate;
  @override
  String? get byline;
  @override
  @JsonKey(ignore: true)
  _$$_DataUserCopyWith<_$_DataUser> get copyWith =>
      throw _privateConstructorUsedError;
}
