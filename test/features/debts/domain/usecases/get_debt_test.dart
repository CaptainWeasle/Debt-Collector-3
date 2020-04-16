import 'package:dartz/dartz.dart';
import 'package:debt_collector_3/core/usecases/params.dart';
import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:debt_collector_3/features/debts/domain/repositories/debt_repository.dart';
import 'package:debt_collector_3/features/debts/domain/usecases/get_debt.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockDebtRepository extends Mock implements DebtRepository {}

void main() {
  GetDebt usecase;
  MockDebtRepository mockDebtRepository;

  setUp(() {
    mockDebtRepository = MockDebtRepository();
    usecase = GetDebt(mockDebtRepository);
  });

  final tId = 1;
  final tDebt = Debt(debt: 10, name: "test", id: tId);

  test(
    'should get the debt with maching id from the repository',
    () async {
      // arrange
      when(mockDebtRepository.getDebt(any))
          .thenAnswer((_) async => Right(tDebt));
      // act
      final result = await usecase(ParamsId(id: tId));
      // assert
      expect(result, Right(tDebt));
      verify(mockDebtRepository.getDebt(tId));
      verifyNoMoreInteractions(mockDebtRepository);
    },
  );
}
