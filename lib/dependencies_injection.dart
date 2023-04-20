import 'package:flutter/cupertino.dart';
import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/features/features.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator({bool isUnitTest = false}) async {
  /// For unit testing only
  if (isUnitTest) {
    WidgetsFlutterBinding.ensureInitialized();
    sl.reset();
    // ignore: invalid_use_of_visible_for_testing_member
    SharedPreferences.setMockInitialValues({});
    sl.registerSingleton<DioClient>(DioClient(isUnitTest: true));
    dataSources();
    repositories();
    useCase();
    cubit();
  } else {
    sl.registerSingleton<DioClient>(DioClient());
    dataSources();
    repositories();
    useCase();
    cubit();
  }
}

/// articles repositories
void repositories() {
  sl.registerLazySingleton<ArticlesRepository>(
      () => ArticlesRepositoryImpl(sl()));
}

/// Register dataSources
void dataSources() {
  sl.registerLazySingleton<ArticlesRemoteDatasource>(
    () => ArticlesRemoteDatasourceImpl(sl()),
  );
}

void useCase() {
  /// Article
  sl.registerLazySingleton(() => GetArticles(sl()));
}

void cubit() {
  /// Article
  sl.registerFactory(() => ArticlesCubit(sl()));
}
