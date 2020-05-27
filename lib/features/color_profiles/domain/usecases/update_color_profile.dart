import '../entities/color_profile.dart';
import '../repositories/color_profile_repository.dart';

class UpdateColorProfile {
  final ColorProfileRepository repository;

  UpdateColorProfile({this.repository});

  Future call({
    ColorProfile colorProfile,
  }) async {
    return await repository.updateColorProfile(colorProfile);
  }
}
