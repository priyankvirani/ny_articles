import 'dart:convert';

import 'package:ny_articles/features/features.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';

void main() {
  final listUser = [
    DataArticle.fromJson({
      "published_date": "2023-04-17",
      "byline": "By Livia Albeck-Ripka, Patrick LaForge and Christine Hauser",
      "title":
          "84-Year-Old Is Charged in Shooting of Black Teenager Who Went to Wrong House",
      "abstract":
          "Lawyers for the family of Ralph Yarl, 16, said he was critically injured when he was shot twice in Kansas City, Mo."
    })
  ];

  final articleResponse = ArticleResponse(
    status: "OK",
    results: listUser,
  );

  test('from json, should return a valid model from json', () {
    /// arrange
    final jsonMap = json.decode(jsonReader(successUserPath));

    /// act
    final result = ArticleResponse.fromJson(jsonMap as Map<String, dynamic>);

    /// assert
    expect(result, equals(articleResponse));
  });

  test('to json, should return a json map containing proper data', () {
    /// act
    final result = articleResponse.toJson();

    /// arrange
    final exceptedJson = {
      "status": "OK",
      "results": [
        DataArticle.fromJson({
          "published_date": "2023-04-17",
          "byline":
              "By Livia Albeck-Ripka, Patrick LaForge and Christine Hauser",
          "title":
              "84-Year-Old Is Charged in Shooting of Black Teenager Who Went to Wrong House",
          "abstract":
              "Lawyers for the family of Ralph Yarl, 16, said he was critically injured when he was shot twice in Kansas City, Mo."
        })
      ]
    };

    /// assert
    expect(result, equals(exceptedJson));
  });
}
