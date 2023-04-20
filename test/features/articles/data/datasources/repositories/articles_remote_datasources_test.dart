import 'dart:convert';

import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/dependencies_injection.dart';
import 'package:ny_articles/features/features.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';

void main() {
  late DioAdapter dioAdapter;
  late ArticlesRemoteDatasourceImpl dataSource;

  setUp(() async {
    await serviceLocator(isUnitTest: true);
    dioAdapter = DioAdapter(dio: sl<DioClient>().dio);
    dataSource = ArticlesRemoteDatasourceImpl(sl<DioClient>());
  });

  group('article', () {
    const articlesParams = ArticlesParams();
    final articlesModel = ArticleResponse.fromJson(
      json.decode(jsonReader(successUserPath)) as Map<String, dynamic>,
    );
    final articlesEmptyModel = ArticleResponse.fromJson(
      json.decode(jsonReader(emptyUserPath)) as Map<String, dynamic>,
    );

    test(
      'should return list article success model when response code is 200',
      () async {
        /// arrange
        dioAdapter.onGet(
          ListAPI.articles,
          (server) => server.reply(
            200,
            json.decode(jsonReader(successUserPath)),
          ),
          queryParameters: articlesParams.toJson(),
        );

        /// act
        final result = await dataSource.articles(articlesParams);

        /// assert
        result.fold(
          (l) => expect(l, null),
          (r) => expect(r, articlesModel),
        );
      },
    );

    test(
      'should return empty list article success model when response code is 200',
      () async {
        /// arrange
        dioAdapter.onGet(
          ListAPI.articles,
          (server) => server.reply(
            200,
            json.decode(jsonReader(emptyUserPath)),
          ),
          queryParameters: articlesParams.toJson(),
        );

        /// act
        final result = await dataSource.articles(articlesParams);

        /// assert
        result.fold(
          (l) => expect(l, null),
          (r) => expect(r, articlesEmptyModel),
        );
      },
    );

    test(
      'should return article unsuccessful model when response code is 400',
      () async {
        /// arrange
        dioAdapter.onGet(
          ListAPI.articles,
          (server) => server.reply(
            400,
            json.decode(jsonReader(successUserPath)),
          ),
          queryParameters: articlesParams.toJson(),
        );

        /// act
        final result = await dataSource.articles(articlesParams);

        /// assert
        result.fold(
          (l) => expect(l, isA<ServerFailure>()),
          (r) => expect(r, null),
        );
      },
    );
  });
}
