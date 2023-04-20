// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_articles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticlesParams _$ArticlesParamsFromJson(Map<String, dynamic> json) {
  return _ArticlesParams.fromJson(json);
}

/// @nodoc
mixin _$ArticlesParams {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesParamsCopyWith<$Res> {
  factory $ArticlesParamsCopyWith(
          ArticlesParams value, $Res Function(ArticlesParams) then) =
      _$ArticlesParamsCopyWithImpl<$Res, ArticlesParams>;
}

/// @nodoc
class _$ArticlesParamsCopyWithImpl<$Res, $Val extends ArticlesParams>
    implements $ArticlesParamsCopyWith<$Res> {
  _$ArticlesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ArticlesParamsCopyWith<$Res> {
  factory _$$_ArticlesParamsCopyWith(
          _$_ArticlesParams value, $Res Function(_$_ArticlesParams) then) =
      __$$_ArticlesParamsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ArticlesParamsCopyWithImpl<$Res>
    extends _$ArticlesParamsCopyWithImpl<$Res, _$_ArticlesParams>
    implements _$$_ArticlesParamsCopyWith<$Res> {
  __$$_ArticlesParamsCopyWithImpl(
      _$_ArticlesParams _value, $Res Function(_$_ArticlesParams) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_ArticlesParams implements _ArticlesParams {
  const _$_ArticlesParams();

  factory _$_ArticlesParams.fromJson(Map<String, dynamic> json) =>
      _$$_ArticlesParamsFromJson(json);

  @override
  String toString() {
    return 'ArticlesParams()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ArticlesParams);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticlesParamsToJson(
      this,
    );
  }
}

abstract class _ArticlesParams implements ArticlesParams {
  const factory _ArticlesParams() = _$_ArticlesParams;

  factory _ArticlesParams.fromJson(Map<String, dynamic> json) =
      _$_ArticlesParams.fromJson;
}
