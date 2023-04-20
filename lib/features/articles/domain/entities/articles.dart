import 'package:freezed_annotation/freezed_annotation.dart';

part 'articles.freezed.dart';

@freezed
class Articles with _$Articles {
  const factory Articles({
    String? status,
    List<Article>? results,
  }) = _Articles;
}

@freezed
class Article with _$Article {
  const factory Article({
    String? title,
    String? abstract,
    String? publishedDate,
    String? byline,
  }) = _Article;
}
