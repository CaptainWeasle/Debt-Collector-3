import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:debt_collector_3/features/debts/domain/usecases/add_debt.dart'
    as prefix4;
import 'package:debt_collector_3/features/debts/domain/usecases/delete_all_debts.dart'
    as prefix3;
import 'package:debt_collector_3/features/debts/domain/usecases/delete_debt.dart'
    as prefix0;
import 'package:debt_collector_3/features/debts/domain/usecases/get_all_debts.dart'
    as prefix2;
import 'package:debt_collector_3/features/debts/domain/usecases/update_debt.dart'
    as prefix1;
import 'package:equatable/equatable.dart';
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

  DebtBloc({
    @required prefix2.GetAllDebts all,
    @required prefix4.AddDebt add,
    @required prefix1.UpdateDebt update,
    @required prefix0.DeleteDebt delete,
    @required prefix3.DeleteAllDebts deleteA,
  })  : assert(prefix2.GetAllDebts != null),
        assert(prefix4.AddDebt != null),
        assert(prefix1.UpdateDebt != null),
        assert(prefix0.DeleteDebt != null),
        assert(prefix3.DeleteAllDebts != null),
        getAllDebts = all,
        addDebt = add,
        updateDebt = update,
        deleteDebt = delete,
        deleteAllDebts = deleteA;

  @override
  DebtState get initialState => Empty();

  @override
  Stream<DebtState> mapEventToState(
    DebtEvent event,
  ) async* {
    if (event is GetAllDebts) {
      try {
        print("getting all debts");
        yield Loading();
        final failureOrAllDebts = await getAllDebts(NoParams());
        yield failureOrAllDebts.fold(
          (failure) => Error(message: 'Database Failure'),
          (allDebts) => Loaded(allDebts),
        );
      } catch (e) {
        yield Error(message: 'Error');
      }
    }
    if (event is AddDebt) {
      print("adding debt");
      yield Loading();
      final failureOrAdd = await addDebt(ParamsDebt(debt: event.debt));
      yield failureOrAdd.fold(
        (failure) => Error(message: 'Database Failure'),
        (allDebts) => Done(),
      );
    }
    if (event is UpdateDebt) {
      try {
        print("updating debt");
        yield Loading();
        final failureOrUpdate = await updateDebt(ParamsDebt(debt: event.debt));
        yield failureOrUpdate.fold(
          (failure) => Error(message: 'Database Failure'),
          (allDebts) => Done(),
        );
      } catch (e) {
        yield Error(message: 'UpdateBloc Error');
      }
    }
    // ! Hier muss noch das Empty State returned werden
    if (event is DeleteDebt) {
      try {
        print("deleting debt");
        yield Loading();
        final failureOrDelete = await deleteDebt(ParamsDebt(debt: event.debt));
        yield failureOrDelete.fold(
          (failure) => Error(message: 'Database Failure'),
          (allDebts) => Done(),
        );
        final failureOrAllDebts = await getAllDebts(NoParams());
        if (failureOrAllDebts.isRight()) {
          final List<Debt> tempList = failureOrAllDebts.getOrElse(null);
          if (tempList.isEmpty) yield Empty();
        }
      } catch (e) {
        yield Error(message: 'DeleteDebtBlocError');
      }
    }
    if (event is DeleteAllDebts) {
      try {
        print("deleting all debts");
        yield Loading();
        final failureOrDeleteAll = await deleteAllDebts(NoParams());
        yield failureOrDeleteAll.fold(
            (failure) => Error(message: 'Database Failure'),
            (allDebts) => Done());
        yield Empty();
      } catch (e) {
        yield Error(message: 'DeleteDebts Bloc Failure');
      }
    }
  }
}
