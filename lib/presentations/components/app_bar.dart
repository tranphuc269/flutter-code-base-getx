import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_theme.dart';
import '../routes/app_pages.dart';

/// MAppBar
class MAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// MAppBar
  const MAppBar({
    this.title,
    Key? key,
    this.actionWidgets,
    this.leading,
    this.bottom,
    this.onTapBack,
  }) : super(key: key);

  /// title
  final String? title;

  /// bottom
  final PreferredSizeWidget? bottom;

  /// actionWidgets
  final List<Widget>? actionWidgets;

  /// leading
  final Widget? leading;

  /// onTapBack
  final Function? onTapBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading ?? _checkTopRoot(),
      title: title != null
          ? Text(
              title!,
              style: Styles.buttonLNotoSansTS.copyWith(letterSpacing: 0.7),
            )
          : null,
      backgroundColor: Colors.white10,
      centerTitle: true,
      elevation: 0,
      bottom: bottom,
      actions: actionWidgets,
      brightness: Brightness.light,
    );
  }

  Widget? _checkTopRoot() {
    if (Get.currentRoute != AppPages.homeRoute) {
      return IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: labelDarkGrey,
        ),
        onPressed: Get.back,
      );
    }
    return null;
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}
