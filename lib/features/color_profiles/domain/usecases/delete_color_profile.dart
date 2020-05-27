import '../entities/color_profile.dart';
import '../repositories/color_profile_repository.dart';

class DeleteColorProfile {
  final ColorProfileRepository repository;

  DeleteColorProfile({this.repository});

  Future call({
    ColorProfile colorProfile,
  }) async {
    return await repository.deleteColorProfile(colorProfile);
  }
}
