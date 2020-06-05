import 'package:debt_collector_3/features/debts/domain/usecases/add_debt.dart'
    as prefix4;
import 'package:debt_collector_3/features/debts/domain/usecases/delete_all_debts.dart'
    as prefix3;
import 'package:debt_collector_3/features/debts/domain/usecases/delete_completed_debts.dart'
    as prefix5;
import 'package:debt_collector_3/features/debts/domain/usecases/delete_debt.dart'
    as prefix0;
import 'package:debt_collector_3/features/debts/domain/usecases/get_all_debts.dart'
    as prefix2;
import 'package:debt_collector_3/features/debts/domain/usecases/update_debt.dart'
    as prefix1;
import 'package:get_it/get_it.dart';

import 'database/dao/debt_feature/debt_dao.dart';
import 'database/moor_database/moor_database.dart';
import 'features/color_profiles/data/datasources/color_profile_datasource.dart';
import 'features/color_profiles/data/repositories/color_profile_repository_implementation.dart';
import 'features/color_profiles/domain/repositories/color_profile_repository.dart';
import 'features/color_profiles/domain/usecases/add_color_profile.dart';
import 'features/color_profiles/domain/usecases/delete_all_color_profiles.dart';
import 'features/color_profiles/domain/usecases/delete_color_profile.dart';
import 'features/color_profiles/domain/usecases/get_all_color_profiles.dart';
import 'features/color_profiles/domain/usecases/update_color_profile.dart';
import 'features/color_profiles/presentation/bloc/color_profile_bloc.dart';
import 'features/debts/data/datasources/debt_database_datasource.dart';
import 'features/debts/data/repositories/debt_repository_impl.dart';
import 'features/debts/domain/repositories/debt_repository.dart';
import 'features/debts/presentation/bloc/debt_bloc.dart';

// sl steht für service locator
final sl = GetIt.instance;

void init() {
  //! Features - Debt
  // Bloc (factory weil man streams closen muss
  sl.registerFactory(
    () => DebtBloc(
      all: sl(),
      add: sl(),
      update: sl(),
      delete: sl(),
      deleteA: sl(),
      deleteC: sl(),
    ),
  );

  // Usecases
  sl.registerLazySingleton(() => prefix2.GetAllDebts(sl()));
  sl.registerLazySingleton(() => prefix4.AddDebt(sl()));
  sl.registerLazySingleton(() => prefix1.UpdateDebt(sl()));
  sl.registerLazySingleton(() => prefix0.DeleteDebt(sl()));
  sl.registerLazySingleton(() => prefix3.DeleteAllDebts(sl()));
  sl.registerLazySingleton(() => prefix5.DeleteCompletedDebts(sl()));

  // Repository
  sl.registerLazySingleton<DebtRepository>(
    () => DebtRepositoryImpl(
      databaseDatasource: sl(),
    ),
  );

  // Datasources
  sl.registerLazySingleton<DebtDatabaseDataSource>(
      () => DebtDatabaseDataSourceImpl(dao: sl()));

  //! Festures ColorProfile
  // Bloc (factory weil man streams closen muss
  sl.registerFactory(
    () => ColorProfileBloc(
      all: sl(),
      add: sl(),
      update: sl(),
      delete: sl(),
      deleteAll: sl(),
    ),
  );

  // Usecases
  sl.registerLazySingleton(() => GetAllProfiles(repository: sl()));
  sl.registerLazySingleton(() => AddColorProfile(repository: sl()));
  sl.registerLazySingleton(() => UpdateColorProfile(repository: sl()));
  sl.registerLazySingleton(() => DeleteColorProfile(repository: sl()));
  sl.registerLazySingleton(() => DeleteAllColorProfiles(repository: sl()));

  // Repository
  sl.registerLazySingleton<ColorProfileRepository>(
    () => ColorProfileRepositoryImpl(
      databaseDatasource: sl(),
    ),
  );

  // Datasources
  sl.registerLazySingleton<ColorProfileDatasource>(
      () => ColorProfileDatasourceImpl(dao: sl()));

  //! Core

  //! Database
  sl.registerLazySingleton(() => DebtDao(sl()));
  sl.registerLazySingleton(() => AppDatabase());
}
