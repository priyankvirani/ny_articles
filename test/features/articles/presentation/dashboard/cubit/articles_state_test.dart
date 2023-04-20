import 'package:ny_articles/features/features.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UsersStatusX', () {
    test('returns correct values for UsersStatus.loading', () {
      const status = ArticleState.loading();
      expect(status, const ArticleState.loading());
    });

    test('returns correct values for UsersStatus.success', () {
      const status = ArticleState.success(Articles());
      expect(status, const ArticleState.success(Articles()));
    });

    test('returns correct values for UsersStatus.failure', () {
      const status = ArticleState.failure("");
      expect(status, const ArticleState.failure(""));
    });
    test('returns correct values for UsersStatus.empty', () {
      const status = ArticleState.empty();
      expect(status, const ArticleState.empty());
    });
  });
}
