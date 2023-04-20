import 'package:flutter/material.dart';
import 'package:ny_articles/core/core.dart';

import '../../utils/helper/constant.dart';

class Loading extends StatelessWidget {
  const Loading({this.showMessage = true});

  final bool showMessage;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(
            color: Palette.accent,
            strokeWidth: 1.5,
          ),
          Visibility(
            visible: showMessage,
            child: Text(
              Constants.get.pleaseWait,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
