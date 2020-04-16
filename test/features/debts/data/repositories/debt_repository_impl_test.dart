import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:debt_collector_3/core/error/exceptions.dart';
import 'package:debt_collector_3/core/error/failures.dart';
import 'package:debt_collector_3/features/debts/data/datasources/debt_database_datasource.dart';
import 'package:debt_collector_3/features/debts/data/models/debt_model.dart';
import 'package:debt_collector_3/features/debts/data/repositories/debt_repository_impl.dart';
import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockDebtDatabaseDatasource extends Mock
    implements DebtDatabaseDataSource {}

void main() {
  DebtRepositoryImpl repository;
  MockDebtDatabaseDatasource mockDebtDatabaseDatasource;

  setUp(() {
    mockDebtDatabaseDatasource = MockDebtDatabaseDatasource();
    repository =
        DebtRepositoryImpl(databaseDatasource: mockDebtDatabaseDatasource);
  });

  DebtModel tDebtModel = DebtModel(name: "tName", debt: 10.0);
  Debt tDebt = tDebtModel;
  DebtModel tDebtModel2 = DebtModel(name: "tName", debt: 20.0);
  Debt tDebt2 = tDebtModel2;
  List<DebtModel> tDebtModelList = [tDebtModel, tDebtModel];
  List<Debt> tDebtList = tDebtModelList;

  group('getAllDebts()', () {
    test(
        'should return database data when the call to the database is successful',
        () async {
      // arrange
      when(mockDebtDatabaseDatasource.getAllDebts())
          .thenAnswer((_) async => tDebtModelList);
      // act
      final result = await repository.getAllDebts();
      // assert
      verify(mockDebtDatabaseDatasource.getAllDebts());
      expect(result, equals(Right(tDebtList)));
    });

    test(
        'should return a database failure when there is a failure with the call',
        () async {
      // arrange
      when(mockDebtDatabaseDatasource.getAllDebts())
          .thenThrow(DatabaseException());
      // act
      final result = await repository.getAllDebts();
      // assert
      verify(mockDebtDatabaseDatasource.getAllDebts());
      expect(result, equals(Left(DatabaseFailure())));
    });
  });

  group('addDebt()', () {
    test('should add database data when the call to the database is successful',
        () async {
      // arrange
      when(mockDebtDatabaseDatasource.addDebt(any))
          .thenAnswer((_) async => Void);
      when(mockDebtDatabaseDatasource.getAllDebts())
          .thenAnswer((_) async => tDebtModelList);
      // act
      repository.addDebt(tDebtModel2);
      final result = await repository.getAllDebts();
      // assert
      verify(mockDebtDatabaseDatasource.addDebt(tDebtModel2));
      expect(result, equals(Right(tDebtList)));
    });

    test(
        'should return a database failure when there is a failure with the call',
        () async {
      // arrange
      when(mockDebtDatabaseDatasource.addDebt(any))
          .thenThrow(DatabaseException());
      // act
      final result = await repository.addDebt(tDebtModel);
      // assert
      verify(mockDebtDatabaseDatasource.addDebt(tDebtModel));
      expect(result, equals(Left(DatabaseFailure())));
    });
  });

  group('deleteDebt()', () {
    test('should delete data when the call to the database is successful',
        () async {
      // arrange
      when(mockDebtDatabaseDatasource.deleteDebt(any))
          .thenAnswer((_) async => Void);
      // act
      final result = await repository.deleteDebt(tDebtModel);
      // assert
      verify(mockDebtDatabaseDatasource.deleteDebt(tDebtModel));
      expect(result, equals(Right(Void)));
    });

    test(
        'should return a database failure when there is a failure with the call',
        () async {
      // arrange
      when(mockDebtDatabaseDatasource.deleteDebt(any))
          .thenThrow(DatabaseException());
      // act
      final result = await repository.deleteDebt(tDebtModel2);
      // assert
      verify(mockDebtDatabaseDatasource.deleteDebt(tDebtModel2));
      expect(result, equals(Left(DatabaseFailure())));
    });
  });

  group('deleteAllDebts()', () {
    test('should all delete data when the call to the database is successful',
        () async {
      // arrange
      when(mockDebtDatabaseDatasource.deleteAllDebts())
          .thenAnswer((_) async => Void);
      // act
      final result = await repository.deleteAllDebts();
      // assert
      verify(mockDebtDatabaseDatasource.deleteAllDebts());
      expect(result, equals(Right(Void)));
    });

    test(
        'should return a database failure when there is a failure with the call',
        () async {
      // arrange
      when(mockDebtDatabaseDatasource.deleteAllDebts())
          .thenThrow(DatabaseException());
      // act
      final result = await repository.deleteAllDebts();
      // assert
      verify(mockDebtDatabaseDatasource.deleteAllDebts());
      expect(result, equals(Left(DatabaseFailure())));
    });
  });

  group('updateDebt()', () {
    test('should update data when the call to the database is successful',
        () async {
      // arrange
      when(mockDebtDatabaseDatasource.updateDebt(any))
          .thenAnswer((_) async => Void);
      // act
      final result = await repository.updateDebt(tDebtModel);
      // assert
      verify(mockDebtDatabaseDatasource.updateDebt(tDebtModel));
      expect(result, equals(Right(Void)));
    });

    test(
        'should return a database failure when there is a failure with the call',
        () async {
      // arrange
      when(mockDebtDatabaseDatasource.updateDebt(any))
          .thenThrow(DatabaseException());
      // act
      final result = await repository.updateDebt(tDebtModel2);
      // assert
      verify(mockDebtDatabaseDatasource.updateDebt(tDebtModel2));
      expect(result, equals(Left(DatabaseFailure())));
    });
  });
}
