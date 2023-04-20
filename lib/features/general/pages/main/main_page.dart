import 'package:flutter/material.dart';
import 'package:ny_articles/core/core.dart';
import 'package:ny_articles/utils/utils.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.child});

  final Widget child;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Parent(
      scaffoldKey: _scaffoldKey,
      appBar: _appBar(),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * (80 / 100),
        child: const SizedBox(),
      ),
      child: widget.child,
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: Palette.appBarBG,
        title: Text(
          Constants.get.articles,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Palette.white, fontWeight: FontWeight.normal),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: Dimens.space24,
            color: Palette.white,
          ),
          onPressed: () {

          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Palette.white),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: Palette.white,
            ),
          )
        ],
      ),
    );
  }
}
