import 'package:debt_collector_3/database/dao/debt_feature/debt_dao.dart';
import 'package:meta/meta.dart';

import '../../../../core/conversions/database_debtmodel_converter.dart';
import '../models/debt_model.dart';

abstract class DebtDatabaseDataSource {
  Future<List<DebtModel>> getAllDebts();

  /* wird nur in tests verwendet */ Future<DebtModel> getDebt(int id);

  Future<void> addDebt(DebtModel debt);

  Future<void> updateDebt(DebtModel debt);

  Future<void> deleteDebt(DebtModel debt);

  Future<void> deleteAllDebts();

  void deleteCompletedDebts() {}
}

class DebtDatabaseDataSourceImpl implements DebtDatabaseDataSource {
  final DebtDao dao;
  DebtDatabaseDataSourceImpl({
    @required this.dao,
  });

  @override
  Future<List<DebtModel>> getAllDebts() async {
    return toDebtModelList(await dao.getAllDebts());
  }

  @override
  Future<void> addDebt(DebtModel debt) async {
    dao.addDebt(toDatabaseDebt(debt));
    return null;
  }

  @override
  Future<void> updateDebt(DebtModel debt) {
    dao.updateDebt(toDatabaseDebt(debt));
    return null;
  }

  @override
  Future<void> deleteDebt(DebtModel debt) {
    dao.deleteDebt(toDatabaseDebt(debt));
    return null;
  }

  @override
  Future<void> deleteAllDebts() {
    dao.deleteAllDebts();
    return null;
  }

  @override
  Future<void> deleteCompletedDebts() {
    dao.deleteCompletedDebts();
    return null;
  }

  @override
  Future<DebtModel> getDebt(int id) {
    // ! not needed
    return null;
  }
}
