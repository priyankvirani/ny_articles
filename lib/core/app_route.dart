import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ny_articles/dependencies_injection.dart';
import 'package:ny_articles/features/features.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

enum Routes {
  root("/"),

  /// Home Page
  dashboard("/dashboard"),
  ;

  const Routes(this.path);

  final String path;
}

class AppRoute {
  static late BuildContext context;

  AppRoute.setStream(BuildContext ctx) {
    context = ctx;
  }

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.root.path,
        name: Routes.root.name,
        redirect: (_, __) => Routes.dashboard.path,
      ),
      ShellRoute(
        builder: (_, __, child) => MainPage(child: child),
        routes: [
          GoRoute(
            path: Routes.dashboard.path,
            name: Routes.dashboard.name,
            builder: (_, __) => BlocProvider(
              create: (_) =>
                  sl<ArticlesCubit>()..fetchUsers(const ArticlesParams()),
              child: const DashboardPage(),
            ),
          ),
        ],
      ),
    ],
    initialLocation: Routes.dashboard.path,
    routerNeglect: true,
    debugLogDiagnostics: kDebugMode,
    redirect: (_, GoRouterState state) {
      return Routes.dashboard.path;
    },
  );
}
