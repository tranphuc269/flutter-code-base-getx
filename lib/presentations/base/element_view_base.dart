import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import 'view_model_base.dart';

/// ElementViewBase
// ignore: use_key_in_widget_constructors
abstract class ElementViewBase<T extends ViewModelBase> extends GetView<T> {
  /// logger
  final logger = Logger();

  /// viewModel
  T get viewModel => GetInstance().find<T>(tag: tag);

  @override
  Widget build(BuildContext context) {
    return buildElement(context);
  }

  /// buildElement
  Widget buildElement(BuildContext context);

  /// willPopCallBack
  Future<bool> willPopCallBack() async {
    bool isQuitApp = false;
    Get.defaultDialog(
      barrierDismissible: false,
      title: 'Do you want quit app?',
      cancel: Text('Cancel'),
      confirm: Text('Quit'),
      onCancel: () {
        isQuitApp = false;
        Get.back();
      },
      onConfirm: () {
        isQuitApp = true;
        Get.back();
      },
    );
    return isQuitApp;
  }
}
