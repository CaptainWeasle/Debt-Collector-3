import 'package:debt_collector_3/features/color_profiles/domain/entities/color_profile.dart';

abstract class ColorProfileRepository {
  Future<List<ColorProfile>> getAllColorProfiles();
  Future addColorProfile(ColorProfile colorProfile);
  Future updateColorProfile(ColorProfile colorProfile);
  Future deleteColorProfile(ColorProfile colorProfile);
  Future deleteAllColorProfiles();
}
