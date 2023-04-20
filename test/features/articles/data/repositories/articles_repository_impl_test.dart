import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/dependencies_injection.dart';
import 'package:ny_articles/features/features.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../helpers/json_reader.dart';
import '../../../../helpers/paths.dart';
import '../../../../helpers/test_mock.mocks.dart';

void main() {
  late MockArticlesRemoteDatasource mockArticlesRemoteDatasource;
  late ArticlesRepositoryImpl articlesRepositoryImpl;
  late Articles articles;

  setUp(() async {
    await serviceLocator(isUnitTest: true);
    mockArticlesRemoteDatasource = MockArticlesRemoteDatasource();
    articlesRepositoryImpl = ArticlesRepositoryImpl(mockArticlesRemoteDatasource);
    articles = ArticleResponse.fromJson(
      json.decode(jsonReader(successUserPath)) as Map<String, dynamic>,
    ).toEntity();
  });

  group("article", () {
    const articleParams = ArticlesParams();
    const articleParamsEmpty = ArticlesParams();

    test('should return list article when call data is successful', () async {
      // arrange
      when(mockArticlesRemoteDatasource.articles(articleParams)).thenAnswer(
        (_) async => Right(
          ArticleResponse.fromJson(
            json.decode(jsonReader(successUserPath)) as Map<String, dynamic>,
          ),
        ),
      );

      // act
      final result = await articlesRepositoryImpl.articles(articleParams);

      // assert
      verify(mockArticlesRemoteDatasource.articles(articleParams));
      expect(result, equals(Right(articles)));
    });

    test(
      'should return empty list article when call data is successful',
      () async {
        // arrange
        when(mockArticlesRemoteDatasource.articles(articleParamsEmpty)).thenAnswer(
          (_) async => Left(NoDataFailure()),
        );

        // act
        final result = await articlesRepositoryImpl.articles(articleParamsEmpty);

        // assert
        verify(mockArticlesRemoteDatasource.articles(articleParamsEmpty));
        expect(result, equals(Left(NoDataFailure())));
      },
    );

    test(
      'should return server failure when call data is unsuccessful',
      () async {
        // arrange
        when(mockArticlesRemoteDatasource.articles(articleParams))
            .thenAnswer((_) async => const Left(ServerFailure('')));

        // act
        final result = await articlesRepositoryImpl.articles(articleParams);

        // assert
        verify(mockArticlesRemoteDatasource.articles(articleParams));
        expect(result, equals(const Left(ServerFailure(''))));
      },
    );
  });
}
