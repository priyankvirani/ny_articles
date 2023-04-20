import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/features/articles/articles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<Article> _articles = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: RefreshIndicator(
        color: Theme.of(context).iconTheme.color,
        onRefresh: () {
          _articles.clear();
          return context
              .read<ArticlesCubit>()
              .refreshUsers(const ArticlesParams());
        },
        child: BlocBuilder<ArticlesCubit, ArticleState>(
          builder: (_, state) {
            return state.when(
              loading: () => const Center(child: Loading()),
              success: (data) {
                _articles.addAll(data.results ?? []);
                return ListView.builder(
                  itemCount: _articles.length,
                  padding: EdgeInsets.symmetric(vertical: Dimens.space16),
                  itemBuilder: (_, index) {
                    return index < _articles.length
                        ? Container(
                            padding: EdgeInsets.symmetric(
                              vertical: Dimens.space4,
                              horizontal: Dimens.space4,
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: Dimens.space8,
                              horizontal: Dimens.space4,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: CircleAvatar(
                                    radius: Dimens.space20,
                                    backgroundColor: Palette.disable,
                                  ),
                                ),
                                Expanded(
                                  flex: 7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _articles[index].title ?? "",
                                        maxLines: 2,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize: Dimens.space14,
                                          color: Palette.black,
                                          letterSpacing: 0.4,
                                        ),
                                      ),
                                      SizedBox(
                                        height: Dimens.space8,
                                      ),
                                      Text(
                                        _articles[index].byline ?? "",
                                        maxLines: 2,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize: Dimens.space12,
                                          letterSpacing: 0.4,
                                          color: Palette.hint,
                                        ),
                                      ),
                                      SizedBox(
                                        height: Dimens.space4,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: Dimens.space4),
                                            child: Icon(
                                              Icons.calendar_today,
                                              color: Palette.hint,
                                              size: Dimens.space12,
                                            ),
                                          ),
                                          Text(
                                            _articles[index].publishedDate ??
                                                "",
                                            style: TextStyle(
                                              fontSize: Dimens.space12,
                                              letterSpacing: 0.4,
                                              color: Palette.hint,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    size: Dimens.space12,
                                    Icons.keyboard_arrow_right_outlined,
                                    color: Palette.hint,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.all(Dimens.space16),
                            child: const Center(
                              child: CupertinoActivityIndicator(),
                            ),
                          );
                  },
                );
              },
              failure: (message) => Center(child: Empty(errorMessage: message)),
              empty: () => const Center(child: Empty()),
            );
          },
        ),
      ),
    );
  }
}
