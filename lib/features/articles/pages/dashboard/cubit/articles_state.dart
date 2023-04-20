part of 'articles_cubit.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState.loading() = _Loading;
  const factory ArticleState.success(Articles data) = _Success;
  const factory ArticleState.failure(String message) = _Failure;
  const factory ArticleState.empty() = _Empty;
}
