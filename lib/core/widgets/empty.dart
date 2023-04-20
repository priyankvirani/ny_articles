import 'package:flutter/material.dart';
import 'package:ny_articles/utils/utils.dart';

class Empty extends StatelessWidget {
  final String? errorMessage;

  const Empty({super.key, this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Constants.get.errorNoData,
        ),
      ],
    );
  }
}
