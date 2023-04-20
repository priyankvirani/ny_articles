import 'dart:convert';
import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/dependencies_injection.dart';
import 'package:ny_articles/features/features.dart';
import 'package:ny_articles/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

// ignore: depend_on_referenced_packages
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/json_reader.dart';
import '../../../../helpers/paths.dart';

class MockArticlesCubit extends MockCubit<ArticleState>
    implements ArticlesCubit {}

class FakeUserState extends Fake implements ArticleState {}

void main() {
  late ArticlesCubit articlesCubit;
  late Articles articles;

  setUpAll(() {
    HttpOverrides.global = null;
    registerFallbackValue(FakeUserState());
    registerFallbackValue(const ArticlesParams());
  });

  setUp(() async {
    await serviceLocator(isUnitTest: true);
    articlesCubit = MockArticlesCubit();
    articles = ArticleResponse.fromJson(
      json.decode(jsonReader(successUserPath)) as Map<String, dynamic>,
    ).toEntity();
  });

  Widget rootWidget(Widget body) {
    return BlocProvider<ArticlesCubit>.value(
      value: articlesCubit,
      child: ScreenUtilInit(
        designSize: const Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, __) => MaterialApp(
          home: body,
        ),
      ),
    );
  }

  testWidgets(
    'renders DashboardPage for UsersStatus.loading',
    (tester) async {
      when(() => articlesCubit.state).thenReturn(const ArticleState.loading());
      await tester.pumpWidget(rootWidget(const DashboardPage()));
      expect(find.byType(Loading), findsOneWidget);
    },
  );

  testWidgets(
    'renders DashboardPage for UsersStatus.empty',
    (tester) async {
      when(() => articlesCubit.state).thenReturn(const ArticleState.empty());
      await tester.pumpWidget(rootWidget(const DashboardPage()));
      expect(find.byType(Empty), findsOneWidget);
    },
  );

  testWidgets(
    'renders DashboardPage for UsersStatus.failure',
    (tester) async {
      when(() => articlesCubit.state).thenReturn(const ArticleState.failure(""));
      await tester.pumpWidget(rootWidget(const DashboardPage()));
      expect(find.byType(Empty), findsOneWidget);
    },
  );

  testWidgets(
    'renders DashboardPage for UsersStatus.success',
    (tester) async {
      when(() => articlesCubit.state).thenReturn(
        ArticleState.success(articles),
      );
      await tester.pumpWidget(rootWidget(const DashboardPage()));
      expect(find.byType(ListView), findsOneWidget);
    },
  );

  testWidgets(
    'trigger refresh when pull to refresh',
    (tester) async {
      when(() => articlesCubit.state).thenReturn(
        ArticleState.success(articles),
      );
      when(() => articlesCubit.refreshUsers(any())).thenAnswer((_) async {});

      await tester.pumpWidget(rootWidget(const DashboardPage()));
    },
  );
}
