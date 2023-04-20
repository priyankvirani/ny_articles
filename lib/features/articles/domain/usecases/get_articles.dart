import 'package:dartz/dartz.dart';
import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/features/articles/articles.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_articles.freezed.dart';
part 'get_articles.g.dart';

class GetArticles extends UseCase<Articles, ArticlesParams> {
  final ArticlesRepository _repo;

  GetArticles(this._repo);

  @override
  Future<Either<Failure, Articles>> call(ArticlesParams params) =>
      _repo.articles(params);
}

@freezed
class ArticlesParams with _$ArticlesParams {
  const factory ArticlesParams() = _ArticlesParams;

  factory ArticlesParams.fromJson(Map<String, dynamic> json) =>
      _$ArticlesParamsFromJson(json);
}
