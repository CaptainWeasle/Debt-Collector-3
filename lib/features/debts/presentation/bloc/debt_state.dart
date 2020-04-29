part of 'debt_bloc.dart';

class DebtState {
  List<Debt> debtList = List<Debt>();

  DebtState._();
  DebtState({this.debtList});

  factory DebtState.initial() {
    return DebtState._()..debtList = [];
  }
}
