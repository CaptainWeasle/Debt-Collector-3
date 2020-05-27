import '../entities/color_profile.dart';
import '../repositories/color_profile_repository.dart';

class GetAllProfiles {
  final ColorProfileRepository repository;

  GetAllProfiles({this.repository});

  Future<List<ColorProfile>> call() async {
    return await repository.getAllColorProfiles();
  }
}
