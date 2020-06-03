import 'package:debt_collector_3/database/moor_database/moor_database.dart';
import 'package:debt_collector_3/features/color_profiles/data/models/color_profile_model.dart';

ColorProfileModel toColorProfileModel(
    DatabaseColorProfile databaseColorProfile) {
  return ColorProfileModel(
    id: databaseColorProfile.id,
    profileName: databaseColorProfile.profileName,
    primaryColor: databaseColorProfile.primaryColor,
    accentColor: databaseColorProfile.accentColor,
    backGroundColor: databaseColorProfile.backGroundColor,
    brightness: databaseColorProfile.brightness,
    accentColorBrightness: databaseColorProfile.accentColorBrightness,
    canvasColor: databaseColorProfile.canvasColor,
    highlightColor: databaseColorProfile.highlightColor,
    hintColor: databaseColorProfile.hintColor,
    splashColor: databaseColorProfile.splashColor,
    buttonColor: databaseColorProfile.buttonColor,
    cardColor: databaseColorProfile.cardColor,
    dialogBackgroundColor: databaseColorProfile.dialogBackgroundColor,
    cursorColor1: databaseColorProfile.cursorColor1,
    cursorColor2: databaseColorProfile.cursorColor2,
    cursorColor3: databaseColorProfile.cursorColor3,
    disabledColor: databaseColorProfile.disabledColor,
    fontSizeHeadline: databaseColorProfile.fontSizeHeadline,
    fontSizeTitle: databaseColorProfile.fontSizeTitle,
    fontSizeBody1: databaseColorProfile.fontSizeBody1,
    fontSizeBody2: databaseColorProfile.fontSizeBody2,
    fontSizeBody3: databaseColorProfile.fontSizeBody3,
    fontColorHeadline: databaseColorProfile.fontColorHeadline,
    fontColorTitle: databaseColorProfile.fontColorTitle,
    fontColor1: databaseColorProfile.fontColor1,
    fontColor2: databaseColorProfile.fontColor2,
    fontColor3: databaseColorProfile.fontColor3,
    fontFamily1: databaseColorProfile.fontFamily1,
    fontFamily2: databaseColorProfile.fontFamily2,
    fontFamily3: databaseColorProfile.fontFamily3,
  );
}

DatabaseColorProfile toDatabaseColorProfile(
    ColorProfileModel colorProfileModel) {
  return DatabaseColorProfile(
    id: colorProfileModel.id,
    profileName: colorProfileModel.profileName,
    primaryColor: colorProfileModel.primaryColor,
    accentColor: colorProfileModel.accentColor,
    backGroundColor: colorProfileModel.backGroundColor,
    brightness: colorProfileModel.brightness,
    accentColorBrightness: colorProfileModel.accentColorBrightness,
    canvasColor: colorProfileModel.canvasColor,
    highlightColor: colorProfileModel.highlightColor,
    hintColor: colorProfileModel.hintColor,
    splashColor: colorProfileModel.splashColor,
    buttonColor: colorProfileModel.buttonColor,
    cardColor: colorProfileModel.cardColor,
    dialogBackgroundColor: colorProfileModel.dialogBackgroundColor,
    cursorColor1: colorProfileModel.cursorColor1,
    cursorColor2: colorProfileModel.cursorColor2,
    cursorColor3: colorProfileModel.cursorColor3,
    disabledColor: colorProfileModel.disabledColor,
    fontSizeHeadline: colorProfileModel.fontSizeHeadline,
    fontSizeTitle: colorProfileModel.fontSizeTitle,
    fontSizeBody1: colorProfileModel.fontSizeBody1,
    fontSizeBody2: colorProfileModel.fontSizeBody2,
    fontSizeBody3: colorProfileModel.fontSizeBody3,
    fontColorHeadline: colorProfileModel.fontColorHeadline,
    fontColorTitle: colorProfileModel.fontColorTitle,
    fontColor1: colorProfileModel.fontColor1,
    fontColor2: colorProfileModel.fontColor2,
    fontColor3: colorProfileModel.fontColor3,
    fontFamily1: colorProfileModel.fontFamily1,
    fontFamily2: colorProfileModel.fontFamily2,
    fontFamily3: colorProfileModel.fontFamily3,
  );
}

List<ColorProfileModel> toColorProfileModelList(
    List<DatabaseColorProfile> databaseList) {
  List<ColorProfileModel> list = [];

  for (int i = 0; i < databaseList.length; i++) {
    list.add(toColorProfileModel(databaseList[i]));
  }

  return list;
}
