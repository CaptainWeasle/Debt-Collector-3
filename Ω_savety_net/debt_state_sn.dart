part of 'debt_bloc.dart';
/*
abstract class DebtState extends Equatable {
  const DebtState();
}

class Empty extends DebtState {
  @override
  List<Object> get props => [];
}

/*
class Loading extends DebtState {
  @override
  List<Object> get props => [];
}
*/
class Loaded extends DebtState {
  final List<Debt> list;

  Loaded(this.list);

  @override
  List<Object> get props => [];
}

class Done extends DebtState {
  final List<Debt> list;

  Done(this.list);
  @override
  List<Object> get props => null;
}

class Error extends DebtState {
  final String message;

  Error({@required this.message});

  @override
  List<Object> get props => [];
}
*/