import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Debt extends Equatable {
  final int id;
  final String name;
  final double debt;
  final String description;
  final DateTime debtStartDate;
  final DateTime debtDueDate;
  final int priority;
  final bool iOwe;
  final bool completed;

  Debt({
    this.id,
    @required this.debt,
    @required this.name,
    this.description,
    this.debtStartDate,
    this.debtDueDate,
    this.priority,
    this.iOwe,
    this.completed,
  });

  @override
  List<Object> get props => [
        id,
        debt,
        name,
        description,
        debtStartDate,
        debtDueDate,
        priority,
        iOwe,
        completed
      ];
}
