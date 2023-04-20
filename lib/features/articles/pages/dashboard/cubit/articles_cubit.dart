import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/features/features.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'articles_cubit.freezed.dart';

part 'articles_state.dart';

class ArticlesCubit extends Cubit<ArticleState> {
  ArticlesCubit(this._getArticles) : super(const _Loading());
  final GetArticles _getArticles;

  Future<void> fetchUsers(ArticlesParams articlesParams) async {
    /// Only show loading in 1 page
    await _fetchData(articlesParams);
  }

  Future<void> refreshUsers(ArticlesParams articlesParams) async {
    await _fetchData(articlesParams);
  }

  Future<void> _fetchData(ArticlesParams articlesParams) async {
    emit(const _Loading());
    final data = await _getArticles.call(articlesParams);
    data.fold(
      (l) {
        if (l is ServerFailure) {
          emit(_Failure(l.message ?? ""));
        } else if (l is NoDataFailure) {
          emit(const _Empty());
        }
      },
      (r) => emit(_Success(r)),
    );
  }
}
