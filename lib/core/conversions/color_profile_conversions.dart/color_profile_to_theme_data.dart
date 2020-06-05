import 'package:debt_collector_3/features/color_profiles/domain/entities/color_profile.dart';
import 'package:flutter/material.dart';

ThemeData toThemeData(ColorProfile p) {
  return ThemeData(
    primaryColor: Color(p.primaryColor),
    accentColor: Color(p.accentColor),
    backgroundColor: Color(p.backGroundColor),
    brightness: p.brightness == 1 ? Brightness.light : Brightness.dark,
    accentColorBrightness:
        p.brightness == 1 ? Brightness.light : Brightness.dark,
    canvasColor: Color(p.canvasColor),
    highlightColor: Color(p.highlightColor),
    hintColor: Color(p.hintColor),
    splashColor: Color(p.splashColor),
    buttonColor: Color(p.buttonColor),
    cardColor: Color(p.cardColor),
    dialogBackgroundColor: Color(p.dialogBackgroundColor),
    cursorColor: Color(p.cursorColor1),
    disabledColor: Color(p.disabledColor),
    textTheme: TextTheme(
      headline: TextStyle(
          fontSize: p.fontSizeHeadline,
          color: Color(p.fontColorHeadline),
          fontFamily: p.fontFamily2),
      title: TextStyle(
          fontSize: p.fontSizeTitle,
          color: Color(p.fontColorTitle),
          fontFamily: p.fontFamily2),
      body1: TextStyle(
          fontSize: p.fontSizeBody1,
          color: Color(p.fontColor1),
          fontFamily: p.fontFamily3),
      body2: TextStyle(
          fontSize: p.fontSizeBody2,
          color: Color(p.fontColor2),
          fontFamily: p.fontFamily3),
    ),
    fontFamily: p.fontFamily1,
  );
}
