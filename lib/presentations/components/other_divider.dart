import 'package:flutter/material.dart';

import '../app_theme.dart';

/// OtherDivider
class OtherDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Expanded(child: Divider(thickness: 1,)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            '',
            style: Styles.body2NotoSansTS.copyWith(color: labelGrey),
          ),
        ),
        const Expanded(child: Divider(thickness: 1,))
      ],
    );
  }
}
