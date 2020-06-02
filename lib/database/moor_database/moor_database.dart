import 'dart:io';

import 'package:debt_collector_3/database/dao/color_profile_feature/color_profile_dao.dart';
import 'package:debt_collector_3/database/dao/debt_feature/debt_dao.dart';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';


part 'moor_database.g.dart';

class Debts extends Table {
  // autoIncrement automatically sets this to be the primary key
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 15)();
  RealColumn get debt => real()();
  TextColumn get description => text().withLength(min: 0, max: 50)();
  DateTimeColumn get debtStartDate => dateTime()();
  DateTimeColumn get debtDueDate => dateTime().nullable()();
  IntColumn get priority => integer()();
  BoolColumn get iOwe => boolean()();
  BoolColumn get completed => boolean().withDefault(Constant(false))();
}

class DatabaseColorProfiles extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get profileName => text().withLength(min: 0, max: 15)();

  IntColumn get primaryColor => integer()();
  IntColumn get accentColor => integer()();
  IntColumn get backGroundColor => integer()();
  IntColumn get brightness => integer()();
  IntColumn get accentColorBrightness => integer()();
  IntColumn get canvasColor => integer()();
  IntColumn get highlightColor => integer()();
  IntColumn get hintColor => integer()();
  IntColumn get splashColor => integer()();

  IntColumn get buttonColor => integer()();
  IntColumn get cardColor => integer()();
  IntColumn get dialogBackgroundColor => integer()();
  IntColumn get cursorColor1 => integer()();
  IntColumn get cursorColor2 => integer()();
  IntColumn get cursorColor3 => integer()();
  IntColumn get disabledColor => integer()();

  RealColumn get fontSizeHeadline => real()();
  RealColumn get fontSizeTitle => real()();
  RealColumn get fontSizeBody1 => real()();
  RealColumn get fontSizeBody2 => real()();
  RealColumn get fontSizeBody3 => real()();

  IntColumn get fontColorHeadline => integer()();
  IntColumn get fontColorTitle => integer()();
  IntColumn get fontColor1 => integer()();
  IntColumn get fontColor2 => integer()();
  IntColumn get fontColor3 => integer()();

  TextColumn get fontFamily1 => text()();
  TextColumn get fontFamily2 => text()();
  TextColumn get fontFamily3 => text()();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Debts, DatabaseColorProfiles], daos: [DebtDao, ColorProfileDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  get schemaVersion => 1;
}
