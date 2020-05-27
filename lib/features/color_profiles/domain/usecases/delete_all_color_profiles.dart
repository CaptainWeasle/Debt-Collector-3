import '../repositories/color_profile_repository.dart';

class DeleteAllColorProfiles {
  final ColorProfileRepository repository;

  DeleteAllColorProfiles({this.repository});

  Future call() async {
    return await repository.deleteAllColorProfiles();
  }
}
