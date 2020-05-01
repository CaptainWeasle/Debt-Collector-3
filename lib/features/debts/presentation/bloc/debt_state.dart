part of 'debt_bloc.dart';

class DebtState {
  MiniState state;
  List<Debt> debtList = List<Debt>();

  DebtState._();
  DebtState({this.debtList,this.state});

  factory DebtState.initial() {
    return DebtState._()..state = Empty();
  }
}

abstract class MiniState {}

class Empty extends MiniState {}

class Loading extends MiniState {}

class Loaded extends MiniState{}
