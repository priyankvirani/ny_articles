// Mocks generated by Mockito 5.4.0 from annotations
// in ny_articles/test/helpers/test_mock.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:ny_articles/core/core.dart' as _i5;
import 'package:ny_articles/features/articles/articles.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ArticlesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockArticlesRepository extends _i1.Mock
    implements _i3.ArticlesRepository {
  MockArticlesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i3.Articles>> articles(
          _i3.ArticlesParams? articlesParams) =>
      (super.noSuchMethod(
        Invocation.method(
          #articles,
          [articlesParams],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i3.Articles>>.value(
            _FakeEither_0<_i5.Failure, _i3.Articles>(
          this,
          Invocation.method(
            #articles,
            [articlesParams],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i3.Articles>>);
}

/// A class which mocks [ArticlesRemoteDatasource].
///
/// See the documentation for Mockito's code generation for more information.
class MockArticlesRemoteDatasource extends _i1.Mock
    implements _i3.ArticlesRemoteDatasource {
  MockArticlesRemoteDatasource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i3.ArticleResponse>> articles(
          _i3.ArticlesParams? articleParams) =>
      (super.noSuchMethod(
        Invocation.method(
          #articles,
          [articleParams],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.Failure, _i3.ArticleResponse>>.value(
                _FakeEither_0<_i5.Failure, _i3.ArticleResponse>(
          this,
          Invocation.method(
            #articles,
            [articleParams],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i3.ArticleResponse>>);
}
