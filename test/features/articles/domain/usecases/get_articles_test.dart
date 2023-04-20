import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ny_articles/features/features.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../helpers/json_reader.dart';
import '../../../../helpers/paths.dart';
import '../../../../helpers/test_mock.mocks.dart';

void main() {
  late MockArticlesRepository mockArticlesRepository;
  late GetArticles getArticles;
  late Articles articles;
  const articlesParams = ArticlesParams();

  setUp(() {
    articles = ArticleResponse.fromJson(
      json.decode(jsonReader(successUserPath)) as Map<String, dynamic>,
    ).toEntity();
    mockArticlesRepository = MockArticlesRepository();
    getArticles = GetArticles(mockArticlesRepository);
  });

  test("should get articles from the repository", () async {
    /// arrange
    when(mockArticlesRepository.articles(articlesParams))
        .thenAnswer((_) async => Right(articles));

    /// act
    final result = await getArticles.call(articlesParams);

    /// assert
    expect(result, equals(Right(articles)));
  });
}
