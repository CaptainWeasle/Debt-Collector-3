import '../../../../core/conversions/color_profile_conversions.dart/database_color_profile_model_converter.dart';
import '../../../../database/dao/color_profile_feature/color_profile_dao.dart';
import '../models/color_profile_model.dart';

abstract class ColorProfileDatasource {
  Future<List<ColorProfileModel>> getAllColorProfiles();
  Future addColorProfile(ColorProfileModel colorProfileModel);
  Future updateColorProfile(ColorProfileModel colorProfileModel);
  Future deleteColorProfile(ColorProfileModel colorProfileModel);
  Future deleteAllColorProfiles();
}

class ColorProfileDatasourceImpl extends ColorProfileDatasource {
  final ColorProfileDao dao;

  ColorProfileDatasourceImpl({
    this.dao,
  });

  @override
  Future addColorProfile(ColorProfileModel colorProfileModel) async {
    return dao.addColorProfile(toDatabaseColorProfile(colorProfileModel));
  }

  @override
  Future deleteAllColorProfiles() {
    return dao.deleteAllColorProfiles();
  }

  @override
  Future deleteColorProfile(ColorProfileModel colorProfileModel) {
    return dao.deleteColorProfile(toDatabaseColorProfile(colorProfileModel));
  }

  @override
  Future<List<ColorProfileModel>> getAllColorProfiles() async {
    return toColorProfileModelList(await dao.getAllColorProfiles());
  }

  @override
  Future updateColorProfile(ColorProfileModel colorProfileModel) {
    return dao.updateColorProfile(toDatabaseColorProfile(colorProfileModel));
  }
}
