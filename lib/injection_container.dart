import 'package:debt_collector_3/database/dao/debt_dao.dart';
import 'package:debt_collector_3/database/moor_database/moor_database.dart';
import 'package:debt_collector_3/features/debts/data/datasources/debt_database_datasource.dart';
import 'package:debt_collector_3/features/debts/data/repositories/debt_repository_impl.dart';
import 'package:debt_collector_3/features/debts/domain/repositories/debt_repository.dart';
import 'package:debt_collector_3/features/debts/presentation/bloc/debt_bloc.dart';
import 'package:debt_collector_3/features/debts/domain/usecases/add_debt.dart'
    as prefix4;
import 'package:debt_collector_3/features/debts/domain/usecases/delete_all_debts.dart'
    as prefix3;
import 'package:debt_collector_3/features/debts/domain/usecases/delete_debt.dart'
    as prefix0;
import 'package:debt_collector_3/features/debts/domain/usecases/get_all_debts.dart'
    as prefix2;
import 'package:debt_collector_3/features/debts/domain/usecases/update_debt.dart'
    as prefix1;
import 'package:get_it/get_it.dart';

// sl steht für service locator
final sl = GetIt.instance;

void init() {
  //! Features - Debt
  // Bloc (factory weil man streams closen muss)
  sl.registerFactory(() => DebtBloc(
        all: sl(),
        add: sl(),
        update: sl(),
        delete: sl(),
        deleteA: sl(),
      ));

  // Usecases
  sl.registerLazySingleton(() => prefix2.GetAllDebts(sl()));
  sl.registerLazySingleton(() => prefix4.AddDebt(sl()));
  sl.registerLazySingleton(() => prefix1.UpdateDebt(sl()));
  sl.registerLazySingleton(() => prefix0.DeleteDebt(sl()));
  sl.registerLazySingleton(() => prefix3.DeleteAllDebts(sl()));

  // Repository
  sl.registerLazySingleton<DebtRepository>(() => DebtRepositoryImpl(
        databaseDatasource: sl(),
      ));

  // Datasources
  sl.registerLazySingleton<DebtDatabaseDataSource>(
      () => DebtDatabaseDataSourceImpl(dao: sl()));

  //! Core

  //! Database
  sl.registerLazySingleton(() => DebtDao(sl()));
  sl.registerLazySingleton(() => AppDatabase());
}
