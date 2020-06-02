import '../entities/color_profile.dart';

abstract class ColorProfileRepository {
  Future<List<ColorProfile>> getAllColorProfiles();
  Future addColorProfile(ColorProfile colorProfile);
  Future updateColorProfile(ColorProfile colorProfile);
  Future deleteColorProfile(ColorProfile colorProfile);
  Future deleteAllColorProfiles();
}
