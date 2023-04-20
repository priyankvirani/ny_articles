// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleResponse _$$_ArticleResponseFromJson(Map<String, dynamic> json) =>
    _$_ArticleResponse(
      status: json['status'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => DataArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArticleResponseToJson(_$_ArticleResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
    };

_$_DataUser _$$_DataUserFromJson(Map<String, dynamic> json) => _$_DataUser(
      title: json['title'] as String?,
      abstract: json['abstract'] as String?,
      publishedDate: json['published_date'] as String?,
      byline: json['byline'] as String?,
    );

Map<String, dynamic> _$$_DataUserToJson(_$_DataUser instance) =>
    <String, dynamic>{
      'title': instance.title,
      'abstract': instance.abstract,
      'published_date': instance.publishedDate,
      'byline': instance.byline,
    };
