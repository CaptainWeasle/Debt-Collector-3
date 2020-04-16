import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:debt_collector_3/core/error/failures.dart';
import 'package:debt_collector_3/core/globals/test_debts.dart' as tDebts;
import 'package:debt_collector_3/core/usecases/params.dart';
import 'package:debt_collector_3/features/debts/domain/usecases/add_debt.dart'
    as prefix4;
import 'package:debt_collector_3/features/debts/domain/usecases/delete_all_debts.dart'
    as prefix3;
import 'package:debt_collector_3/features/debts/domain/usecases/get_all_debts.dart'
    as prefix2;
import 'package:debt_collector_3/features/debts/domain/usecases/update_debt.dart'
    as prefix1;
import 'package:debt_collector_3/features/debts/domain/usecases/delete_debt.dart'
    as prefix0;
import 'package:debt_collector_3/features/debts/presentation/bloc/debt_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockGetAllDebts extends Mock implements prefix2.GetAllDebts {}

class MockAddDebt extends Mock implements prefix4.AddDebt {}

class MockUpdateDebt extends Mock implements prefix1.UpdateDebt {}

class MockDeleteDebt extends Mock implements prefix0.DeleteDebt {}

class MockDeleteAllDebts extends Mock implements prefix3.DeleteAllDebts {}

