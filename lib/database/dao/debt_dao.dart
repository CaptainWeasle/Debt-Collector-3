import 'package:debt_collector_3/database/moor_database/moor_database.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'debt_dao.g.dart';

// the _TodosDaoMixin will be created by moor. It contains all the necessary
// fields for the tables. The <MyDatabase> type annotation is the database class
// that should use this dao.
@UseDao(tables: [Debts])
class DebtDao extends DatabaseAccessor<AppDatabase> with _$DebtDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  DebtDao(AppDatabase db) : super(db);

  //Stream
  Stream<List<Debt>> watchAllDebts() => select(debts).watch();

  Future<List<Debt>> getAllDebts() => select(debts).get();
  Future addDebt(Debt debt) => into(debts).insert(debt);
  Future updateDebt(Debt debt) => update(debts).replace(debt);
  Future deleteDebt(Debt debt) => delete(debts).delete(debt);
  Future deleteAllDebts() => delete(debts).go();
  deleteCompletedDebts()  => delete(debts)..where((debt) => debt.completed);
}
