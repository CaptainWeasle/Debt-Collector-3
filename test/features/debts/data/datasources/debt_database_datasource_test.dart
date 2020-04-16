import 'package:debt_collector_3/database/dao/debt_dao.dart';
import 'package:debt_collector_3/features/debts/data/datasources/debt_database_datasource.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockDebtDao extends Mock implements DebtDao {}

void main() {
  DebtDatabaseDataSourceImpl dataSource;
  MockDebtDao dao;

  setUp(() {
    dataSource = DebtDatabaseDataSourceImpl(dao: dao);
  });
}
