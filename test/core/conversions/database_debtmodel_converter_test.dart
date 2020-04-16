import 'package:debt_collector_3/core/conversions/database_debtmodel_converter.dart';
import 'package:debt_collector_3/database/moor_database/moor_database.dart';
import 'package:debt_collector_3/features/debts/data/models/debt_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:debt_collector_3/core/globals/test_debts.dart' as testDebts;

void main() {
  group('test conversions', () {
    test('should convert DatabaseDebt to DebtModel', () async {
      // act
      final result = toDatabaseDebt(testDebts.tDM);
      // assert
      expect(result, testDebts.tDD);
    });

    test('should convert DatabaseDebtList to DebtModelList', () async {
      // act
      final result = toDebtModelList(testDebts.tDDL);
      // assert
      expect(result, testDebts.tDML);
    });

    test('should convert DebtModel to DatabaseDebt', () async {
      // act
      final result = toDatabaseDebt(testDebts.tDM);
      // assert
      expect(result, testDebts.tDD);
    });
  });
}
