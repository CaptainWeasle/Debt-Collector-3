import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:debt_collector_3/features/debts/domain/usecases/add_debt.dart'
    as prefix4;
import 'package:debt_collector_3/features/debts/domain/usecases/delete_all_debts.dart'
    as prefix3;
import 'package:debt_collector_3/features/debts/domain/usecases/delete_completed_debts.dart'
    as prefix5;
import 'package:debt_collector_3/features/debts/domain/usecases/delete_debt.dart'
    as prefix0;
import 'package:debt_collector_3/features/debts/domain/usecases/get_all_debts.dart'
    as prefix2;
import 'package:debt_collector_3/features/debts/domain/usecases/update_debt.dart'
    as prefix1;
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../core/usecases/params.dart';
import '../../domain/entities/debt.dart';

part 'debt_event.dart';
part 'debt_state.dart';

class DebtBloc extends Bloc<DebtEvent, DebtState> {
  final prefix2.GetAllDebts getAllDebts;
  final prefix4.AddDebt addDebt;
  final prefix1.UpdateDebt updateDebt;
  final prefix0.DeleteDebt deleteDebt;
  final prefix3.DeleteAllDebts deleteAllDebts;
  final prefix5.DeleteCompletedDebts deleteCompletedDebts;

  DebtBloc({
    @required prefix2.GetAllDebts all,
    @required prefix4.AddDebt add,
    @required prefix1.UpdateDebt update,
    @required prefix0.DeleteDebt delete,
    @required prefix3.DeleteAllDebts deleteA,
    @required prefix5.DeleteCompletedDebts deleteC,
  })  : assert(prefix2.GetAllDebts != null),
        assert(prefix4.AddDebt != null),
        assert(prefix1.UpdateDebt != null),
        assert(prefix0.DeleteDebt != null),
        assert(prefix3.DeleteAllDebts != null),
        assert(prefix5.DeleteCompletedDebts != null),
        getAllDebts = all,
        addDebt = add,
        updateDebt = update,
        deleteDebt = delete,
        deleteAllDebts = deleteA,
        deleteCompletedDebts = deleteC;

  getDebts() async* {
    final failureOrAllDebts = await getAllDebts(NoParams());
    yield failureOrAllDebts.fold(
      (failure) => DebtState(),
      (allDebts) => DebtState(debtList: allDebts),
    );
  }

  @override
  DebtState get initialState {
    try {
      return DebtState(debtList: state.debtList);
    } catch (e) {
      return DebtState.initial();
    }
  }

  @override
  Stream<DebtState> mapEventToState(
    DebtEvent event,
  ) async* {
    try {
      if (event is GetAllDebts) {
        final failureOrAllDebts = await getAllDebts(NoParams());
        yield failureOrAllDebts.fold(
          (failure) => DebtState(),
          (allDebts) => DebtState(debtList: allDebts, state: Loaded()),
        );
      }
    } catch (e) {
      print(e);
    }

    if (event is AddDebt) {
      try {
        await addDebt(ParamsDebt(debt: event.debt));
        final failureOrAllDebts = await getAllDebts(NoParams());
        yield failureOrAllDebts.fold(
          (failure) => DebtState(),
          (allDebts) => DebtState(debtList: allDebts, state: Loaded()),
        );
      } catch (e) {
        print(e);
      }
    }

    if (event is UpdateDebt) {
      try {
        await updateDebt(ParamsDebt(debt: event.debt));
        final failureOrAllDebts = await getAllDebts(NoParams());
        yield failureOrAllDebts.fold(
          (failure) => DebtState(),
          (allDebts) => DebtState(debtList: allDebts, state: Loaded()),
        );
      } catch (e) {
        print(e);
      }
    }

    if (event is DeleteDebt) {
      try {
        await deleteDebt(ParamsDebt(debt: event.debt));
        final failureOrAllDebts = await getAllDebts(NoParams());
        yield failureOrAllDebts.fold(
          (failure) => DebtState(),
          (allDebts) => DebtState(debtList: allDebts, state: Loaded()),
        );
        if (failureOrAllDebts.isRight()) {
          final List<Debt> tempList = failureOrAllDebts.getOrElse(null);
          if (tempList.isEmpty) yield DebtState.initial();
        }
      } catch (e) {
        print(e);
      }
    }

    if (event is DeleteAllDebts) {
      try {
        await deleteAllDebts(NoParams());
        yield DebtState.initial();
      } catch (e) {
        print(e);
      }
    }

    if (event is DeleteCompletedDebts) {
      try {
        await deleteCompletedDebts();
        final failureOrAllDebts = await getAllDebts(NoParams());
        yield failureOrAllDebts.fold(
          (failure) => DebtState(),
          (allDebts) => DebtState(debtList: allDebts, state: Loaded()),
        );
      } catch (e) {
        print(e);
      }
    }
  }
}
