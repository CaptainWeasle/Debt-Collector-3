import 'package:debt_collector_3/core/error/exceptions.dart';
import 'package:debt_collector_3/database/moor_database/moor_database.dart';
import 'package:moor/moor.dart';

part 'color_profile_dao.g.dart';

// the _TodosDaoMixin will be created by moor. It contains all the necessary
// fields for the tables. The <MyDatabase> type annotation is the database class
// that should use this dao.
@UseDao(tables: [DatabaseColorProfiles])
class ColorProfileDao extends DatabaseAccessor<AppDatabase>
    with _$ColorProfileDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  ColorProfileDao(AppDatabase db) : super(db);

  //Stream
  Stream<List<DatabaseColorProfile>> watchAllDebts() =>
      select(databaseColorProfiles).watch();

  Future<List<DatabaseColorProfile>> getAllColorProfiles() =>
      select(databaseColorProfiles).get();
  Future addColorProfile(DatabaseColorProfile databaseColorProfile) =>
      into(databaseColorProfiles).insert(databaseColorProfile);
  Future updateColorProfile(DatabaseColorProfile databaseColorProfile) =>
      update(databaseColorProfiles).replace(databaseColorProfile);
  Future deleteColorProfile(DatabaseColorProfile databaseColorProfile) =>
      delete(databaseColorProfiles).delete(databaseColorProfile);
  Future deleteAllColorProfiles() => delete(databaseColorProfiles).go();
}
