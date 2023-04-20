import 'package:ny_articles/features/articles/articles.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'articles_response.freezed.dart';
part 'articles_response.g.dart';

@freezed
class ArticleResponse with _$ArticleResponse {
  const factory ArticleResponse({
    String? status,
    List<DataArticle>? results,
  }) = _ArticleResponse;

  const ArticleResponse._();

  factory ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseFromJson(json);

  Articles toEntity() {
    final listUser = results!
        .map<Article>(
          (model) => Article(
            title:  model.title ?? "",
            abstract: model.abstract ?? "",
            publishedDate: model.publishedDate ?? "",
            byline: model.byline ?? "",
          ),
        )
        .toList();

    return Articles(
      status: status,
      results: listUser,
    );
  }
}

@freezed
class DataArticle with _$DataArticle {
  const factory DataArticle({
    String? title,
    String? abstract,
    @JsonKey(name: 'published_date') String? publishedDate,
    String? byline,
  }) = _DataUser;

  factory DataArticle.fromJson(Map<String, dynamic> json) =>
      _$DataArticleFromJson(json);
}
