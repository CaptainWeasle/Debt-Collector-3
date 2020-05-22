part of 'debt_bloc.dart';

abstract class DebtEvent {
  const DebtEvent();
}

class GetAllDebts extends DebtEvent {}

class AddDebt extends DebtEvent {
  final Debt debt;

  AddDebt(this.debt);
}

class UpdateDebt extends DebtEvent {
  final Debt debt;

  UpdateDebt(this.debt);
}

class DeleteDebt extends DebtEvent {
  final Debt debt;

  DeleteDebt(this.debt);
}

class DeleteAllDebts extends DebtEvent {}

class DeleteCompletedDebts extends DebtEvent {}
