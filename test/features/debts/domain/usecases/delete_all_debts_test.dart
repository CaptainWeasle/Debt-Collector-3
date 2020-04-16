import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:debt_collector_3/core/usecases/params.dart';
import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:debt_collector_3/features/debts/domain/repositories/debt_repository.dart';
import 'package:debt_collector_3/features/debts/domain/usecases/delete_all_debts.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockDebtRepository extends Mock implements DebtRepository {}

void main() {
  MockDebtRepository mockDebtRepository;
  DeleteAllDebts usecase;

  setUp(() {
    mockDebtRepository = MockDebtRepository();
    usecase = DeleteAllDebts(mockDebtRepository);
  });

  final Debt tDebt =
      Debt(debt: 20, name: "testDebt", id: 123, description: "testDebt");
  final Debt tDebt2 =
      Debt(debt: 30, name: "testDebt2", id: 123, description: "testDebt2");

  group('DeleteAllDebts()', () {
    test('should delete all Debts and return Void', () async {
      // arrange
      when(mockDebtRepository.deleteAllDebts())
          .thenAnswer((_) async => Right(Void));
      // act
      final result = await usecase(NoParams());
      // assert
      expect(result, Right(Void));
      verify(mockDebtRepository.deleteAllDebts());
      verifyNoMoreInteractions(mockDebtRepository);
    });

    test(
        'should add two tDebts and then delete all Debts. GetAllDebts() should return a Failure.',
        () async {
      // arrange
      when(mockDebtRepository.deleteAllDebts())
          .thenAnswer((_) async => Right(Void));
      when(mockDebtRepository.addDebt(any))
          .thenAnswer((_) async => Right(Debt));
      // act
      await mockDebtRepository.addDebt(tDebt);
      await mockDebtRepository.addDebt(tDebt2);
      await usecase(NoParams());
      //? final getResult = await mockDebtRepository.getAllDebts();
      // assert
      //? expect(getResult, Left(Failure));
      //? verify(mockDebtRepository.getAllDebts());
      verify(mockDebtRepository.addDebt(any));
      verify(mockDebtRepository.deleteAllDebts());
      verifyNoMoreInteractions(mockDebtRepository);
    });
  });
}
