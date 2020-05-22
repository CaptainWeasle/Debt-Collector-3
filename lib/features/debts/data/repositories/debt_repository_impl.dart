import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:debt_collector_3/core/conversions/database_debtmodel_converter.dart';
import 'package:debt_collector_3/features/debts/data/datasources/debt_database_datasource.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/debt.dart';
import '../../domain/repositories/debt_repository.dart';

class DebtRepositoryImpl implements DebtRepository {
  final DebtDatabaseDataSource databaseDatasource;

  DebtRepositoryImpl({
    @required this.databaseDatasource,
  });

  @override
  Future<Either<Failure, List<Debt>>> getAllDebts() async {
    try {
      return Right(
        await databaseDatasource.getAllDebts(),
      );
    } on DatabaseException {
      return Left(DatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, void>> addDebt(Debt debt) async {
    try {
      databaseDatasource.addDebt(toDebtModel(debt));
      return Right(Void);
    } on DatabaseException {
      return Left(DatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteAllDebts() async {
    try {
      databaseDatasource.deleteAllDebts();
      return Right(Void);
    } on DatabaseException {
      return Left(DatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteDebt(Debt debt) async {
    try {
      databaseDatasource.deleteDebt(debt);
      return Right(Void);
    } on DatabaseException {
      return Left(DatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, void>> updateDebt(Debt debt) async {
    try {
      databaseDatasource.updateDebt(toDebtModel(debt));
      return Right(Void);
    } on DatabaseException {
      return Left(DatabaseFailure());
    }
  }

  @override
  Future<void> deleteCompletedDebts() async {
    try {
      databaseDatasource.deleteCompletedDebts();
    } on DatabaseException {
      return DatabaseFailure();
    }
  }

  // Irrelevant
  @override
  Future<Either<Failure, Debt>> getDebt(int id) {
    return null;
  }
}
