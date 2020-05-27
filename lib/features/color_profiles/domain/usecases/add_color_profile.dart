import '../entities/color_profile.dart';
import '../repositories/color_profile_repository.dart';

class AddColorProfile {
  final ColorProfileRepository repository;

  AddColorProfile({this.repository});

  Future call({
    ColorProfile colorProfile,
  }) async {
    return await repository.addColorProfile(colorProfile);
  }
}
