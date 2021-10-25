import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Styles
class Styles {
  Styles._();

  /// baseNotoSansTS
  static final baseNotoSansTS = GoogleFonts.notoSans(
      locale: const Locale('ja', 'JP'),
      fontWeight: FontWeight.normal,
      color: bodyTextColor);

  /// baseRobotoTS
  static final baseRobotoTS = GoogleFonts.roboto(
      locale: const Locale('ja', 'JP'),
      fontWeight: FontWeight.normal,
      color: bodyTextColor);

  /// baseInterTS
  static final baseInterTS = GoogleFonts.inter(
      locale: const Locale('ja', 'JP'),
      fontWeight: FontWeight.normal,
      color: bodyTextColor);

  /// roboto45TS
  static final roboto45TS = baseRobotoTS.copyWith(fontSize: 48);

  /// roboto40TS
  static final roboto40TS = baseRobotoTS.copyWith(fontSize: 40);

  /// roboto28TS
  static final roboto28TS = baseRobotoTS.copyWith(fontSize: 28);

  ///
  static final largeTitleNotoSanTS = baseNotoSansTS.copyWith(fontSize: 26);

  ///
  static final titleRobotoTS = baseRobotoTS.copyWith(fontSize: 24);

  ///
  static final titleNotoSansTS = baseNotoSansTS.copyWith(fontSize: 22);

  ///
  static final subTitleNotoTS = baseNotoSansTS.copyWith(fontSize: 20);

  ///
  static final subTitleRobotoTS = baseRobotoTS.copyWith(fontSize: 20);

  ///
  static final subTitleNotoSansTS = baseNotoSansTS.copyWith(fontSize: 18);

  ///
  static final largeBodyRobotoTS = baseRobotoTS.copyWith(fontSize: 18);

  ///
  static final largeBodyNotoSansTS = baseNotoSansTS.copyWith(fontSize: 16);

  ///
  static final body1RobotoTS = baseRobotoTS.copyWith(fontSize: 16);

  ///
  static final body1NotoSansTS = baseNotoSansTS.copyWith(fontSize: 14);

  ///
  static final body2RobotoTS = baseRobotoTS.copyWith(fontSize: 14);

  ///
  static final body2NotoSansTS = baseNotoSansTS.copyWith(fontSize: 12);

  ///
  static final secondaryBodyRobotoTS = baseRobotoTS.copyWith(fontSize: 12);

  ///
  static final secondaryBodyNotoSansTS = baseNotoSansTS.copyWith(fontSize: 10);

  ///
  static final commentBodyRobotoTS = baseRobotoTS.copyWith(fontSize: 10);

  ///
  static final buttonTopRobotoTS =
      baseRobotoTS.copyWith(fontSize: 18, fontWeight: FontWeight.w500);

  ///
  static final buttonTopNotoSansTS =
      baseNotoSansTS.copyWith(fontSize: 16, fontWeight: FontWeight.bold);

  ///
  static final buttonLRobotoTS =
      baseRobotoTS.copyWith(fontSize: 16, fontWeight: FontWeight.w500);

  ///
  static final buttonLNotoSansTS =
      baseNotoSansTS.copyWith(fontSize: 14, fontWeight: FontWeight.bold);

  ///
  static final buttonMRobotoTS =
      baseRobotoTS.copyWith(fontSize: 14, fontWeight: FontWeight.w500);

  ///
  static final buttonMNotoSansTS =
      baseNotoSansTS.copyWith(fontSize: 12, fontWeight: FontWeight.bold);

  ///
  static final buttonSRobotoTS =
      baseRobotoTS.copyWith(fontSize: 12, fontWeight: FontWeight.w500);

  ///
  static final buttonSNotoSansTS =
      baseNotoSansTS.copyWith(fontSize: 10, fontWeight: FontWeight.bold);

  ///
  static final buttonSSRobotoTS =
      baseRobotoTS.copyWith(fontSize: 10, fontWeight: FontWeight.w500);
}

/// Color
///
const Color orangePrimary = Color(0xFFFB9800);

///
const Color orangeLight = Color(0xFFFFBB52);

///
const Color orangeExtraLight = Color(0xFFFFF7EB);

///
const Color successGreen = Color(0xFF2ECD89);

///
const Color failPink = Color(0xFFF4485D);

/// Gradation Styles
///
const Color warningRed = Color(0xFFF4485D);

///
const Color bodyTextColor = Color(0xFF333333);

///
const Color labelGrey = Color(0xFFaaaaaa);

///
const Color labelDarkGrey = Color(0xFF7C7C7C);

///
const Color unselectedGrey = Color(0xFFD8D8D8);
///
const Color colorTabBar = Color(0xAB000000);
///
const Color textBack = Color(0xFF3C394F);

///
const EdgeInsets edgeInsetsSymmetric15 = EdgeInsets.symmetric(horizontal: 15);
