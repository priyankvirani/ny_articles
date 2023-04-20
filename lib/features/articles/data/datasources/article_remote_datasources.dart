import 'package:dartz/dartz.dart';
import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/features/articles/articles.dart';

abstract class ArticlesRemoteDatasource {
  Future<Either<Failure, ArticleResponse>> articles(ArticlesParams articlesParams);
}

class ArticlesRemoteDatasourceImpl implements ArticlesRemoteDatasource {
  final DioClient _client;

  ArticlesRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, ArticleResponse>> articles(
      ArticlesParams articleParams) async {
    final response = await _client.getRequest(
      ListAPI.articles,
      queryParameters: articleParams.toJson(),
      converter: (response) =>
          ArticleResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}
