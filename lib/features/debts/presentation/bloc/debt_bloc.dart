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
        print("hello there");
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
  }
}
