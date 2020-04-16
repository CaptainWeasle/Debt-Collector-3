import 'package:debt_collector_3/database/dao/debt_dao.dart';
import 'package:flutter/semantics.dart';
import 'package:moor_flutter/moor_flutter.dart';

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

@UseMoor(tables: [Debts], daos: [DebtDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true));

  @override
  get schemaVersion => 1;
}
