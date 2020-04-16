import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:debt_collector_3/core/usecases/params.dart';
import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:debt_collector_3/features/debts/domain/repositories/debt_repository.dart';
import 'package:debt_collector_3/features/debts/domain/usecases/add_debt.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockDebtRepository extends Mock implements DebtRepository {}

void main() {
  AddDebt usecase;
  MockDebtRepository mockDebtRepository;

  setUp(() {
    mockDebtRepository = MockDebtRepository();
    usecase = AddDebt(mockDebtRepository);
  });

  final tId = 123;
  final Debt tDebt =
      Debt(name: "testDebt", debt: 123, description: "testDebt", id: 123);

  test('should add a debt to the repository and check if it was added properly',
      () async {
    // arrange
    when(mockDebtRepository.addDebt(any)).thenAnswer((_) async => Right(Void));
    when(mockDebtRepository.getDebt(any)).thenAnswer((_) async => Right(tDebt));
    // act
    await usecase(ParamsDebt(debt: tDebt));
    final result = await mockDebtRepository.getDebt(tId);
    // assert
    expect(result, Right(tDebt));
    verify(mockDebtRepository.addDebt(tDebt));
    verify(mockDebtRepository.getDebt(tDebt.id));
    verifyNoMoreInteractions(mockDebtRepository);
  });
}