void main() {
  DebtBloc bloc;
  MockGetAllDebts mockGetAllDebts;
  MockAddDebt mockAddDebt;
  MockUpdateDebt mockUpdateDebt;
  MockDeleteDebt mockDeleteDebt;
  MockDeleteAllDebts mockDeleteAllDebts;

  setUp(() {
    mockGetAllDebts = MockGetAllDebts();
    mockAddDebt = MockAddDebt();
    mockUpdateDebt = MockUpdateDebt();
    mockDeleteDebt = MockDeleteDebt();
    mockDeleteAllDebts = MockDeleteAllDebts();
    bloc = DebtBloc(
      add: mockAddDebt,
      all: mockGetAllDebts,
      delete: mockDeleteDebt,
      deleteA: mockDeleteAllDebts,
      update: mockUpdateDebt,
    );
  });

  test('initial state should be empty', () {
    expect(bloc.initialState, equals(Empty()));
  });

  group('GetAllDebts', () {
    test('should get data from the concrete usecase', () async {
      // arrange
      when(mockGetAllDebts(any)).thenAnswer((_) async => Right(tDebts.tDL));
      // act
      bloc.add(GetAllDebts());
      await untilCalled(mockGetAllDebts(any));
      // assert
      verify(mockGetAllDebts(NoParams()));
      bloc.close();
    });

    test('should emit [Loading, Loaded] when data is gotten successfully',
        () async {
      // arrange
      when(mockGetAllDebts(any)).thenAnswer((_) async => Right(tDebts.tDL));
      // assert later
      final expected = [
        bloc.initialState,
        Loading(),
        Loaded(tDebts.tDL),
      ];
      expectLater(bloc, emitsInOrder(expected));
      // act
      bloc.add(GetAllDebts());
      bloc.close();
    });

    test('should emit [Loading, Error] when getting data fails', () async {
      // arrange
      when(mockGetAllDebts(any))
          .thenAnswer((_) async => Left(DatabaseFailure()));
      // assert later
      final expected = [
        bloc.initialState,
        Loading(),
        Error(message: 'Database Failure'),
      ];
      expectLater(bloc, emitsInOrder(expected));
      // act
      bloc.add(GetAllDebts());
      bloc.close();
    });
  });

  group('AddDebt', () {
    test('should get data from the concrete usecase', () async {
      // arrange
      when(mockAddDebt(any)).thenAnswer((_) async => Right(Void));
      // act
      bloc.add(AddDebt(tDebts.tD));
      await untilCalled(mockAddDebt(ParamsDebt(debt: tDebts.tD)));
      // assert
      verify(mockAddDebt(ParamsDebt(debt: tDebts.tD)));
      bloc.close();
    });

    test('should emit [Loading, Done] when data is added successfully',
        () async {
      // arrange
      when(mockAddDebt(any)).thenAnswer((_) async => Right(Void));
      // assert later
      final expected = [
        bloc.initialState,
        Loading(),
        Done(),
      ];
      expectLater(bloc, emitsInOrder(expected));
      // act
      bloc.add(AddDebt(tDebts.tD));
      bloc.close();
    });

    test('should emit [Loading, Error] when getting data fails', () async {
      // arrange
      when(mockAddDebt(any)).thenAnswer((_) async => Left(DatabaseFailure()));
      // assert later
      final expected = [
        bloc.initialState,
        Loading(),
        Error(message: 'Database Failure'),
      ];
      expectLater(bloc, emitsInOrder(expected));
      // act
      bloc.add(AddDebt(tDebts.tD));
      bloc.close();
    });
  });

  group('UpdateDebt', () {
    test('should update data from the concrete usecase', () async {
      // arrange
      when(mockUpdateDebt(any)).thenAnswer((_) async => Right(Void));
      // act
      bloc.add(UpdateDebt(tDebts.tD));
      await untilCalled(mockUpdateDebt(ParamsDebt(debt: tDebts.tD)));
      // assert
      verify(mockUpdateDebt(ParamsDebt(debt: tDebts.tD)));
      bloc.close();
    });

    test('should emit [Loading, Done] when data is updated successfully',
        () async {
      // arrange
      when(mockUpdateDebt(any)).thenAnswer((_) async => Right(Void));
      // assert later
      final expected = [
        bloc.initialState,
        Loading(),
        Done(),
      ];
      expectLater(bloc, emitsInOrder(expected));
      // act
      bloc.add(UpdateDebt(tDebts.tD));
      bloc.close();
    });

    test('should emit [Loading, Error] when updating data fails', () async {
      // arrange
      when(mockUpdateDebt(any))
          .thenAnswer((_) async => Left(DatabaseFailure()));
      // assert later
      final expected = [
        bloc.initialState,
        Loading(),
        Error(message: 'Database Failure'),
      ];
      expectLater(bloc, emitsInOrder(expected));
      // act
      bloc.add(UpdateDebt(tDebts.tD));
      bloc.close();
    });
  });

  group('DeleteDebt', () {
    test('should delete data from the concrete usecase', () async {
      // arrange
      when(mockDeleteDebt(any)).thenAnswer((_) async => Right(Void));
      // act
      bloc.add(DeleteDebt(tDebts.tD));
      await untilCalled(mockDeleteDebt(ParamsDebt(debt: tDebts.tD)));
      // assert
      verify(mockDeleteDebt(ParamsDebt(debt: tDebts.tD)));
      bloc.close();
    });

    test('should emit [Loading, Done] when data is deleted successfully',
        () async {
      // arrange
      when(mockDeleteDebt(any)).thenAnswer((_) async => Right(Void));
      // assert later
      final expected = [
        bloc.initialState,
        Loading(),
        Done(),
      ];
      expectLater(bloc, emitsInOrder(expected));
      // act
      bloc.add(DeleteDebt(tDebts.tD));
      bloc.close();
    });

    test('should emit [Loading, Error] when deleting data fails', () async {
      // arrange
      when(mockDeleteDebt(any))
          .thenAnswer((_) async => Left(DatabaseFailure()));
      // assert later
      final expected = [
        bloc.initialState,
        Loading(),
        Error(message: 'Database Failure'),
      ];
      expectLater(bloc, emitsInOrder(expected));
      // act
      bloc.add(DeleteDebt(tDebts.tD));
      bloc.close();
    });
  });

  group('DeleteAllDebts', () {
    test('should delete all data from the concrete usecase', () async {
      // arrange
      when(mockDeleteAllDebts(any)).thenAnswer((_) async => Right(Void));
      // act
      bloc.add(DeleteAllDebts());
      await untilCalled(mockDeleteAllDebts(any));
      // assert
      verify(mockDeleteAllDebts(NoParams()));
      bloc.close();
    });

    test('should emit [Loading, Done] when all data is deleted successfully',
        () async {
      // arrange
      when(mockDeleteAllDebts(any)).thenAnswer((_) async => Right(Void));
      // assert later
      final expected = [
        bloc.initialState,
        Loading(),
        Done(),
      ];
      expectLater(bloc, emitsInOrder(expected));
      // act
      bloc.add(DeleteAllDebts());
      bloc.close();
    });

    test('should emit [Loading, Error] when deleting all data fails', () async {
      // arrange
      when(mockDeleteAllDebts(any))
          .thenAnswer((_) async => Left(DatabaseFailure()));
      // assert later
      final expected = [
        bloc.initialState,
        Loading(),
        Error(message: 'Database Failure'),
      ];
      expectLater(bloc, emitsInOrder(expected));
      // act
      bloc.add(DeleteAllDebts());
      bloc.close();
    });
  });
}
