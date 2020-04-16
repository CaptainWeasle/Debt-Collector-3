import 'package:debt_collector_3/features/debts/domain/entities/debt.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class ParamsId extends Equatable {
  final int id;

  ParamsId({@required this.id});

  @override
  List<Object> get props => [id];
}

class ParamsDebt extends Equatable {
  final Debt debt;

  ParamsDebt({@required this.debt});

  @override
  List<Object> get props => [debt];
}

class NoParams extends Equatable {
  @override
  List<Object> get props => null;
}
