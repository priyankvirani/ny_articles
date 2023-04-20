import 'package:dartz/dartz.dart';
import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/features/articles/articles.dart';

class ArticlesRepositoryImpl implements ArticlesRepository {
  /// Data Source
  final ArticlesRemoteDatasource articlesRemoteDatasource;

  const ArticlesRepositoryImpl(this.articlesRemoteDatasource);

  @override
  Future<Either<Failure, Articles>> articles(
      ArticlesParams articlesParams) async {
    final response = await articlesRemoteDatasource.articles(articlesParams);

    return response.fold(
      (failure) => Left(failure),
      (articlesResponse) {
        if (articlesResponse.results?.isEmpty ?? true) {
          return Left(NoDataFailure());
        }
        return Right(articlesResponse.toEntity());
      },
    );
  }
}
