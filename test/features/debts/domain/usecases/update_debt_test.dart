import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:debt_collector_3/core/usecases/params.dart';
import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:debt_collector_3/features/debts/domain/repositories/debt_repository.dart';
import 'package:debt_collector_3/features/debts/domain/usecases/update_debt.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockDebtRepository extends Mock implements DebtRepository {}

void main() {
  MockDebtRepository mockDebtRepository;
  UpdateDebt usecase;

  setUp(() {
    mockDebtRepository = MockDebtRepository();
    usecase = UpdateDebt(mockDebtRepository);
  });

  final Debt tDebt =
      Debt(debt: 20, name: "testDebt", id: 123, description: "testDebt");
  final Debt tDebt2 =
      Debt(debt: 30, name: "testDebt2", id: 123, description: "testDebt2");

  test(
      'should update a Debt properly by first adding a debt, then update it, then compare it',
      () async {
    // arrange
    when(mockDebtRepository.updateDebt(any))
        .thenAnswer((_) async => Right(tDebt));
    when(mockDebtRepository.getDebt(any))
        .thenAnswer((_) async => Right(tDebt2));
    when(mockDebtRepository.addDebt(any)).thenAnswer((_) async => Right(Void));
    // act
    await mockDebtRepository.addDebt(tDebt);
    await usecase(ParamsDebt(debt: tDebt2));
    final result = await mockDebtRepository.getDebt(tDebt2.id);
    // assert
    expect(result, Right(tDebt2));
    verify(mockDebtRepository.addDebt(tDebt));
    verify(mockDebtRepository.updateDebt(tDebt2));
    verify(mockDebtRepository.getDebt(tDebt2.id));
    verifyNoMoreInteractions(mockDebtRepository);
  });
}
