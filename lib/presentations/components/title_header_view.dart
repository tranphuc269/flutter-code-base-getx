import 'package:flutter/material.dart';

import '../app_theme.dart';

///
class TitleHeaderWidget extends StatelessWidget {
  ///
  const TitleHeaderWidget({required Key key, required this.title})
      : super(key: key);

  ///
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Text(title,
          style: Styles.titleNotoSansTS.copyWith(fontWeight: FontWeight.bold)),
    );
  }
}
