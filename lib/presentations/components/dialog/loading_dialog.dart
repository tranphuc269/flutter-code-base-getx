import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_theme.dart';

/// LoadingDialog
class LoadingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      // type: MaterialType.transparency,
      child: SizedBox(
        width: 200,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Text(
                'Loading...',
                style:
                    Styles.largeBodyNotoSansTS.copyWith(color: labelDarkGrey),
              ),
            ),
            const CupertinoActivityIndicator(
              radius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
