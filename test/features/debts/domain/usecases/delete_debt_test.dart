import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:debt_collector_3/core/error/failures.dart';
import 'package:debt_collector_3/core/usecases/params.dart';
import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:debt_collector_3/features/debts/domain/repositories/debt_repository.dart';
import 'package:debt_collector_3/features/debts/domain/usecases/delete_debt.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockDebtRepository extends Mock implements DebtRepository {}

void main() {
  MockDebtRepository mockDebtRepository;
  DeleteDebt usecase;

  setUp(() {
    mockDebtRepository = MockDebtRepository();
    usecase = DeleteDebt(mockDebtRepository);
  });

  final tId = 123;
  final Debt tDebt =
      Debt(debt: 20, name: "testDebt", id: tId, description: "testDebt");

  group('test debt deletion', () {
    test(
        'should delete debt when there is one. This test adds a debt, deletes it and then tries to get it back.',
        () async {
      // arrange
      when(mockDebtRepository.addDebt(any))
          .thenAnswer((_) async => Right(Void));
      when(mockDebtRepository.deleteDebt(any))
          .thenAnswer((_) async => Right(Void));
      // act
      await mockDebtRepository.addDebt(tDebt);
      await usecase(ParamsDebt(debt: tDebt));
      final result = await mockDebtRepository.getDebt(tId);
      // assert
      expect(result, null);
      verify(mockDebtRepository.deleteDebt(tDebt));
      verify(mockDebtRepository.addDebt(tDebt));
      verify(mockDebtRepository.getDebt(tId));
      verifyNoMoreInteractions(mockDebtRepository);
    });

    test(
        'should do nothing (throw Failure Error) when there is no matching id to delete',
        () async {
      // arrange
      when(mockDebtRepository.deleteDebt(any))
          .thenAnswer((_) async => Right(Void));
      // act
      final result = await usecase(ParamsDebt(debt: tDebt));
      // assert
      expect(result, Right(Void));
      verify(mockDebtRepository.deleteDebt(tDebt));
      verifyNoMoreInteractions(mockDebtRepository);
    });
  });
}
