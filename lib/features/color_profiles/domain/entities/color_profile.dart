import 'package:equatable/equatable.dart';

class ColorProfile extends Equatable {
  final int id;
  final String profileName;

  final int primaryColor;
  final int accentColor;
  final int backGroundColor;
  final int brightness;
  final int accentColorBrightness;
  final int canvasColor;
  final int highlightColor;
  final int hintColor;
  final int splashColor;

  final int buttonColor;
  final int cardColor;
  final int dialogBackgroundColor;
  final int cursorColor1;
  final int cursorColor2; //! nicht genutzt
  final int cursorColor3;//! nicht genutzt
  final int disabledColor;

  final double fontSizeHeadline;
  final double fontSizeTitle;
  final double fontSizeBody1;
  final double fontSizeBody2;
  final double fontSizeBody3; //! nicht genutzt

  final int fontColorHeadline;
  final int fontColorTitle;
  final int fontColor1;
  final int fontColor2;
  final int fontColor3; //! nicht genutzt

  final String fontFamily1;
  final String fontFamily2; //? andersweitig genutzt
  final String fontFamily3;//? andersweitig genutzt

  ColorProfile({
    this.id,
    this.profileName,
    this.primaryColor,
    this.accentColor,
    this.backGroundColor,
    this.brightness,
    this.accentColorBrightness,
    this.canvasColor,
    this.highlightColor,
    this.hintColor,
    this.splashColor,
    this.buttonColor,
    this.cardColor,
    this.dialogBackgroundColor,
    this.cursorColor1,
    this.cursorColor2,
    this.cursorColor3,
    this.disabledColor,
    this.fontSizeHeadline,
    this.fontSizeTitle,
    this.fontSizeBody1,
    this.fontSizeBody2,
    this.fontSizeBody3,
    this.fontColorHeadline,
    this.fontColorTitle,
    this.fontColor1,
    this.fontColor2,
    this.fontColor3,
    this.fontFamily1,
    this.fontFamily2,
    this.fontFamily3,
  });

  @override
  List<Object> get props => [
        id,
        profileName,
        primaryColor,
        accentColor,
        backGroundColor,
        brightness,
        accentColorBrightness,
        canvasColor,
        highlightColor,
        hintColor,
        splashColor,
        buttonColor,
        cardColor,
        dialogBackgroundColor,
        cursorColor1,
        cursorColor2,
        cursorColor3,
        disabledColor,
        fontSizeHeadline,
        fontSizeTitle,
        fontSizeBody1,
        fontSizeBody2,
        fontSizeBody3,
        fontColorHeadline,
        fontColorTitle,
        fontColor1,
        fontColor2,
        fontColor3,
        fontFamily1,
        fontFamily2,
        fontFamily3,
      ];
}
