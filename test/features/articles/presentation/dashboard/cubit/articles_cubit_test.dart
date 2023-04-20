import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/dependencies_injection.dart';
import 'package:ny_articles/features/features.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';
import 'articles_cubit_test.mocks.dart';

@GenerateMocks([GetArticles])
void main() {
  late ArticlesCubit articlesCubit;
  late MockGetArticles mockGetArticles;
  late Articles articles;

  const dummyArticlesRequest1 = ArticlesParams();
  const errorMessage = "";

  /// Initialize data
  setUp(() async {
    await serviceLocator(isUnitTest: true);

    articles = ArticleResponse.fromJson(
      json.decode(jsonReader(successUserPath)) as Map<String, dynamic>,
    ).toEntity();
    mockGetArticles = MockGetArticles();
    articlesCubit = ArticlesCubit(mockGetArticles);
  });

  /// Dispose bloc
  tearDown(() {
    articlesCubit.close();
  });

  ///  Initial data should be loading
  test("Initial data should be UsersStatus.loading", () {
    expect(articlesCubit.state, const ArticleState.loading());
  });

  blocTest<ArticlesCubit, ArticleState>(
    "When repo success get data should be return ArticleState and loading only show when request page 1",
    build: () {
      when(mockGetArticles.call(dummyArticlesRequest1))
          .thenAnswer((_) async => Right(articles));

      return articlesCubit;
    },
    act: (ArticlesCubit articlesCubit) =>
        articlesCubit.fetchUsers(dummyArticlesRequest1),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      const ArticleState.loading(),
      ArticleState.success(articles),
    ],
  );

  blocTest<ArticlesCubit, ArticleState>(
    "When failed to get data from server",
    build: () {
      when(
        mockGetArticles.call(dummyArticlesRequest1),
      ).thenAnswer((_) async => const Left(ServerFailure(errorMessage)));

      return ArticlesCubit(mockGetArticles);
    },
    act: (ArticlesCubit articlesCubit) =>
        articlesCubit.fetchUsers(dummyArticlesRequest1),
    wait: const Duration(milliseconds: 100),
    expect: () => const [
      ArticleState.loading(),
      ArticleState.failure(errorMessage),
    ],
  );

  blocTest<ArticlesCubit, ArticleState>(
    "When request refreshUsers",
    build: () {
      when(mockGetArticles.call(dummyArticlesRequest1))
          .thenAnswer((_) async => Right(articles));

      return ArticlesCubit(mockGetArticles);
    },
    act: (ArticlesCubit articlesCubit) =>
        articlesCubit.refreshUsers(dummyArticlesRequest1),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      const ArticleState.loading(),
      ArticleState.success(articles),
    ],
  );
}
