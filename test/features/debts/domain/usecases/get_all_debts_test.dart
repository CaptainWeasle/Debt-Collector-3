import 'package:dartz/dartz.dart';
import 'package:debt_collector_3/core/usecases/params.dart';
import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:debt_collector_3/features/debts/domain/repositories/debt_repository.dart';
import 'package:debt_collector_3/features/debts/domain/usecases/get_all_debts.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockDebtRepository extends Mock implements DebtRepository {}

void main() {
  GetAllDebts usecase;
  MockDebtRepository mockDebtRepository;

  setUp(() {
    mockDebtRepository = MockDebtRepository();
    usecase = GetAllDebts(mockDebtRepository);
  });

  final List<Debt> tDebtList = List();

  test('should get all of the debts from the repository', () async {
    // arrange
    when(mockDebtRepository.getAllDebts())
        .thenAnswer((_) async => Right(tDebtList));
    // act
    final result = await usecase(NoParams());
    // assert
    expect(result, Right(tDebtList));
    verify(mockDebtRepository.getAllDebts());
    verifyNoMoreInteractions(mockDebtRepository);
  });
}
