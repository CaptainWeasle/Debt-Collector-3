import 'package:debt_collector_3/features/color_profiles/data/datasources/color_profile_datasource.dart';
import 'package:debt_collector_3/features/color_profiles/domain/entities/color_profile.dart';
import 'package:debt_collector_3/features/color_profiles/domain/repositories/color_profile_repository.dart';

class ColorProfileRepositoryImpl extends ColorProfileRepository {
  final ColorProfileDatasource databaseDatasource;

  ColorProfileRepositoryImpl({
    this.databaseDatasource,
  });

  @override
  Future addColorProfile(ColorProfile colorProfile) {
    return databaseDatasource.addColorProfile(colorProfile);
  }

  @override
  Future deleteAllColorProfiles() {
    return databaseDatasource.deleteAllColorProfiles();
  }

  @override
  Future deleteColorProfile(ColorProfile colorProfile) {
    return databaseDatasource.deleteColorProfile(colorProfile);
  }

  @override
  Future<List<ColorProfile>> getAllColorProfiles() {
    return databaseDatasource.getAllColorProfiles();
  }

  @override
  Future updateColorProfile(ColorProfile colorProfile) {
    return databaseDatasource.updateColorProfile(colorProfile);
  }
}
