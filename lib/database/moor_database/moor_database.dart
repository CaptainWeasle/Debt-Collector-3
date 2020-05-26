import 'dart:io';

import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../dao/debt_dao.dart';

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

@UseMoor(tables: [Debts], daos: [DebtDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  get schemaVersion => 1;
}
