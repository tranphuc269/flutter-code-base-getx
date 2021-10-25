import 'package:flutter/material.dart';

import '../app_theme.dart';

/// ViewInterface
mixin ViewInterface {
  /// buildBody
  Widget buildBody(BuildContext context);

  /// buildAppBar
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return null;
  }

  /// buildBottomNavigationBar
  Widget? buildBottomNavigationBar(BuildContext context) {
    return null;
  }

  /// buildBottomSheet
  Widget? buildBottomSheet(BuildContext context) {
    return null;
  }

  /// buildDrawer
  Widget? buildDrawer(BuildContext context) {
    return null;
  }

  /// buildEndDrawer
  Widget? buildEndDrawer(BuildContext context) {
    return null;
  }

  /// buildFloatActionButton
  Widget? buildFloatActionButton(BuildContext context) {
    return null;
  }

  /// clearFocus
  void clearFocus(BuildContext context) {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    } else {
      FocusScope.of(context).requestFocus(FocusNode());
    }
  }

  /// getTextFieldDecor
  InputDecoration getTextFieldDecor(
      {String? hint, String? label, String? helperText, Widget? suffixIcon}) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      helperText: helperText,
      suffixIcon: suffixIcon,
      hintStyle: const TextStyle(color: labelGrey, fontSize: 16),
      border: const UnderlineInputBorder(
        borderSide: BorderSide(color: labelGrey),
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: labelGrey),
      ),
    );
  }

  /// buildPage
  Widget buildPage(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: buildAppBar(context),
      body: SafeArea(
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            clearFocus(context);
          },
          child: buildBody(context),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(context),
      bottomSheet: buildBottomSheet(context),
      drawer: buildDrawer(context),
      endDrawer: buildEndDrawer(context),
      floatingActionButton: buildFloatActionButton(context),
    );
  }
}
