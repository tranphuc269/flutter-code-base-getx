import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_theme.dart';

/// BtnBorder
class BtnBorder extends StatelessWidget {
  /// BtnBorder constructor
  const BtnBorder({
    required this.onPressed,
    required this.title,
    this.isPostReview = true,
    this.fromReview = false,
    this.haveBorder = true,
    this.bgColor = orangeExtraLight,
    this.profileView = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12),
    Key? key,
  }) : super(key: key);

  /// onPressed
  final Function()? onPressed;

  /// title
  final String title;

  /// haveBorder
  final bool haveBorder;

  ///padding
  final EdgeInsets padding;

  ///isPostReview
  final bool? isPostReview;

  /// check from review
  final bool fromReview;

  /// check from profile view
  final bool? profileView;

  ///bgColor
  final Color bgColor;

  // ignore: public_member_api_docs
  TextStyle? getTextStyle() {
    if (profileView!) {
      return Styles.baseNotoSansTS.copyWith(
          fontWeight: FontWeight.w500, color: orangePrimary, fontSize: 13);
    }
    if (isPostReview == null) {
      return Styles.baseNotoSansTS.copyWith(
          fontWeight: FontWeight.bold, color: orangePrimary, fontSize: 15);
    }
    if (isPostReview!) {
      return Styles.baseNotoSansTS.copyWith(
          fontWeight: FontWeight.bold, color: orangePrimary, fontSize: 15);
    }
    if (!isPostReview!) {
      return Styles.baseNotoSansTS.copyWith(
          fontWeight: FontWeight.bold, color: labelGrey, fontSize: 15);
    }
    return null;
  }

  // ignore: public_member_api_docs
  BorderSide getBorderStyle() {
    if (!haveBorder) {
      return BorderSide.none;
    }
    if (!isPostReview!) {
      return const BorderSide(color: Colors.grey, width: 1);
    }
    return const BorderSide(color: orangePrimary, width: 2);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ButtonTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: getBorderStyle(),
        ),
        child: RaisedButton(
            color: bgColor,
            elevation: fromReview ? 0 : 2,
            onPressed: onPressed,
            child: Padding(
              padding: padding,
              child: Text(title, style: getTextStyle()),
            )),
      ),
    );
  }
}

class FlatBtnBorder extends StatelessWidget {
  /// BtnBorder constructor
  const FlatBtnBorder({
    required this.onPressed,
    required this.title,
    this.isPostReview = true,
    this.isStore = false,
    this.fromReview = false,
    this.haveBorder = true,
    this.bgColor = orangeExtraLight,
    this.profileView = false,
    this.padding = const EdgeInsets.symmetric(vertical: 6),
    Key? key,
  }) : super(key: key);

  /// onPressed
  final Function()? onPressed;

  /// title
  final String title;

  /// store
  final bool? isStore;

  /// haveBorder
  final bool haveBorder;

  ///padding
  final EdgeInsets padding;

  ///isPostReview
  final bool? isPostReview;

  /// check from review
  final bool fromReview;

  /// check from profile view
  final bool? profileView;

  ///bgColor
  final Color bgColor;

  // ignore: public_member_api_docs
  TextStyle? getTextStyle() {
    if(isStore!){
      return Styles.baseNotoSansTS.copyWith(
          color: orangePrimary, fontSize: 13);
    }
    if (profileView!) {
      return Styles.baseNotoSansTS.copyWith(
          fontWeight: FontWeight.w500, color: orangePrimary, fontSize: 13);
    }
    if (isPostReview == null) {
      return Styles.baseNotoSansTS.copyWith(
          fontWeight: FontWeight.bold, color: orangePrimary, fontSize: 15);
    }
    if (isPostReview!) {
      return Styles.baseNotoSansTS.copyWith(
          fontWeight: FontWeight.bold, color: orangePrimary, fontSize: 15);
    }
    if (!isPostReview!) {
      return Styles.baseNotoSansTS.copyWith(
          fontWeight: FontWeight.bold, color: labelGrey, fontSize: 15);
    }
    return null;
  }

  // ignore: public_member_api_docs
  BorderSide getBorderStyle() {
    if(isStore!){
      return const BorderSide(color: orangePrimary, width: 0.5);
    }
    if (!haveBorder) {
      return BorderSide.none;
    }
    if (!isPostReview!) {
      return const BorderSide(color: Colors.grey, width: 1);
    }
    return const BorderSide(color: orangePrimary, width: 1);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ButtonTheme(
        child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: getBorderStyle(),
              )),
              backgroundColor: MaterialStateProperty.all(bgColor),
            ),
            onPressed: onPressed,
            child: Padding(
              padding: padding,
              child: Text(title, style: getTextStyle()),
            )),
      ),
    );
  }
}

class ButtonPrimary extends StatelessWidget {
  String text;
  Function() onpress;
  ButtonPrimary({required this.text, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      // width: 120,
      padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.black),
      child: InkWell(
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        onTap: onpress,
      ),
    );
  }
}