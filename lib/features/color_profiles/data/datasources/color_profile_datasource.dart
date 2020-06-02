import 'package:debt_collector_3/database/dao/color_profile_feature/color_profile_dao.dart';
import 'package:debt_collector_3/features/color_profiles/data/models/color_profile_model.dart';

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
  Future addColorProfile(ColorProfileModel colorProfileModel) async{
    return null;
  }

  @override
  Future deleteAllColorProfiles() {
    // TODO: implement deleteAllColorProfiles
    return null;
  }

  @override
  Future deleteColorProfile(ColorProfileModel colorProfileModel) {
    // TODO: implement deleteColorProfile
    return null;
  }

  @override
  Future<List<ColorProfileModel>> getAllColorProfiles() {
    // TODO: implement getAllColorProfiles
    return null;
  }

  @override
  Future updateColorProfile(ColorProfileModel colorProfileModel) {
    // TODO: implement updateColorProfile
    return null;
  }
}
