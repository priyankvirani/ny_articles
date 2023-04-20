import 'package:dartz/dartz.dart';
import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/features/articles/articles.dart';

abstract class ArticlesRepository {
  Future<Either<Failure, Articles>> articles(ArticlesParams articlesParams);
}
